;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.5 #11439 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _const_msg
	.globl _main
	.globl _test
	.globl _timer2_interrupt
	.globl _delay
	.globl _init_uart_timer3
	.globl _init_uart_timer2
	.globl _init_uart_timer1
	.globl _write
	.globl _read
	.globl _SPR0
	.globl _SPR1
	.globl _CPHA
	.globl _CPOL
	.globl _SPIM
	.globl _SPE
	.globl _WCOL
	.globl _ISPI
	.globl _CS0
	.globl _CS1
	.globl _CS2
	.globl _CS3
	.globl _SCONV
	.globl _CCONV
	.globl _DMA
	.globl _ADCI
	.globl _B_7
	.globl _B_6
	.globl _B_5
	.globl _B_4
	.globl _B_3
	.globl _B_2
	.globl _B_1
	.globl _B_0
	.globl _I2CI
	.globl _I2CTX
	.globl _I2CRS
	.globl _I2CM
	.globl _I2CID0
	.globl _I2CID1
	.globl _I2CGC
	.globl _I2CSI
	.globl _MDI
	.globl _MCO
	.globl _MDE
	.globl _MDO
	.globl _ACC_7
	.globl _ACC_6
	.globl _ACC_5
	.globl _ACC_4
	.globl _ACC_3
	.globl _ACC_2
	.globl _ACC_1
	.globl _ACC_0
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CAP2
	.globl _CNT2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _TF2
	.globl _WDWR
	.globl _WDE
	.globl _WDS
	.globl _WDIR
	.globl _PRE0
	.globl _PRE1
	.globl _PRE2
	.globl _PRE3
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PADC
	.globl _PSI
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _EADC
	.globl _EA
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _T2
	.globl _T2EX
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _DACCON
	.globl _DAC1H
	.globl _DAC1L
	.globl _DAC0H
	.globl _DAC0L
	.globl _SPICON
	.globl _SPIDAT
	.globl _ADCGAINH
	.globl _ADCGAINL
	.globl _ADCOFSH
	.globl _ADCOFSL
	.globl _ADCDATAH
	.globl _ADCDATAL
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _B
	.globl _I2CCON
	.globl _ACC
	.globl _PSMCON
	.globl _PLLCON
	.globl _DMAP
	.globl _DMAH
	.globl _DMAL
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _CHIPID
	.globl _WDCON
	.globl _EADRH
	.globl _EADRL
	.globl _EDATA4
	.globl _EDATA3
	.globl _EDATA2
	.globl _EDATA1
	.globl _ECON
	.globl _IP
	.globl _PWM1H
	.globl _PWM1L
	.globl _PWM0H
	.globl _PWM0L
	.globl _PWMCON
	.globl _IEIP2
	.globl _IE
	.globl _INTVAL
	.globl _HOUR
	.globl _MIN
	.globl _SEC
	.globl _HTHSEC
	.globl _TIMECON
	.globl _T3CON
	.globl _T3FD
	.globl _SBUF
	.globl _SCON
	.globl _I2CDAT
	.globl _I2CADD3
	.globl _I2CADD2
	.globl _I2CADD1
	.globl _I2CADD
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPCON
	.globl _DPP
	.globl _DPH
	.globl _DPL
	.globl _SPH
	.globl _SP
	.globl _CFG842
	.globl _CFG841
	.globl _msg
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CFG841	=	0x00af
_CFG842	=	0x00af
_SP	=	0x0081
_SPH	=	0x00b7
_DPL	=	0x0082
_DPH	=	0x0083
_DPP	=	0x0084
_DPCON	=	0x00a7
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_I2CADD	=	0x009b
_I2CADD1	=	0x0091
_I2CADD2	=	0x0092
_I2CADD3	=	0x0093
_I2CDAT	=	0x009a
_SCON	=	0x0098
_SBUF	=	0x0099
_T3FD	=	0x009d
_T3CON	=	0x009e
_TIMECON	=	0x00a1
_HTHSEC	=	0x00a2
_SEC	=	0x00a3
_MIN	=	0x00a4
_HOUR	=	0x00a5
_INTVAL	=	0x00a6
_IE	=	0x00a8
_IEIP2	=	0x00a9
_PWMCON	=	0x00ae
_PWM0L	=	0x00b1
_PWM0H	=	0x00b2
_PWM1L	=	0x00b3
_PWM1H	=	0x00b4
_IP	=	0x00b8
_ECON	=	0x00b9
_EDATA1	=	0x00bc
_EDATA2	=	0x00bd
_EDATA3	=	0x00be
_EDATA4	=	0x00bf
_EADRL	=	0x00c6
_EADRH	=	0x00c7
_WDCON	=	0x00c0
_CHIPID	=	0x00c2
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_DMAL	=	0x00d2
_DMAH	=	0x00d3
_DMAP	=	0x00d4
_PLLCON	=	0x00d7
_PSMCON	=	0x00df
_ACC	=	0x00e0
_I2CCON	=	0x00e8
_B	=	0x00f0
_ADCCON1	=	0x00ef
_ADCCON2	=	0x00d8
_ADCCON3	=	0x00f5
_ADCDATAL	=	0x00d9
_ADCDATAH	=	0x00da
_ADCOFSL	=	0x00f1
_ADCOFSH	=	0x00f2
_ADCGAINL	=	0x00f3
_ADCGAINH	=	0x00f4
_SPIDAT	=	0x00f7
_SPICON	=	0x00f8
_DAC0L	=	0x00f9
_DAC0H	=	0x00fa
_DAC1L	=	0x00fb
_DAC1H	=	0x00fc
_DACCON	=	0x00fd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2EX	=	0x0091
_T2	=	0x0090
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_EA	=	0x00af
_EADC	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PSI	=	0x00bf
_PADC	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_PRE3	=	0x00c7
_PRE2	=	0x00c6
_PRE1	=	0x00c5
_PRE0	=	0x00c4
_WDIR	=	0x00c3
_WDS	=	0x00c2
_WDE	=	0x00c1
_WDWR	=	0x00c0
_TF2	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_CNT2	=	0x00c9
_CAP2	=	0x00c8
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_ACC_0	=	0x00e0
_ACC_1	=	0x00e1
_ACC_2	=	0x00e2
_ACC_3	=	0x00e3
_ACC_4	=	0x00e4
_ACC_5	=	0x00e5
_ACC_6	=	0x00e6
_ACC_7	=	0x00e7
_MDO	=	0x00ef
_MDE	=	0x00ee
_MCO	=	0x00ed
_MDI	=	0x00ec
_I2CSI	=	0x00ef
_I2CGC	=	0x00ee
_I2CID1	=	0x00ed
_I2CID0	=	0x00ec
_I2CM	=	0x00eb
_I2CRS	=	0x00ea
_I2CTX	=	0x00e9
_I2CI	=	0x00e8
_B_0	=	0x00f0
_B_1	=	0x00f1
_B_2	=	0x00f2
_B_3	=	0x00f3
_B_4	=	0x00f4
_B_5	=	0x00f5
_B_6	=	0x00f6
_B_7	=	0x00f7
_ADCI	=	0x00df
_DMA	=	0x00de
_CCONV	=	0x00dd
_SCONV	=	0x00dc
_CS3	=	0x00db
_CS2	=	0x00da
_CS1	=	0x00d9
_CS0	=	0x00d8
_ISPI	=	0x00ff
_WCOL	=	0x00fe
_SPE	=	0x00fd
_SPIM	=	0x00fc
_CPOL	=	0x00fb
_CPHA	=	0x00fa
_SPR1	=	0x00f9
_SPR0	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_msg::
	.ds 19
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer2_interrupt
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:86: uint8_t msg[] = "command console: \n";
	mov	_msg,#0x63
	mov	(_msg + 0x0001),#0x6f
	mov	(_msg + 0x0002),#0x6d
	mov	(_msg + 0x0003),#0x6d
	mov	(_msg + 0x0004),#0x61
	mov	(_msg + 0x0005),#0x6e
	mov	(_msg + 0x0006),#0x64
	mov	(_msg + 0x0007),#0x20
	mov	(_msg + 0x0008),#0x63
	mov	(_msg + 0x0009),#0x6f
	mov	(_msg + 0x000a),#0x6e
	mov	(_msg + 0x000b),#0x73
	mov	(_msg + 0x000c),#0x6f
	mov	(_msg + 0x000d),#0x6c
	mov	(_msg + 0x000e),#0x65
	mov	(_msg + 0x000f),#0x3a
	mov	(_msg + 0x0010),#0x20
	mov	(_msg + 0x0011),#0x0a
	mov	(_msg + 0x0012),#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'read'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	main.c:4: uint8_t read() {
