#ifndef INTERRUPT_INCLUDED
#define INTERRUPT_INCLUDED

void timer0_init(void);
void timer1_init(void);

// must be present in main
void timer0_isr(void) __interrupt(1) __using(0);
void timer1_isr(void) __interrupt(3) __using(0);

extern volatile uint8_t tim0A;
extern volatile uint8_t tim0B;
extern volatile uint8_t tim0C;

extern volatile uint8_t tim1A;
extern volatile uint8_t tim1B;
extern volatile uint8_t tim1C;

#endif

