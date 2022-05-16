#include <stdint.h>
#include <stdbool.h>
#include "aduc84x.h"

volatile uint8_t tim0A = 0;
volatile uint8_t tim0B = 0;
volatile uint8_t tim0C = 0;

volatile uint8_t tim1A = 0;
volatile uint8_t tim1B = 0;
volatile uint8_t tim1C = 0;

// C51 manual for KEIL compiler defines pragmas INVERVAL, INTVECTOR
// address = (interval × n) + offset + 3
// INTERVAL(8) => interval
// INTVECTOR(0) => offset
// n => interrupt number
// 
// addr = lambda n: "0x%02X" % (8*n+0+3)
// [addr(n) for n in range(12)]
// ['0x03', '0x0B', '0x13', '0x1B',
//  '0x23', '0x2B', '0x33', '0x3B', 
//  '0x43', '0x4B', '0x53', '0x5B']
//
// ---------------------------------------------------------
// ADUC842 datasheet defines interrupt sources and addresses
// ---------------------------------------------------------
// IE0          0x0003 
// TF0          0x000B 
// IE1          0x0013 
// TF1          0x001B 
// RI + TI      0x0023 
// TF2 + EXF2   0x002B 
// ADCI         0x0033 
// ISPI/I2CI    0x003B 
// PSMI         0x0043 
// TII          0x0053 
// WDS          0x005B 
// ---------------------------------------------------------

// TMOD.0 [GATE]    = timer1
// TMOD.1 [C/T]     = timer1
// TMOD.2 [M1]      = timer1
// TMOD.3 [M0]      = timer1
//
// TMOD.4 [GATE]    = timer0
// TMOD.5 [C/T]     = timer0
// TMOD.6 [M1]      = timer0
// TMOD.7 [M0]      = timer0

// TH0:TL0 and TH1:TH0 count up with core clock
// on transition from 0xFFFF -> 0x0000 the TF0 and TF1 are set
#define TMOD0 0x01      // Timer 0 Mode := Mode 1 (16-bit Timer), no prescaler
#define TMOD1 0x10      // Timer 1 Mode := Mode 1 (16-bit Timer), no prescaler
                        //
#define TIME2MS    31982    // 2ms

#define LOW_BYTE(u16)   ((u16) & 0xFF)
#define HIGH_BYTE(u16)  (((u16)>>8) & 0xFF)


// enable interrupt of timer0
void timer0_init(void) {
    uint8_t tmp;

    TR0 = 0;    // timer0 stop (TCON.4)
    ET0 = 0;    // timer0 interrupt disable (IE.1)
    TF0 = 0;    // timer0 overflow clear (TCON.5)

    // 8051 Timer 0 initialisieren
    tmp = TMOD;     // copy timer mode of timer0/1
    tmp &= 0xF0;    // lower 4 bits for timer0
    tmp |= TMOD0;
    TMOD = tmp;

    // PLLCON sets the uC frequency to 16.777216 MHz
    // dt = 1/16.777216e6
    // 0xFFFF - (174<<8 | 22) => 20970
    //dt*20970 = 1.25ms
    TL0 = 22;   // (2**16-20970) & 0xFF = 60 => #LOW(-20970)
    TH0 = 174;  // ((2**16-20970)>>8) & 0xFF = 232 => #HIGH(-20970)

    ET0 = 1;    // timer1 interrupt enable
    TR0 = 1;    // timer1 starten

}

void timer0_isr(void) __interrupt(1) __using(0) {
    uint8_t tmp;

    // DEBUG
    // uncomment to measure the frequency => measured 2ms
    // P2_7 ^= 1;
    // DEBUG

    TR0 = 0;    // timer0 stop
    ET0 = 0;    // timer0 interrupt disable
    TF0 = 0;    // timer0 overflow clear

    tmp = TMOD;
    tmp &= 0xF0;    // lower 4 bits for timer0
    tmp |= TMOD0;
    TMOD = tmp;

    // Timer 0 laden fuer 2ms bei 16.7 MHz uP Eingangsfrequenz
    // PLLCON sets the uC frequency to 16.777216 MHz
    // dt = 1/16.777216e6
    // 0xFFFF - TIME2MS = 0xFFFF - 31982 = 33553
    // dt*33553 = 2ms
    TL0 = LOW_BYTE(TIME2MS);
    TH0 = HIGH_BYTE(TIME2MS);

    /* TR0 = 1;    // timer0 start */
    /* ET0 = 1;    // timer0 interrupt enable */

    // update software timers
    if(tim0A) {
         tim0A -= 1;
    }
    if(tim0B) {
         tim0B -= 1;
    }
    if(tim0C) {
         tim0C -= 1;
    }

    TR0 = 1;    // timer0 start
    ET0 = 1;    // timer0 interrupt enable

}


// enable interrupt of timer1
void timer1_init(void) {
    uint8_t tmp;

    TR1 = 0;    // timer1 stop
    ET1 = 0;    // timer1 interrupt disable
    TF1 = 0;    // timer1 overflow clear

    // 8051 Timer 1 initialisieren fuer Systemuhr
    tmp = TMOD;     // copy timer mode of timer0/1
    tmp &= 0x0F;    // upper 4 bits for timer1
    tmp |= TMOD1;
    TMOD = tmp;

    // PLLCON sets the uC frequency to 16.777216 MHz
    // dt = 1/16.777216e6
    // 0xFFFF - (232<<8 | 60) => 6084
    TL1 = 60;   // (2**16-6084) & 0xFF = 60 => #LOW(-6084)
    TH1 = 232;  // ((2**16-6084)>>8) & 0xFF = 232 => #HIGH(-6084)

    ET1 = 1;    // timer1 interrupt enable
    TR1 = 1;    // timer1 starten

}

void timer1_isr(void) __interrupt(3) __using(0) {
    uint8_t tmp;

    // DEBUG
    // uncomment to measure the frequency => measured 3ms
    // P2_7 ^= 1;
    // DEBUG

    TR1 = 0;    // timer1 stop
    ET1 = 0;    // timer1 interrupt disable
    TF1 = 0;    // timer1 overflow clear

    tmp = TMOD;
    tmp &= 0x0F;    // upper 4 bits for timer1
    tmp |= TMOD1;
    TMOD = tmp;

    // PLLCON sets the uC frequency to 16.777216 MHz
    // dt = 1/16.777216e6
    // 0xFFFF - 15205 = 50330
    // dt*50330 = 3ms
    TL1 = LOW_BYTE(15205);      // (2**16 - 50331) & 0xFF
    TH1 = HIGH_BYTE(15205);     // ((2**16 - 50331) >> 8) & 0xFF

    /* TR1 = 1;    // timer1 start */
    /* ET1 = 1;    // timer1 interrupt enable */

    // update software timers
    if(tim1A) {
         tim1A -= 1;
    }
    if(tim1B) {
         tim1B -= 1;
    }
    if(tim1C) {
         tim1C -= 1;
    }

    TR1 = 1;    // timer1 start
    ET1 = 1;    // timer1 interrupt enable

}

