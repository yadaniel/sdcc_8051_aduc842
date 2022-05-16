#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include "interrupt.h"
#include "aduc84x.h"

uint8_t read() {
    uint8_t c;
    while(!RI);                         // Wait until character received completely
    c = SBUF;                           // Read the character from buffer reg
    RI = 0;                             // Clear the flag
    return c;                           // Return the received character
}

void write(uint8_t c) {
    SBUF = c;            // Load the character to be transmitted in to the buffer reg
    while(!TI);          // Wait until transmission complete
    TI=0;                // Clear flag
}

// uart using timer1
void init_uart_timer1(void) {
    PLLCON |= 0x00;
    PCON=0x80;      // SMOD bit set => 2400
    /* PCON=0x00;      // SMOD bit cleared => 1200 */
    SCON = 0x50;    // mode 1
    TCLK = 0;       // use timer1 for baud rate
    RCLK = 0;       // use timer1 for baud rate
    TMOD |= 0x20;   // Timer 1 im Modus 2 (Autoreload)
    /* TL1 = 0xFD;     // 9600 Baud-Rate TODO: check why */
    /* TH1 = 0xFD; */
    /* TL1 = 0xC9;     // 1200 | 2400 Baud-Rate */
    /* TH1 = 0xC9; */
    /* TL1 = 0xE4;     // 4800 Baud-Rate */
    /* TH1 = 0xE4; */
    TL1 = 0xF2;     // 9600 Baud-Rate
    TH1 = 0xF2;
    /* TL1 = 0xF9;     // 19200 Baud-Rate */
    /* TH1 = 0xF9; */
    /* TL1 = 0xFB;     // 38400 Baud-Rate ... not working */
    /* TH1 = 0xFB; */
    TR1 = 1;        // Start Timer1 und UART
}

// uart using timer2
void init_uart_timer2(void) {
    SCON = 0x50;    // mode 1
    TCLK = 1;       // use timer2 for baud rate
    RCLK = 1;       // use timer2 for baud rate
    TMOD |= 0x20;   // Timer 1 im Modus 2 (Autoreload)
    TL1 = 0xFD;     // 9600 Baud-Rate
    TH1 = 0xFD;
    SCON = 0x50;    // UART Setup-Modus 2
    TR1 = 1;        // Start Timer1 und UART
}

// uart using timer3
void init_uart_timer3(void) {
    PLLCON = 0x00;
    while((PLLCON & 0x40) != 0x40) {
    }
    SCON = 0x50;
    // 115200
    T3FD = 0x09;
    T3CON = 0x83;
    // 9600
    /* T3FD = 0x2D; */
    /* T3CON = 0x86; */
}

void delay() {
    uint8_t i, j;
    for(i=0xFF; i; i--) {
        for(j=0xFF; j; j--) {

            // inline assembler old style
            __asm
            nop
            __endasm;

            // inline assembler new style
            __asm__("nop");

        }
    }
}

void delay2() {
    uint8_t i, j;
    for(i=0x1F; i; i--) {
        for(j=0xFF; j; j--) {

            // inline assembler old style
            __asm
            nop
            __endasm;

            // inline assembler new style
            __asm__("nop");

        }
    }
}

uint8_t msg[] = "command console: \n";
__code uint8_t const_msg[] = "COMMAND CONSOLE: \n";

void main() {
    uint8_t i = 0;
    uint8_t n = 0;
    uint8_t buffer[32] = {0};
    uint16_t cnt = 0;

    init_uart_timer3();
    timer0_init();
    timer1_init();
    EA = 1;

    TIMECON |= TCEN;    // HTHSEC enabled

    while(1) {

        if(tim0A == 0) {
            tim0A = 50;

            cnt += 1;
            /* n = sprintf(&buffer[0], "[%d]: HTHSEC=%d\n", cnt, HTHSEC); */
            n = sprintf(&buffer[0], "[%d]: SEC=%d\n", cnt, SEC);
            for(i=0; i<n; i++) {
                write(buffer[i]);
            }

        }

    }
}

