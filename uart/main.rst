                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.5 #11439 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _const_msg
                                     12 	.globl _main
                                     13 	.globl _test
                                     14 	.globl _timer2_interrupt
                                     15 	.globl _delay
                                     16 	.globl _init_uart_timer3
                                     17 	.globl _init_uart_timer2
                                     18 	.globl _init_uart_timer1
                                     19 	.globl _write
                                     20 	.globl _read
                                     21 	.globl _SPR0
                                     22 	.globl _SPR1
                                     23 	.globl _CPHA
                                     24 	.globl _CPOL
                                     25 	.globl _SPIM
                                     26 	.globl _SPE
                                     27 	.globl _WCOL
                                     28 	.globl _ISPI
                                     29 	.globl _CS0
                                     30 	.globl _CS1
                                     31 	.globl _CS2
                                     32 	.globl _CS3
                                     33 	.globl _SCONV
                                     34 	.globl _CCONV
                                     35 	.globl _DMA
                                     36 	.globl _ADCI
                                     37 	.globl _B_7
                                     38 	.globl _B_6
                                     39 	.globl _B_5
                                     40 	.globl _B_4
                                     41 	.globl _B_3
                                     42 	.globl _B_2
                                     43 	.globl _B_1
                                     44 	.globl _B_0
                                     45 	.globl _I2CI
                                     46 	.globl _I2CTX
                                     47 	.globl _I2CRS
                                     48 	.globl _I2CM
                                     49 	.globl _I2CID0
                                     50 	.globl _I2CID1
                                     51 	.globl _I2CGC
                                     52 	.globl _I2CSI
                                     53 	.globl _MDI
                                     54 	.globl _MCO
                                     55 	.globl _MDE
                                     56 	.globl _MDO
                                     57 	.globl _ACC_7
                                     58 	.globl _ACC_6
                                     59 	.globl _ACC_5
                                     60 	.globl _ACC_4
                                     61 	.globl _ACC_3
                                     62 	.globl _ACC_2
                                     63 	.globl _ACC_1
                                     64 	.globl _ACC_0
                                     65 	.globl _P
                                     66 	.globl _F1
                                     67 	.globl _OV
                                     68 	.globl _RS0
                                     69 	.globl _RS1
                                     70 	.globl _F0
                                     71 	.globl _AC
                                     72 	.globl _CY
                                     73 	.globl _CAP2
                                     74 	.globl _CNT2
                                     75 	.globl _TR2
                                     76 	.globl _EXEN2
                                     77 	.globl _TCLK
                                     78 	.globl _RCLK
                                     79 	.globl _EXF2
                                     80 	.globl _TF2
                                     81 	.globl _WDWR
                                     82 	.globl _WDE
                                     83 	.globl _WDS
                                     84 	.globl _WDIR
                                     85 	.globl _PRE0
                                     86 	.globl _PRE1
                                     87 	.globl _PRE2
                                     88 	.globl _PRE3
                                     89 	.globl _PX0
                                     90 	.globl _PT0
                                     91 	.globl _PX1
                                     92 	.globl _PT1
                                     93 	.globl _PS
                                     94 	.globl _PT2
                                     95 	.globl _PADC
                                     96 	.globl _PSI
                                     97 	.globl _EX0
                                     98 	.globl _ET0
                                     99 	.globl _EX1
                                    100 	.globl _ET1
                                    101 	.globl _ES
                                    102 	.globl _ET2
                                    103 	.globl _EADC
                                    104 	.globl _EA
                                    105 	.globl _RI
                                    106 	.globl _TI
                                    107 	.globl _RB8
                                    108 	.globl _TB8
                                    109 	.globl _REN
                                    110 	.globl _SM2
                                    111 	.globl _SM1
                                    112 	.globl _SM0
                                    113 	.globl _RD
                                    114 	.globl _WR
                                    115 	.globl _T1
                                    116 	.globl _T0
                                    117 	.globl _INT1
                                    118 	.globl _INT0
                                    119 	.globl _TXD
                                    120 	.globl _RXD
                                    121 	.globl _P3_7
                                    122 	.globl _P3_6
                                    123 	.globl _P3_5
                                    124 	.globl _P3_4
                                    125 	.globl _P3_3
                                    126 	.globl _P3_2
                                    127 	.globl _P3_1
                                    128 	.globl _P3_0
                                    129 	.globl _P2_7
                                    130 	.globl _P2_6
                                    131 	.globl _P2_5
                                    132 	.globl _P2_4
                                    133 	.globl _P2_3
                                    134 	.globl _P2_2
                                    135 	.globl _P2_1
                                    136 	.globl _P2_0
                                    137 	.globl _T2
                                    138 	.globl _T2EX
                                    139 	.globl _P1_7
                                    140 	.globl _P1_6
                                    141 	.globl _P1_5
                                    142 	.globl _P1_4
                                    143 	.globl _P1_3
                                    144 	.globl _P1_2
                                    145 	.globl _P1_1
                                    146 	.globl _P1_0
                                    147 	.globl _P0_7
                                    148 	.globl _P0_6
                                    149 	.globl _P0_5
                                    150 	.globl _P0_4
                                    151 	.globl _P0_3
                                    152 	.globl _P0_2
                                    153 	.globl _P0_1
                                    154 	.globl _P0_0
                                    155 	.globl _IT0
                                    156 	.globl _IE0
                                    157 	.globl _IT1
                                    158 	.globl _IE1
                                    159 	.globl _TR0
                                    160 	.globl _TF0
                                    161 	.globl _TR1
                                    162 	.globl _TF1
                                    163 	.globl _DACCON
                                    164 	.globl _DAC1H
                                    165 	.globl _DAC1L
                                    166 	.globl _DAC0H
                                    167 	.globl _DAC0L
                                    168 	.globl _SPICON
                                    169 	.globl _SPIDAT
                                    170 	.globl _ADCGAINH
                                    171 	.globl _ADCGAINL
                                    172 	.globl _ADCOFSH
                                    173 	.globl _ADCOFSL
                                    174 	.globl _ADCDATAH
                                    175 	.globl _ADCDATAL
                                    176 	.globl _ADCCON3
                                    177 	.globl _ADCCON2
                                    178 	.globl _ADCCON1
                                    179 	.globl _B
                                    180 	.globl _I2CCON
                                    181 	.globl _ACC
                                    182 	.globl _PSMCON
                                    183 	.globl _PLLCON
                                    184 	.globl _DMAP
                                    185 	.globl _DMAH
                                    186 	.globl _DMAL
                                    187 	.globl _PSW
                                    188 	.globl _TH2
                                    189 	.globl _TL2
                                    190 	.globl _RCAP2H
                                    191 	.globl _RCAP2L
                                    192 	.globl _T2CON
                                    193 	.globl _CHIPID
                                    194 	.globl _WDCON
                                    195 	.globl _EADRH
                                    196 	.globl _EADRL
                                    197 	.globl _EDATA4
                                    198 	.globl _EDATA3
                                    199 	.globl _EDATA2
                                    200 	.globl _EDATA1
                                    201 	.globl _ECON
                                    202 	.globl _IP
                                    203 	.globl _PWM1H
                                    204 	.globl _PWM1L
                                    205 	.globl _PWM0H
                                    206 	.globl _PWM0L
                                    207 	.globl _PWMCON
                                    208 	.globl _IEIP2
                                    209 	.globl _IE
                                    210 	.globl _INTVAL
                                    211 	.globl _HOUR
                                    212 	.globl _MIN
                                    213 	.globl _SEC
                                    214 	.globl _HTHSEC
                                    215 	.globl _TIMECON
                                    216 	.globl _T3CON
                                    217 	.globl _T3FD
                                    218 	.globl _SBUF
                                    219 	.globl _SCON
                                    220 	.globl _I2CDAT
                                    221 	.globl _I2CADD3
                                    222 	.globl _I2CADD2
                                    223 	.globl _I2CADD1
                                    224 	.globl _I2CADD
                                    225 	.globl _P3
                                    226 	.globl _P2
                                    227 	.globl _P1
                                    228 	.globl _P0
                                    229 	.globl _TH1
                                    230 	.globl _TH0
                                    231 	.globl _TL1
                                    232 	.globl _TL0
                                    233 	.globl _TMOD
                                    234 	.globl _TCON
                                    235 	.globl _PCON
                                    236 	.globl _DPCON
                                    237 	.globl _DPP
                                    238 	.globl _DPH
                                    239 	.globl _DPL
                                    240 	.globl _SPH
                                    241 	.globl _SP
                                    242 	.globl _CFG842
                                    243 	.globl _CFG841
                                    244 	.globl _msg
                                    245 ;--------------------------------------------------------
                                    246 ; special function registers
                                    247 ;--------------------------------------------------------
                                    248 	.area RSEG    (ABS,DATA)
      000000                        249 	.org 0x0000
                           0000AF   250 _CFG841	=	0x00af
                           0000AF   251 _CFG842	=	0x00af
                           000081   252 _SP	=	0x0081
                           0000B7   253 _SPH	=	0x00b7
                           000082   254 _DPL	=	0x0082
                           000083   255 _DPH	=	0x0083
                           000084   256 _DPP	=	0x0084
                           0000A7   257 _DPCON	=	0x00a7
                           000087   258 _PCON	=	0x0087
                           000088   259 _TCON	=	0x0088
                           000089   260 _TMOD	=	0x0089
                           00008A   261 _TL0	=	0x008a
                           00008B   262 _TL1	=	0x008b
                           00008C   263 _TH0	=	0x008c
                           00008D   264 _TH1	=	0x008d
                           000080   265 _P0	=	0x0080
                           000090   266 _P1	=	0x0090
                           0000A0   267 _P2	=	0x00a0
                           0000B0   268 _P3	=	0x00b0
                           00009B   269 _I2CADD	=	0x009b
                           000091   270 _I2CADD1	=	0x0091
                           000092   271 _I2CADD2	=	0x0092
                           000093   272 _I2CADD3	=	0x0093
                           00009A   273 _I2CDAT	=	0x009a
                           000098   274 _SCON	=	0x0098
                           000099   275 _SBUF	=	0x0099
                           00009D   276 _T3FD	=	0x009d
                           00009E   277 _T3CON	=	0x009e
                           0000A1   278 _TIMECON	=	0x00a1
                           0000A2   279 _HTHSEC	=	0x00a2
                           0000A3   280 _SEC	=	0x00a3
                           0000A4   281 _MIN	=	0x00a4
                           0000A5   282 _HOUR	=	0x00a5
                           0000A6   283 _INTVAL	=	0x00a6
                           0000A8   284 _IE	=	0x00a8
                           0000A9   285 _IEIP2	=	0x00a9
                           0000AE   286 _PWMCON	=	0x00ae
                           0000B1   287 _PWM0L	=	0x00b1
                           0000B2   288 _PWM0H	=	0x00b2
                           0000B3   289 _PWM1L	=	0x00b3
                           0000B4   290 _PWM1H	=	0x00b4
                           0000B8   291 _IP	=	0x00b8
                           0000B9   292 _ECON	=	0x00b9
                           0000BC   293 _EDATA1	=	0x00bc
                           0000BD   294 _EDATA2	=	0x00bd
                           0000BE   295 _EDATA3	=	0x00be
                           0000BF   296 _EDATA4	=	0x00bf
                           0000C6   297 _EADRL	=	0x00c6
                           0000C7   298 _EADRH	=	0x00c7
                           0000C0   299 _WDCON	=	0x00c0
                           0000C2   300 _CHIPID	=	0x00c2
                           0000C8   301 _T2CON	=	0x00c8
                           0000CA   302 _RCAP2L	=	0x00ca
                           0000CB   303 _RCAP2H	=	0x00cb
                           0000CC   304 _TL2	=	0x00cc
                           0000CD   305 _TH2	=	0x00cd
                           0000D0   306 _PSW	=	0x00d0
                           0000D2   307 _DMAL	=	0x00d2
                           0000D3   308 _DMAH	=	0x00d3
                           0000D4   309 _DMAP	=	0x00d4
                           0000D7   310 _PLLCON	=	0x00d7
                           0000DF   311 _PSMCON	=	0x00df
                           0000E0   312 _ACC	=	0x00e0
                           0000E8   313 _I2CCON	=	0x00e8
                           0000F0   314 _B	=	0x00f0
                           0000EF   315 _ADCCON1	=	0x00ef
                           0000D8   316 _ADCCON2	=	0x00d8
                           0000F5   317 _ADCCON3	=	0x00f5
                           0000D9   318 _ADCDATAL	=	0x00d9
                           0000DA   319 _ADCDATAH	=	0x00da
                           0000F1   320 _ADCOFSL	=	0x00f1
                           0000F2   321 _ADCOFSH	=	0x00f2
                           0000F3   322 _ADCGAINL	=	0x00f3
                           0000F4   323 _ADCGAINH	=	0x00f4
                           0000F7   324 _SPIDAT	=	0x00f7
                           0000F8   325 _SPICON	=	0x00f8
                           0000F9   326 _DAC0L	=	0x00f9
                           0000FA   327 _DAC0H	=	0x00fa
                           0000FB   328 _DAC1L	=	0x00fb
                           0000FC   329 _DAC1H	=	0x00fc
                           0000FD   330 _DACCON	=	0x00fd
                                    331 ;--------------------------------------------------------
                                    332 ; special function bits
                                    333 ;--------------------------------------------------------
                                    334 	.area RSEG    (ABS,DATA)
      000000                        335 	.org 0x0000
                           00008F   336 _TF1	=	0x008f
                           00008E   337 _TR1	=	0x008e
                           00008D   338 _TF0	=	0x008d
                           00008C   339 _TR0	=	0x008c
                           00008B   340 _IE1	=	0x008b
                           00008A   341 _IT1	=	0x008a
                           000089   342 _IE0	=	0x0089
                           000088   343 _IT0	=	0x0088
                           000080   344 _P0_0	=	0x0080
                           000081   345 _P0_1	=	0x0081
                           000082   346 _P0_2	=	0x0082
                           000083   347 _P0_3	=	0x0083
                           000084   348 _P0_4	=	0x0084
                           000085   349 _P0_5	=	0x0085
                           000086   350 _P0_6	=	0x0086
                           000087   351 _P0_7	=	0x0087
                           000090   352 _P1_0	=	0x0090
                           000091   353 _P1_1	=	0x0091
                           000092   354 _P1_2	=	0x0092
                           000093   355 _P1_3	=	0x0093
                           000094   356 _P1_4	=	0x0094
                           000095   357 _P1_5	=	0x0095
                           000096   358 _P1_6	=	0x0096
                           000097   359 _P1_7	=	0x0097
                           000091   360 _T2EX	=	0x0091
                           000090   361 _T2	=	0x0090
                           0000A0   362 _P2_0	=	0x00a0
                           0000A1   363 _P2_1	=	0x00a1
                           0000A2   364 _P2_2	=	0x00a2
                           0000A3   365 _P2_3	=	0x00a3
                           0000A4   366 _P2_4	=	0x00a4
                           0000A5   367 _P2_5	=	0x00a5
                           0000A6   368 _P2_6	=	0x00a6
                           0000A7   369 _P2_7	=	0x00a7
                           0000B0   370 _P3_0	=	0x00b0
                           0000B1   371 _P3_1	=	0x00b1
                           0000B2   372 _P3_2	=	0x00b2
                           0000B3   373 _P3_3	=	0x00b3
                           0000B4   374 _P3_4	=	0x00b4
                           0000B5   375 _P3_5	=	0x00b5
                           0000B6   376 _P3_6	=	0x00b6
                           0000B7   377 _P3_7	=	0x00b7
                           0000B0   378 _RXD	=	0x00b0
                           0000B1   379 _TXD	=	0x00b1
                           0000B2   380 _INT0	=	0x00b2
                           0000B3   381 _INT1	=	0x00b3
                           0000B4   382 _T0	=	0x00b4
                           0000B5   383 _T1	=	0x00b5
                           0000B6   384 _WR	=	0x00b6
                           0000B7   385 _RD	=	0x00b7
                           00009F   386 _SM0	=	0x009f
                           00009E   387 _SM1	=	0x009e
                           00009D   388 _SM2	=	0x009d
                           00009C   389 _REN	=	0x009c
                           00009B   390 _TB8	=	0x009b
                           00009A   391 _RB8	=	0x009a
                           000099   392 _TI	=	0x0099
                           000098   393 _RI	=	0x0098
                           0000AF   394 _EA	=	0x00af
                           0000AE   395 _EADC	=	0x00ae
                           0000AD   396 _ET2	=	0x00ad
                           0000AC   397 _ES	=	0x00ac
                           0000AB   398 _ET1	=	0x00ab
                           0000AA   399 _EX1	=	0x00aa
                           0000A9   400 _ET0	=	0x00a9
                           0000A8   401 _EX0	=	0x00a8
                           0000BF   402 _PSI	=	0x00bf
                           0000BE   403 _PADC	=	0x00be
                           0000BD   404 _PT2	=	0x00bd
                           0000BC   405 _PS	=	0x00bc
                           0000BB   406 _PT1	=	0x00bb
                           0000BA   407 _PX1	=	0x00ba
                           0000B9   408 _PT0	=	0x00b9
                           0000B8   409 _PX0	=	0x00b8
                           0000C7   410 _PRE3	=	0x00c7
                           0000C6   411 _PRE2	=	0x00c6
                           0000C5   412 _PRE1	=	0x00c5
                           0000C4   413 _PRE0	=	0x00c4
                           0000C3   414 _WDIR	=	0x00c3
                           0000C2   415 _WDS	=	0x00c2
                           0000C1   416 _WDE	=	0x00c1
                           0000C0   417 _WDWR	=	0x00c0
                           0000CF   418 _TF2	=	0x00cf
                           0000CE   419 _EXF2	=	0x00ce
                           0000CD   420 _RCLK	=	0x00cd
                           0000CC   421 _TCLK	=	0x00cc
                           0000CB   422 _EXEN2	=	0x00cb
                           0000CA   423 _TR2	=	0x00ca
                           0000C9   424 _CNT2	=	0x00c9
                           0000C8   425 _CAP2	=	0x00c8
                           0000D7   426 _CY	=	0x00d7
                           0000D6   427 _AC	=	0x00d6
                           0000D5   428 _F0	=	0x00d5
                           0000D4   429 _RS1	=	0x00d4
                           0000D3   430 _RS0	=	0x00d3
                           0000D2   431 _OV	=	0x00d2
                           0000D1   432 _F1	=	0x00d1
                           0000D0   433 _P	=	0x00d0
                           0000E0   434 _ACC_0	=	0x00e0
                           0000E1   435 _ACC_1	=	0x00e1
                           0000E2   436 _ACC_2	=	0x00e2
                           0000E3   437 _ACC_3	=	0x00e3
                           0000E4   438 _ACC_4	=	0x00e4
                           0000E5   439 _ACC_5	=	0x00e5
                           0000E6   440 _ACC_6	=	0x00e6
                           0000E7   441 _ACC_7	=	0x00e7
                           0000EF   442 _MDO	=	0x00ef
                           0000EE   443 _MDE	=	0x00ee
                           0000ED   444 _MCO	=	0x00ed
                           0000EC   445 _MDI	=	0x00ec
                           0000EF   446 _I2CSI	=	0x00ef
                           0000EE   447 _I2CGC	=	0x00ee
                           0000ED   448 _I2CID1	=	0x00ed
                           0000EC   449 _I2CID0	=	0x00ec
                           0000EB   450 _I2CM	=	0x00eb
                           0000EA   451 _I2CRS	=	0x00ea
                           0000E9   452 _I2CTX	=	0x00e9
                           0000E8   453 _I2CI	=	0x00e8
                           0000F0   454 _B_0	=	0x00f0
                           0000F1   455 _B_1	=	0x00f1
                           0000F2   456 _B_2	=	0x00f2
                           0000F3   457 _B_3	=	0x00f3
                           0000F4   458 _B_4	=	0x00f4
                           0000F5   459 _B_5	=	0x00f5
                           0000F6   460 _B_6	=	0x00f6
                           0000F7   461 _B_7	=	0x00f7
                           0000DF   462 _ADCI	=	0x00df
                           0000DE   463 _DMA	=	0x00de
                           0000DD   464 _CCONV	=	0x00dd
                           0000DC   465 _SCONV	=	0x00dc
                           0000DB   466 _CS3	=	0x00db
                           0000DA   467 _CS2	=	0x00da
                           0000D9   468 _CS1	=	0x00d9
                           0000D8   469 _CS0	=	0x00d8
                           0000FF   470 _ISPI	=	0x00ff
                           0000FE   471 _WCOL	=	0x00fe
                           0000FD   472 _SPE	=	0x00fd
                           0000FC   473 _SPIM	=	0x00fc
                           0000FB   474 _CPOL	=	0x00fb
                           0000FA   475 _CPHA	=	0x00fa
                           0000F9   476 _SPR1	=	0x00f9
                           0000F8   477 _SPR0	=	0x00f8
                                    478 ;--------------------------------------------------------
                                    479 ; overlayable register banks
                                    480 ;--------------------------------------------------------
                                    481 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        482 	.ds 8
                                    483 ;--------------------------------------------------------
                                    484 ; internal ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area DSEG    (DATA)
      000008                        487 _msg::
      000008                        488 	.ds 19
                                    489 ;--------------------------------------------------------
                                    490 ; overlayable items in internal ram 
                                    491 ;--------------------------------------------------------
                                    492 	.area	OSEG    (OVR,DATA)
                                    493 	.area	OSEG    (OVR,DATA)
                                    494 	.area	OSEG    (OVR,DATA)
                                    495 ;--------------------------------------------------------
                                    496 ; Stack segment in internal ram 
                                    497 ;--------------------------------------------------------
                                    498 	.area	SSEG
      00001B                        499 __start__stack:
      00001B                        500 	.ds	1
                                    501 
                                    502 ;--------------------------------------------------------
                                    503 ; indirectly addressable internal ram data
                                    504 ;--------------------------------------------------------
                                    505 	.area ISEG    (DATA)
                                    506 ;--------------------------------------------------------
                                    507 ; absolute internal ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area IABS    (ABS,DATA)
                                    510 	.area IABS    (ABS,DATA)
                                    511 ;--------------------------------------------------------
                                    512 ; bit data
                                    513 ;--------------------------------------------------------
                                    514 	.area BSEG    (BIT)
                                    515 ;--------------------------------------------------------
                                    516 ; paged external ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area PSEG    (PAG,XDATA)
                                    519 ;--------------------------------------------------------
                                    520 ; external ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area XSEG    (XDATA)
                                    523 ;--------------------------------------------------------
                                    524 ; absolute external ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area XABS    (ABS,XDATA)
                                    527 ;--------------------------------------------------------
                                    528 ; external initialized ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area XISEG   (XDATA)
                                    531 	.area HOME    (CODE)
                                    532 	.area GSINIT0 (CODE)
                                    533 	.area GSINIT1 (CODE)
                                    534 	.area GSINIT2 (CODE)
                                    535 	.area GSINIT3 (CODE)
                                    536 	.area GSINIT4 (CODE)
                                    537 	.area GSINIT5 (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.area GSFINAL (CODE)
                                    540 	.area CSEG    (CODE)
                                    541 ;--------------------------------------------------------
                                    542 ; interrupt vector 
                                    543 ;--------------------------------------------------------
                                    544 	.area HOME    (CODE)
      000000                        545 __interrupt_vect:
      000000 02 00 11         [24]  546 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  547 	reti
      000004                        548 	.ds	7
      00000B 02 01 06         [24]  549 	ljmp	_timer2_interrupt
                                    550 ;--------------------------------------------------------
                                    551 ; global & static initialisations
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
                                    554 	.area GSINIT  (CODE)
                                    555 	.area GSFINAL (CODE)
                                    556 	.area GSINIT  (CODE)
                                    557 	.globl __sdcc_gsinit_startup
                                    558 	.globl __sdcc_program_startup
                                    559 	.globl __start__stack
                                    560 	.globl __mcs51_genXINIT
                                    561 	.globl __mcs51_genXRAMCLEAR
                                    562 	.globl __mcs51_genRAMCLEAR
                                    563 ;	main.c:86: uint8_t msg[] = "command console: \n";
      00006A 75 08 63         [24]  564 	mov	_msg,#0x63
      00006D 75 09 6F         [24]  565 	mov	(_msg + 0x0001),#0x6f
      000070 75 0A 6D         [24]  566 	mov	(_msg + 0x0002),#0x6d
      000073 75 0B 6D         [24]  567 	mov	(_msg + 0x0003),#0x6d
      000076 75 0C 61         [24]  568 	mov	(_msg + 0x0004),#0x61
      000079 75 0D 6E         [24]  569 	mov	(_msg + 0x0005),#0x6e
      00007C 75 0E 64         [24]  570 	mov	(_msg + 0x0006),#0x64
      00007F 75 0F 20         [24]  571 	mov	(_msg + 0x0007),#0x20
      000082 75 10 63         [24]  572 	mov	(_msg + 0x0008),#0x63
      000085 75 11 6F         [24]  573 	mov	(_msg + 0x0009),#0x6f
      000088 75 12 6E         [24]  574 	mov	(_msg + 0x000a),#0x6e
      00008B 75 13 73         [24]  575 	mov	(_msg + 0x000b),#0x73
      00008E 75 14 6F         [24]  576 	mov	(_msg + 0x000c),#0x6f
      000091 75 15 6C         [24]  577 	mov	(_msg + 0x000d),#0x6c
      000094 75 16 65         [24]  578 	mov	(_msg + 0x000e),#0x65
      000097 75 17 3A         [24]  579 	mov	(_msg + 0x000f),#0x3a
      00009A 75 18 20         [24]  580 	mov	(_msg + 0x0010),#0x20
      00009D 75 19 0A         [24]  581 	mov	(_msg + 0x0011),#0x0a
      0000A0 75 1A 00         [24]  582 	mov	(_msg + 0x0012),#0x00
                                    583 	.area GSFINAL (CODE)
      0000A3 02 00 0E         [24]  584 	ljmp	__sdcc_program_startup
                                    585 ;--------------------------------------------------------
                                    586 ; Home
                                    587 ;--------------------------------------------------------
                                    588 	.area HOME    (CODE)
                                    589 	.area HOME    (CODE)
      00000E                        590 __sdcc_program_startup:
      00000E 02 01 08         [24]  591 	ljmp	_main
                                    592 ;	return from main will return to caller
                                    593 ;--------------------------------------------------------
                                    594 ; code
                                    595 ;--------------------------------------------------------
                                    596 	.area CSEG    (CODE)
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'read'
                                    599 ;------------------------------------------------------------
                                    600 ;c                         Allocated to registers 
                                    601 ;------------------------------------------------------------
                                    602 ;	main.c:4: uint8_t read() {
                                    603 ;	-----------------------------------------
                                    604 ;	 function read
                                    605 ;	-----------------------------------------
      0000A6                        606 _read:
                           000007   607 	ar7 = 0x07
                           000006   608 	ar6 = 0x06
                           000005   609 	ar5 = 0x05
                           000004   610 	ar4 = 0x04
                           000003   611 	ar3 = 0x03
                           000002   612 	ar2 = 0x02
                           000001   613 	ar1 = 0x01
                           000000   614 	ar0 = 0x00
                                    615 ;	main.c:6: while(!RI);                         // Wait until character received completely
      0000A6                        616 00101$:
      0000A6 30 98 FD         [24]  617 	jnb	_RI,00101$
                                    618 ;	main.c:7: c = SBUF;                           // Read the character from buffer reg
      0000A9 85 99 82         [24]  619 	mov	dpl,_SBUF
                                    620 ;	main.c:8: RI = 0;                             // Clear the flag
                                    621 ;	assignBit
      0000AC C2 98            [12]  622 	clr	_RI
                                    623 ;	main.c:9: return c;                           // Return the received character
                                    624 ;	main.c:10: }
      0000AE 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'write'
                                    628 ;------------------------------------------------------------
                                    629 ;c                         Allocated to registers 
                                    630 ;------------------------------------------------------------
                                    631 ;	main.c:12: void write(uint8_t c) {
                                    632 ;	-----------------------------------------
                                    633 ;	 function write
                                    634 ;	-----------------------------------------
      0000AF                        635 _write:
      0000AF 85 82 99         [24]  636 	mov	_SBUF,dpl
                                    637 ;	main.c:14: while(!TI);          // Wait until transmission complete
      0000B2                        638 00101$:
                                    639 ;	main.c:15: TI=0;                // Clear flag
                                    640 ;	assignBit
      0000B2 10 99 02         [24]  641 	jbc	_TI,00114$
      0000B5 80 FB            [24]  642 	sjmp	00101$
      0000B7                        643 00114$:
                                    644 ;	main.c:16: }
      0000B7 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'init_uart_timer1'
                                    648 ;------------------------------------------------------------
                                    649 ;	main.c:19: void init_uart_timer1(void) {
                                    650 ;	-----------------------------------------
                                    651 ;	 function init_uart_timer1
                                    652 ;	-----------------------------------------
      0000B8                        653 _init_uart_timer1:
                                    654 ;	main.c:20: PLLCON |= 0x00;
      0000B8 85 D7 D7         [24]  655 	mov	_PLLCON,_PLLCON
                                    656 ;	main.c:21: PCON=0x80;      // SMOD bit set => 2400
      0000BB 75 87 80         [24]  657 	mov	_PCON,#0x80
                                    658 ;	main.c:23: SCON = 0x50;    // mode 1
      0000BE 75 98 50         [24]  659 	mov	_SCON,#0x50
                                    660 ;	main.c:24: TCLK = 0;       // use timer1 for baud rate
                                    661 ;	assignBit
      0000C1 C2 CC            [12]  662 	clr	_TCLK
                                    663 ;	main.c:25: RCLK = 0;       // use timer1 for baud rate
                                    664 ;	assignBit
      0000C3 C2 CD            [12]  665 	clr	_RCLK
                                    666 ;	main.c:26: TMOD |= 0x20;   // Timer 1 im Modus 2 (Autoreload)
      0000C5 43 89 20         [24]  667 	orl	_TMOD,#0x20
                                    668 ;	main.c:33: TL1 = 0xF2;     // 9600 Baud-Rate
      0000C8 75 8B F2         [24]  669 	mov	_TL1,#0xf2
                                    670 ;	main.c:34: TH1 = 0xF2;
      0000CB 75 8D F2         [24]  671 	mov	_TH1,#0xf2
                                    672 ;	main.c:39: TR1 = 1;        // Start Timer1 und UART
                                    673 ;	assignBit
      0000CE D2 8E            [12]  674 	setb	_TR1
                                    675 ;	main.c:40: }
      0000D0 22               [24]  676 	ret
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'init_uart_timer2'
                                    679 ;------------------------------------------------------------
                                    680 ;	main.c:43: void init_uart_timer2(void) {
                                    681 ;	-----------------------------------------
                                    682 ;	 function init_uart_timer2
                                    683 ;	-----------------------------------------
      0000D1                        684 _init_uart_timer2:
                                    685 ;	main.c:44: SCON = 0x50;    // mode 1
      0000D1 75 98 50         [24]  686 	mov	_SCON,#0x50
                                    687 ;	main.c:45: TCLK = 1;       // use timer2 for baud rate
                                    688 ;	assignBit
      0000D4 D2 CC            [12]  689 	setb	_TCLK
                                    690 ;	main.c:46: RCLK = 1;       // use timer2 for baud rate
                                    691 ;	assignBit
      0000D6 D2 CD            [12]  692 	setb	_RCLK
                                    693 ;	main.c:47: TMOD |= 0x20;   // Timer 1 im Modus 2 (Autoreload)
      0000D8 43 89 20         [24]  694 	orl	_TMOD,#0x20
                                    695 ;	main.c:48: TL1 = 0xFD;     // 9600 Baud-Rate
      0000DB 75 8B FD         [24]  696 	mov	_TL1,#0xfd
                                    697 ;	main.c:49: TH1 = 0xFD;
      0000DE 75 8D FD         [24]  698 	mov	_TH1,#0xfd
                                    699 ;	main.c:50: SCON = 0x50;    // UART Setup-Modus 2
      0000E1 75 98 50         [24]  700 	mov	_SCON,#0x50
                                    701 ;	main.c:51: TR1 = 1;        // Start Timer1 und UART
                                    702 ;	assignBit
      0000E4 D2 8E            [12]  703 	setb	_TR1
                                    704 ;	main.c:52: }
      0000E6 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'init_uart_timer3'
                                    708 ;------------------------------------------------------------
                                    709 ;	main.c:55: void init_uart_timer3(void) {
                                    710 ;	-----------------------------------------
                                    711 ;	 function init_uart_timer3
                                    712 ;	-----------------------------------------
      0000E7                        713 _init_uart_timer3:
                                    714 ;	main.c:56: PLLCON |= 0x00;
      0000E7 85 D7 D7         [24]  715 	mov	_PLLCON,_PLLCON
                                    716 ;	main.c:58: SCON = 0xC0;
      0000EA 75 98 C0         [24]  717 	mov	_SCON,#0xc0
                                    718 ;	main.c:59: T3FD = 0x09;
      0000ED 75 9D 09         [24]  719 	mov	_T3FD,#0x09
                                    720 ;	main.c:60: T3CON = 0x83;
      0000F0 75 9E 83         [24]  721 	mov	_T3CON,#0x83
                                    722 ;	main.c:61: }
      0000F3 22               [24]  723 	ret
                                    724 ;------------------------------------------------------------
                                    725 ;Allocation info for local variables in function 'delay'
                                    726 ;------------------------------------------------------------
                                    727 ;i                         Allocated to registers r7 
                                    728 ;j                         Allocated to registers r6 
                                    729 ;------------------------------------------------------------
                                    730 ;	main.c:63: void delay() {
                                    731 ;	-----------------------------------------
                                    732 ;	 function delay
                                    733 ;	-----------------------------------------
      0000F4                        734 _delay:
                                    735 ;	main.c:65: for(i=0xFF; i; i--) {
      0000F4 7F FF            [12]  736 	mov	r7,#0xff
      0000F6                        737 00105$:
                                    738 ;	main.c:66: for(j=0xFF; j; j--) {
      0000F6 7E FF            [12]  739 	mov	r6,#0xff
      0000F8                        740 00103$:
                                    741 ;	main.c:71: __endasm;
      0000F8 00               [12]  742 	nop
                                    743 ;	main.c:74: __asm__("nop");
      0000F9 00               [12]  744 	nop
                                    745 ;	main.c:66: for(j=0xFF; j; j--) {
      0000FA EE               [12]  746 	mov	a,r6
      0000FB 14               [12]  747 	dec	a
      0000FC FD               [12]  748 	mov	r5,a
      0000FD FE               [12]  749 	mov	r6,a
      0000FE 70 F8            [24]  750 	jnz	00103$
                                    751 ;	main.c:65: for(i=0xFF; i; i--) {
      000100 EF               [12]  752 	mov	a,r7
      000101 14               [12]  753 	dec	a
      000102 FF               [12]  754 	mov	r7,a
      000103 70 F1            [24]  755 	jnz	00105$
                                    756 ;	main.c:78: }
      000105 22               [24]  757 	ret
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'timer2_interrupt'
                                    760 ;------------------------------------------------------------
                                    761 ;	main.c:80: void timer2_interrupt() __interrupt(1) {
                                    762 ;	-----------------------------------------
                                    763 ;	 function timer2_interrupt
                                    764 ;	-----------------------------------------
      000106                        765 _timer2_interrupt:
                                    766 ;	main.c:81: }
      000106 32               [24]  767 	reti
                                    768 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    769 ;	eliminated unneeded push/pop psw
                                    770 ;	eliminated unneeded push/pop dpl
                                    771 ;	eliminated unneeded push/pop dph
                                    772 ;	eliminated unneeded push/pop b
                                    773 ;	eliminated unneeded push/pop acc
                                    774 ;------------------------------------------------------------
                                    775 ;Allocation info for local variables in function 'test'
                                    776 ;------------------------------------------------------------
                                    777 ;	main.c:83: void test() {
                                    778 ;	-----------------------------------------
                                    779 ;	 function test
                                    780 ;	-----------------------------------------
      000107                        781 _test:
                                    782 ;	main.c:84: }
      000107 22               [24]  783 	ret
                                    784 ;------------------------------------------------------------
                                    785 ;Allocation info for local variables in function 'main'
                                    786 ;------------------------------------------------------------
                                    787 ;i                         Allocated to registers r7 
                                    788 ;------------------------------------------------------------
                                    789 ;	main.c:89: void main() {
                                    790 ;	-----------------------------------------
                                    791 ;	 function main
                                    792 ;	-----------------------------------------
      000108                        793 _main:
                                    794 ;	main.c:92: test();
      000108 12 01 07         [24]  795 	lcall	_test
                                    796 ;	main.c:99: init_uart_timer1();
      00010B 12 00 B8         [24]  797 	lcall	_init_uart_timer1
                                    798 ;	main.c:103: while(1) {
      00010E                        799 00104$:
                                    800 ;	main.c:119: delay();
      00010E 12 00 F4         [24]  801 	lcall	_delay
                                    802 ;	main.c:120: for(i=0; i<18; i++) {
      000111 7F 00            [12]  803 	mov	r7,#0x00
      000113                        804 00106$:
                                    805 ;	main.c:121: write(msg[i]);
      000113 EF               [12]  806 	mov	a,r7
      000114 24 08            [12]  807 	add	a,#_msg
      000116 F9               [12]  808 	mov	r1,a
      000117 87 82            [24]  809 	mov	dpl,@r1
      000119 C0 07            [24]  810 	push	ar7
      00011B 12 00 AF         [24]  811 	lcall	_write
      00011E D0 07            [24]  812 	pop	ar7
                                    813 ;	main.c:120: for(i=0; i<18; i++) {
      000120 0F               [12]  814 	inc	r7
      000121 BF 12 00         [24]  815 	cjne	r7,#0x12,00134$
      000124                        816 00134$:
      000124 40 ED            [24]  817 	jc	00106$
                                    818 ;	main.c:124: delay();
      000126 12 00 F4         [24]  819 	lcall	_delay
                                    820 ;	main.c:125: for(i=0; i<18; i++) {
      000129 7F 00            [12]  821 	mov	r7,#0x00
      00012B                        822 00108$:
                                    823 ;	main.c:126: write(const_msg[i]);
      00012B EF               [12]  824 	mov	a,r7
      00012C 90 01 45         [24]  825 	mov	dptr,#_const_msg
      00012F 93               [24]  826 	movc	a,@a+dptr
      000130 F5 82            [12]  827 	mov	dpl,a
      000132 C0 07            [24]  828 	push	ar7
      000134 12 00 AF         [24]  829 	lcall	_write
      000137 D0 07            [24]  830 	pop	ar7
                                    831 ;	main.c:125: for(i=0; i<18; i++) {
      000139 0F               [12]  832 	inc	r7
      00013A BF 12 00         [24]  833 	cjne	r7,#0x12,00136$
      00013D                        834 00136$:
      00013D 40 EC            [24]  835 	jc	00108$
                                    836 ;	main.c:137: }
      00013F 80 CD            [24]  837 	sjmp	00104$
                                    838 	.area CSEG    (CODE)
                                    839 	.area CONST   (CODE)
      000145                        840 _const_msg:
      000145 43 4F 4D 4D 41 4E 44   841 	.ascii "COMMAND CONSOLE: "
             20 43 4F 4E 53 4F 4C
             45 3A 20
      000156 0A                     842 	.db 0x0a
      000157 00                     843 	.db 0x00
                                    844 	.area XINIT   (CODE)
                                    845 	.area CABS    (ABS,CODE)