;	-----------------------------------------
;	 function read
;	-----------------------------------------
_read:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:6: while(!RI);                         // Wait until character received completely
00101$:
	jnb	_RI,00101$
;	main.c:7: c = SBUF;                           // Read the character from buffer reg
	mov	dpl,_SBUF
;	main.c:8: RI = 0;                             // Clear the flag
;	assignBit
	clr	_RI
;	main.c:9: return c;                           // Return the received character
;	main.c:10: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	main.c:12: void write(uint8_t c) {
;	-----------------------------------------
;	 function write
;	-----------------------------------------
_write:
	mov	_SBUF,dpl
;	main.c:14: while(!TI);          // Wait until transmission complete
00101$:
;	main.c:15: TI=0;                // Clear flag
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	main.c:16: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_uart_timer1'
;------------------------------------------------------------
;	main.c:19: void init_uart_timer1(void) {
;	-----------------------------------------
;	 function init_uart_timer1
;	-----------------------------------------
_init_uart_timer1:
;	main.c:20: PLLCON |= 0x00;
	mov	_PLLCON,_PLLCON
;	main.c:21: PCON=0x80;      // SMOD bit set => 2400
	mov	_PCON,#0x80
;	main.c:23: SCON = 0x50;    // mode 1
	mov	_SCON,#0x50
;	main.c:24: TCLK = 0;       // use timer1 for baud rate
;	assignBit
	clr	_TCLK
;	main.c:25: RCLK = 0;       // use timer1 for baud rate
;	assignBit
	clr	_RCLK
;	main.c:26: TMOD |= 0x20;   // Timer 1 im Modus 2 (Autoreload)
	orl	_TMOD,#0x20
;	main.c:33: TL1 = 0xF2;     // 9600 Baud-Rate
	mov	_TL1,#0xf2
;	main.c:34: TH1 = 0xF2;
	mov	_TH1,#0xf2
;	main.c:39: TR1 = 1;        // Start Timer1 und UART
;	assignBit
	setb	_TR1
;	main.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_uart_timer2'
;------------------------------------------------------------
;	main.c:43: void init_uart_timer2(void) {
;	-----------------------------------------
;	 function init_uart_timer2
;	-----------------------------------------
_init_uart_timer2:
;	main.c:44: SCON = 0x50;    // mode 1
	mov	_SCON,#0x50
;	main.c:45: TCLK = 1;       // use timer2 for baud rate
;	assignBit
	setb	_TCLK
;	main.c:46: RCLK = 1;       // use timer2 for baud rate
;	assignBit
	setb	_RCLK
;	main.c:47: TMOD |= 0x20;   // Timer 1 im Modus 2 (Autoreload)
	orl	_TMOD,#0x20
;	main.c:48: TL1 = 0xFD;     // 9600 Baud-Rate
	mov	_TL1,#0xfd
;	main.c:49: TH1 = 0xFD;
	mov	_TH1,#0xfd
;	main.c:50: SCON = 0x50;    // UART Setup-Modus 2
	mov	_SCON,#0x50
;	main.c:51: TR1 = 1;        // Start Timer1 und UART
;	assignBit
	setb	_TR1
;	main.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_uart_timer3'
;------------------------------------------------------------
;	main.c:55: void init_uart_timer3(void) {
;	-----------------------------------------
;	 function init_uart_timer3
;	-----------------------------------------
_init_uart_timer3:
;	main.c:56: PLLCON |= 0x00;
	mov	_PLLCON,_PLLCON
;	main.c:58: SCON = 0xC0;
	mov	_SCON,#0xc0
;	main.c:59: T3FD = 0x09;
	mov	_T3FD,#0x09
;	main.c:60: T3CON = 0x83;
	mov	_T3CON,#0x83
;	main.c:61: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:63: void delay() {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	main.c:65: for(i=0xFF; i; i--) {
	mov	r7,#0xff
00105$:
;	main.c:66: for(j=0xFF; j; j--) {
	mov	r6,#0xff
00103$:
;	main.c:71: __endasm;
	nop
;	main.c:74: __asm__("nop");
	nop
;	main.c:66: for(j=0xFF; j; j--) {
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
	jnz	00103$
;	main.c:65: for(i=0xFF; i; i--) {
	mov	a,r7
	dec	a
	mov	r7,a
	jnz	00105$
;	main.c:78: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer2_interrupt'
;------------------------------------------------------------
;	main.c:80: void timer2_interrupt() __interrupt(1) {
;	-----------------------------------------
;	 function timer2_interrupt
;	-----------------------------------------
_timer2_interrupt:
;	main.c:81: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'test'
;------------------------------------------------------------
;	main.c:83: void test() {
;	-----------------------------------------
;	 function test
;	-----------------------------------------
_test:
;	main.c:84: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:89: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:92: test();
	lcall	_test
;	main.c:99: init_uart_timer1();
	lcall	_init_uart_timer1
;	main.c:103: while(1) {
00104$:
;	main.c:119: delay();
	lcall	_delay
;	main.c:120: for(i=0; i<18; i++) {
	mov	r7,#0x00
00106$:
;	main.c:121: write(msg[i]);
	mov	a,r7
	add	a,#_msg
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	lcall	_write
	pop	ar7
;	main.c:120: for(i=0; i<18; i++) {
	inc	r7
	cjne	r7,#0x12,00134$
00134$:
	jc	00106$
;	main.c:124: delay();
	lcall	_delay
;	main.c:125: for(i=0; i<18; i++) {
	mov	r7,#0x00
00108$:
;	main.c:126: write(const_msg[i]);
	mov	a,r7
	mov	dptr,#_const_msg
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write
	pop	ar7
;	main.c:125: for(i=0; i<18; i++) {
	inc	r7
	cjne	r7,#0x12,00136$
00136$:
	jc	00108$
;	main.c:137: }
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_const_msg:
	.ascii "COMMAND CONSOLE: "
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
