                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11418 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module Receiver
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer1_ISR
                                     13 	.globl _isr_timer0
                                     14 	.globl _serial_isr
                                     15 	.globl _TF2
                                     16 	.globl _EXF2
                                     17 	.globl _RCLK
                                     18 	.globl _TCLK
                                     19 	.globl _EXEN2
                                     20 	.globl _TR2
                                     21 	.globl _C_T2
                                     22 	.globl _CP_RL2
                                     23 	.globl _T2CON_7
                                     24 	.globl _T2CON_6
                                     25 	.globl _T2CON_5
                                     26 	.globl _T2CON_4
                                     27 	.globl _T2CON_3
                                     28 	.globl _T2CON_2
                                     29 	.globl _T2CON_1
                                     30 	.globl _T2CON_0
                                     31 	.globl _PT2
                                     32 	.globl _ET2
                                     33 	.globl _CY
                                     34 	.globl _AC
                                     35 	.globl _F0
                                     36 	.globl _RS1
                                     37 	.globl _RS0
                                     38 	.globl _OV
                                     39 	.globl _F1
                                     40 	.globl _P
                                     41 	.globl _PS
                                     42 	.globl _PT1
                                     43 	.globl _PX1
                                     44 	.globl _PT0
                                     45 	.globl _PX0
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _P1_7
                                     85 	.globl _P1_6
                                     86 	.globl _P1_5
                                     87 	.globl _P1_4
                                     88 	.globl _P1_3
                                     89 	.globl _P1_2
                                     90 	.globl _P1_1
                                     91 	.globl _P1_0
                                     92 	.globl _TF1
                                     93 	.globl _TR1
                                     94 	.globl _TF0
                                     95 	.globl _TR0
                                     96 	.globl _IE1
                                     97 	.globl _IT1
                                     98 	.globl _IE0
                                     99 	.globl _IT0
                                    100 	.globl _P0_7
                                    101 	.globl _P0_6
                                    102 	.globl _P0_5
                                    103 	.globl _P0_4
                                    104 	.globl _P0_3
                                    105 	.globl _P0_2
                                    106 	.globl _P0_1
                                    107 	.globl _P0_0
                                    108 	.globl _TH2
                                    109 	.globl _TL2
                                    110 	.globl _RCAP2H
                                    111 	.globl _RCAP2L
                                    112 	.globl _T2CON
                                    113 	.globl _B
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _IP
                                    117 	.globl _P3
                                    118 	.globl _IE
                                    119 	.globl _P2
                                    120 	.globl _SBUF
                                    121 	.globl _SCON
                                    122 	.globl _P1
                                    123 	.globl _TH1
                                    124 	.globl _TH0
                                    125 	.globl _TL1
                                    126 	.globl _TL0
                                    127 	.globl _TMOD
                                    128 	.globl _TCON
                                    129 	.globl _PCON
                                    130 	.globl _DPH
                                    131 	.globl _DPL
                                    132 	.globl _SP
                                    133 	.globl _P0
                                    134 	.globl _auto_flag
                                    135 	.globl _ac_state
                                    136 	.globl _off
                                    137 	.globl _state
                                    138 	.globl _dim1_val2
                                    139 	.globl _dim1_val
                                    140 	.globl _dim_val2
                                    141 	.globl _dim_val
                                    142 	.globl _time_delay
                                    143 	.globl _timerCount2
                                    144 	.globl _serialCount
                                    145 	.globl _timerCount
                                    146 	.globl _data_r
                                    147 	.globl _start
                                    148 	.globl _startup
                                    149 	.globl _delay
                                    150 	.globl _UART_Init
                                    151 	.globl _Transmit_data
                                    152 	.globl _handshake
                                    153 	.globl _check_data
                                    154 	.globl _InitTimer0
                                    155 	.globl _check_switches
                                    156 ;--------------------------------------------------------
                                    157 ; special function registers
                                    158 ;--------------------------------------------------------
                                    159 	.area RSEG    (ABS,DATA)
      000000                        160 	.org 0x0000
                           000080   161 _P0	=	0x0080
                           000081   162 _SP	=	0x0081
                           000082   163 _DPL	=	0x0082
                           000083   164 _DPH	=	0x0083
                           000087   165 _PCON	=	0x0087
                           000088   166 _TCON	=	0x0088
                           000089   167 _TMOD	=	0x0089
                           00008A   168 _TL0	=	0x008a
                           00008B   169 _TL1	=	0x008b
                           00008C   170 _TH0	=	0x008c
                           00008D   171 _TH1	=	0x008d
                           000090   172 _P1	=	0x0090
                           000098   173 _SCON	=	0x0098
                           000099   174 _SBUF	=	0x0099
                           0000A0   175 _P2	=	0x00a0
                           0000A8   176 _IE	=	0x00a8
                           0000B0   177 _P3	=	0x00b0
                           0000B8   178 _IP	=	0x00b8
                           0000D0   179 _PSW	=	0x00d0
                           0000E0   180 _ACC	=	0x00e0
                           0000F0   181 _B	=	0x00f0
                           0000C8   182 _T2CON	=	0x00c8
                           0000CA   183 _RCAP2L	=	0x00ca
                           0000CB   184 _RCAP2H	=	0x00cb
                           0000CC   185 _TL2	=	0x00cc
                           0000CD   186 _TH2	=	0x00cd
                                    187 ;--------------------------------------------------------
                                    188 ; special function bits
                                    189 ;--------------------------------------------------------
                                    190 	.area RSEG    (ABS,DATA)
      000000                        191 	.org 0x0000
                           000080   192 _P0_0	=	0x0080
                           000081   193 _P0_1	=	0x0081
                           000082   194 _P0_2	=	0x0082
                           000083   195 _P0_3	=	0x0083
                           000084   196 _P0_4	=	0x0084
                           000085   197 _P0_5	=	0x0085
                           000086   198 _P0_6	=	0x0086
                           000087   199 _P0_7	=	0x0087
                           000088   200 _IT0	=	0x0088
                           000089   201 _IE0	=	0x0089
                           00008A   202 _IT1	=	0x008a
                           00008B   203 _IE1	=	0x008b
                           00008C   204 _TR0	=	0x008c
                           00008D   205 _TF0	=	0x008d
                           00008E   206 _TR1	=	0x008e
                           00008F   207 _TF1	=	0x008f
                           000090   208 _P1_0	=	0x0090
                           000091   209 _P1_1	=	0x0091
                           000092   210 _P1_2	=	0x0092
                           000093   211 _P1_3	=	0x0093
                           000094   212 _P1_4	=	0x0094
                           000095   213 _P1_5	=	0x0095
                           000096   214 _P1_6	=	0x0096
                           000097   215 _P1_7	=	0x0097
                           000098   216 _RI	=	0x0098
                           000099   217 _TI	=	0x0099
                           00009A   218 _RB8	=	0x009a
                           00009B   219 _TB8	=	0x009b
                           00009C   220 _REN	=	0x009c
                           00009D   221 _SM2	=	0x009d
                           00009E   222 _SM1	=	0x009e
                           00009F   223 _SM0	=	0x009f
                           0000A0   224 _P2_0	=	0x00a0
                           0000A1   225 _P2_1	=	0x00a1
                           0000A2   226 _P2_2	=	0x00a2
                           0000A3   227 _P2_3	=	0x00a3
                           0000A4   228 _P2_4	=	0x00a4
                           0000A5   229 _P2_5	=	0x00a5
                           0000A6   230 _P2_6	=	0x00a6
                           0000A7   231 _P2_7	=	0x00a7
                           0000A8   232 _EX0	=	0x00a8
                           0000A9   233 _ET0	=	0x00a9
                           0000AA   234 _EX1	=	0x00aa
                           0000AB   235 _ET1	=	0x00ab
                           0000AC   236 _ES	=	0x00ac
                           0000AF   237 _EA	=	0x00af
                           0000B0   238 _P3_0	=	0x00b0
                           0000B1   239 _P3_1	=	0x00b1
                           0000B2   240 _P3_2	=	0x00b2
                           0000B3   241 _P3_3	=	0x00b3
                           0000B4   242 _P3_4	=	0x00b4
                           0000B5   243 _P3_5	=	0x00b5
                           0000B6   244 _P3_6	=	0x00b6
                           0000B7   245 _P3_7	=	0x00b7
                           0000B0   246 _RXD	=	0x00b0
                           0000B1   247 _TXD	=	0x00b1
                           0000B2   248 _INT0	=	0x00b2
                           0000B3   249 _INT1	=	0x00b3
                           0000B4   250 _T0	=	0x00b4
                           0000B5   251 _T1	=	0x00b5
                           0000B6   252 _WR	=	0x00b6
                           0000B7   253 _RD	=	0x00b7
                           0000B8   254 _PX0	=	0x00b8
                           0000B9   255 _PT0	=	0x00b9
                           0000BA   256 _PX1	=	0x00ba
                           0000BB   257 _PT1	=	0x00bb
                           0000BC   258 _PS	=	0x00bc
                           0000D0   259 _P	=	0x00d0
                           0000D1   260 _F1	=	0x00d1
                           0000D2   261 _OV	=	0x00d2
                           0000D3   262 _RS0	=	0x00d3
                           0000D4   263 _RS1	=	0x00d4
                           0000D5   264 _F0	=	0x00d5
                           0000D6   265 _AC	=	0x00d6
                           0000D7   266 _CY	=	0x00d7
                           0000AD   267 _ET2	=	0x00ad
                           0000BD   268 _PT2	=	0x00bd
                           0000C8   269 _T2CON_0	=	0x00c8
                           0000C9   270 _T2CON_1	=	0x00c9
                           0000CA   271 _T2CON_2	=	0x00ca
                           0000CB   272 _T2CON_3	=	0x00cb
                           0000CC   273 _T2CON_4	=	0x00cc
                           0000CD   274 _T2CON_5	=	0x00cd
                           0000CE   275 _T2CON_6	=	0x00ce
                           0000CF   276 _T2CON_7	=	0x00cf
                           0000C8   277 _CP_RL2	=	0x00c8
                           0000C9   278 _C_T2	=	0x00c9
                           0000CA   279 _TR2	=	0x00ca
                           0000CB   280 _EXEN2	=	0x00cb
                           0000CC   281 _TCLK	=	0x00cc
                           0000CD   282 _RCLK	=	0x00cd
                           0000CE   283 _EXF2	=	0x00ce
                           0000CF   284 _TF2	=	0x00cf
                                    285 ;--------------------------------------------------------
                                    286 ; overlayable register banks
                                    287 ;--------------------------------------------------------
                                    288 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        289 	.ds 8
                                    290 ;--------------------------------------------------------
                                    291 ; overlayable bit register bank
                                    292 ;--------------------------------------------------------
                                    293 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        294 bits:
      000021                        295 	.ds 1
                           008000   296 	b0 = bits[0]
                           008100   297 	b1 = bits[1]
                           008200   298 	b2 = bits[2]
                           008300   299 	b3 = bits[3]
                           008400   300 	b4 = bits[4]
                           008500   301 	b5 = bits[5]
                           008600   302 	b6 = bits[6]
                           008700   303 	b7 = bits[7]
                                    304 ;--------------------------------------------------------
                                    305 ; internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area DSEG    (DATA)
      000008                        308 _start::
      000008                        309 	.ds 1
      000009                        310 _data_r::
      000009                        311 	.ds 1
      00000A                        312 _timerCount::
      00000A                        313 	.ds 2
      00000C                        314 _serialCount::
      00000C                        315 	.ds 2
      00000E                        316 _timerCount2::
      00000E                        317 	.ds 2
      000010                        318 _time_delay::
      000010                        319 	.ds 2
      000012                        320 _dim_val::
      000012                        321 	.ds 2
      000014                        322 _dim_val2::
      000014                        323 	.ds 2
      000016                        324 _dim1_val::
      000016                        325 	.ds 2
      000018                        326 _dim1_val2::
      000018                        327 	.ds 2
      00001A                        328 _state::
      00001A                        329 	.ds 2
      00001C                        330 _off::
      00001C                        331 	.ds 2
      00001E                        332 _ac_state::
      00001E                        333 	.ds 1
                                    334 ;--------------------------------------------------------
                                    335 ; overlayable items in internal ram 
                                    336 ;--------------------------------------------------------
                                    337 	.area	OSEG    (OVR,DATA)
                                    338 	.area	OSEG    (OVR,DATA)
                                    339 ;--------------------------------------------------------
                                    340 ; Stack segment in internal ram 
                                    341 ;--------------------------------------------------------
                                    342 	.area	SSEG
      000024                        343 __start__stack:
      000024                        344 	.ds	1
                                    345 
                                    346 ;--------------------------------------------------------
                                    347 ; indirectly addressable internal ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area ISEG    (DATA)
                                    350 ;--------------------------------------------------------
                                    351 ; absolute internal ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area IABS    (ABS,DATA)
                                    354 	.area IABS    (ABS,DATA)
                                    355 ;--------------------------------------------------------
                                    356 ; bit data
                                    357 ;--------------------------------------------------------
                                    358 	.area BSEG    (BIT)
      000000                        359 _auto_flag::
      000000                        360 	.ds 1
                                    361 ;--------------------------------------------------------
                                    362 ; paged external ram data
                                    363 ;--------------------------------------------------------
                                    364 	.area PSEG    (PAG,XDATA)
                                    365 ;--------------------------------------------------------
                                    366 ; external ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area XSEG    (XDATA)
                                    369 ;--------------------------------------------------------
                                    370 ; absolute external ram data
                                    371 ;--------------------------------------------------------
                                    372 	.area XABS    (ABS,XDATA)
                                    373 ;--------------------------------------------------------
                                    374 ; external initialized ram data
                                    375 ;--------------------------------------------------------
                                    376 	.area XISEG   (XDATA)
                                    377 	.area HOME    (CODE)
                                    378 	.area GSINIT0 (CODE)
                                    379 	.area GSINIT1 (CODE)
                                    380 	.area GSINIT2 (CODE)
                                    381 	.area GSINIT3 (CODE)
                                    382 	.area GSINIT4 (CODE)
                                    383 	.area GSINIT5 (CODE)
                                    384 	.area GSINIT  (CODE)
                                    385 	.area GSFINAL (CODE)
                                    386 	.area CSEG    (CODE)
                                    387 ;--------------------------------------------------------
                                    388 ; interrupt vector 
                                    389 ;--------------------------------------------------------
                                    390 	.area HOME    (CODE)
      000000                        391 __interrupt_vect:
      000000 02 00 31         [24]  392 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  393 	reti
      000004                        394 	.ds	7
      00000B 02 00 DA         [24]  395 	ljmp	_isr_timer0
      00000E                        396 	.ds	5
      000013 32               [24]  397 	reti
      000014                        398 	.ds	7
      00001B 32               [24]  399 	reti
      00001C                        400 	.ds	7
      000023 02 00 B6         [24]  401 	ljmp	_serial_isr
      000026                        402 	.ds	5
      00002B 02 03 02         [24]  403 	ljmp	_timer1_ISR
                                    404 ;--------------------------------------------------------
                                    405 ; global & static initialisations
                                    406 ;--------------------------------------------------------
                                    407 	.area HOME    (CODE)
                                    408 	.area GSINIT  (CODE)
                                    409 	.area GSFINAL (CODE)
                                    410 	.area GSINIT  (CODE)
                                    411 	.globl __sdcc_gsinit_startup
                                    412 	.globl __sdcc_program_startup
                                    413 	.globl __start__stack
                                    414 	.globl __mcs51_genXINIT
                                    415 	.globl __mcs51_genXRAMCLEAR
                                    416 	.globl __mcs51_genRAMCLEAR
                                    417 ;	Receiver.c:40: char start=0;
      00008A 75 08 00         [24]  418 	mov	_start,#0x00
                                    419 ;	Receiver.c:42: volatile int timerCount = 0;
      00008D E4               [12]  420 	clr	a
      00008E F5 0A            [12]  421 	mov	_timerCount,a
      000090 F5 0B            [12]  422 	mov	(_timerCount + 1),a
                                    423 ;	Receiver.c:43: volatile int serialCount = 0;
      000092 F5 0C            [12]  424 	mov	_serialCount,a
      000094 F5 0D            [12]  425 	mov	(_serialCount + 1),a
                                    426 ;	Receiver.c:44: volatile int timerCount2 = 0;
      000096 F5 0E            [12]  427 	mov	_timerCount2,a
      000098 F5 0F            [12]  428 	mov	(_timerCount2 + 1),a
                                    429 ;	Receiver.c:45: volatile int time_delay = 15;
      00009A 75 10 0F         [24]  430 	mov	_time_delay,#0x0f
                                    431 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      00009D F5 11            [12]  432 	mov	(_time_delay + 1),a
                                    433 ;	Receiver.c:46: volatile int dim_val = 1;
      00009F 75 12 01         [24]  434 	mov	_dim_val,#0x01
                                    435 ;	1-genFromRTrack replaced	mov	(_dim_val + 1),#0x00
      0000A2 F5 13            [12]  436 	mov	(_dim_val + 1),a
                                    437 ;	Receiver.c:47: volatile int dim_val2 = 50;
      0000A4 75 14 32         [24]  438 	mov	_dim_val2,#0x32
                                    439 ;	1-genFromRTrack replaced	mov	(_dim_val2 + 1),#0x00
      0000A7 F5 15            [12]  440 	mov	(_dim_val2 + 1),a
                                    441 ;	Receiver.c:48: volatile int dim1_val = 1;
      0000A9 75 16 01         [24]  442 	mov	_dim1_val,#0x01
                                    443 ;	1-genFromRTrack replaced	mov	(_dim1_val + 1),#0x00
      0000AC F5 17            [12]  444 	mov	(_dim1_val + 1),a
                                    445 ;	Receiver.c:49: volatile int dim1_val2 = 50;
      0000AE 75 18 32         [24]  446 	mov	_dim1_val2,#0x32
                                    447 ;	1-genFromRTrack replaced	mov	(_dim1_val2 + 1),#0x00
      0000B1 F5 19            [12]  448 	mov	(_dim1_val2 + 1),a
                                    449 	.area GSFINAL (CODE)
      0000B3 02 00 2E         [24]  450 	ljmp	__sdcc_program_startup
                                    451 ;--------------------------------------------------------
                                    452 ; Home
                                    453 ;--------------------------------------------------------
                                    454 	.area HOME    (CODE)
                                    455 	.area HOME    (CODE)
      00002E                        456 __sdcc_program_startup:
      00002E 02 05 60         [24]  457 	ljmp	_main
                                    458 ;	return from main will return to caller
                                    459 ;--------------------------------------------------------
                                    460 ; code
                                    461 ;--------------------------------------------------------
                                    462 	.area CSEG    (CODE)
                                    463 ;------------------------------------------------------------
                                    464 ;Allocation info for local variables in function 'serial_isr'
                                    465 ;------------------------------------------------------------
                                    466 ;	Receiver.c:54: void serial_isr() __interrupt 4 
                                    467 ;	-----------------------------------------
                                    468 ;	 function serial_isr
                                    469 ;	-----------------------------------------
      0000B6                        470 _serial_isr:
                           000007   471 	ar7 = 0x07
                           000006   472 	ar6 = 0x06
                           000005   473 	ar5 = 0x05
                           000004   474 	ar4 = 0x04
                           000003   475 	ar3 = 0x03
                           000002   476 	ar2 = 0x02
                           000001   477 	ar1 = 0x01
                           000000   478 	ar0 = 0x00
      0000B6 C0 E0            [24]  479 	push	acc
      0000B8 C0 D0            [24]  480 	push	psw
                                    481 ;	Receiver.c:56: if(RI == 1)
      0000BA 30 98 13         [24]  482 	jnb	_RI,00106$
                                    483 ;	Receiver.c:58: data_r = SBUF; // Copy the received char
      0000BD 85 99 09         [24]  484 	mov	_data_r,_SBUF
                                    485 ;	Receiver.c:59: RI = 0;              // Clear the Receive interrupt flag
                                    486 ;	assignBit
      0000C0 C2 98            [12]  487 	clr	_RI
                                    488 ;	Receiver.c:60: if(data_r!='y')serialCount=0;
      0000C2 74 79            [12]  489 	mov	a,#0x79
      0000C4 B5 09 02         [24]  490 	cjne	a,_data_r,00123$
      0000C7 80 0C            [24]  491 	sjmp	00108$
      0000C9                        492 00123$:
      0000C9 E4               [12]  493 	clr	a
      0000CA F5 0C            [12]  494 	mov	_serialCount,a
      0000CC F5 0D            [12]  495 	mov	(_serialCount + 1),a
      0000CE 80 05            [24]  496 	sjmp	00108$
      0000D0                        497 00106$:
                                    498 ;	Receiver.c:62: else if(TI == 1)
                                    499 ;	Receiver.c:64: TI = 0;              // Clear the Transmit interrupt flag
                                    500 ;	assignBit
      0000D0 10 99 02         [24]  501 	jbc	_TI,00124$
      0000D3 80 00            [24]  502 	sjmp	00108$
      0000D5                        503 00124$:
      0000D5                        504 00108$:
                                    505 ;	Receiver.c:66: }
      0000D5 D0 D0            [24]  506 	pop	psw
      0000D7 D0 E0            [24]  507 	pop	acc
      0000D9 32               [24]  508 	reti
                                    509 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    510 ;	eliminated unneeded push/pop dpl
                                    511 ;	eliminated unneeded push/pop dph
                                    512 ;	eliminated unneeded push/pop b
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'isr_timer0'
                                    515 ;------------------------------------------------------------
                                    516 ;	Receiver.c:68: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
                                    517 ;	-----------------------------------------
                                    518 ;	 function isr_timer0
                                    519 ;	-----------------------------------------
      0000DA                        520 _isr_timer0:
      0000DA C0 21            [24]  521 	push	bits
      0000DC C0 E0            [24]  522 	push	acc
      0000DE C0 F0            [24]  523 	push	b
      0000E0 C0 82            [24]  524 	push	dpl
      0000E2 C0 83            [24]  525 	push	dph
      0000E4 C0 07            [24]  526 	push	(0+7)
      0000E6 C0 06            [24]  527 	push	(0+6)
      0000E8 C0 05            [24]  528 	push	(0+5)
      0000EA C0 04            [24]  529 	push	(0+4)
      0000EC C0 03            [24]  530 	push	(0+3)
      0000EE C0 02            [24]  531 	push	(0+2)
      0000F0 C0 01            [24]  532 	push	(0+1)
      0000F2 C0 00            [24]  533 	push	(0+0)
      0000F4 C0 D0            [24]  534 	push	psw
      0000F6 75 D0 00         [24]  535 	mov	psw,#0x00
                                    536 ;	Receiver.c:70: TH0  = 0Xee;         // ReLoad the timer value for 5ms
      0000F9 75 8C EE         [24]  537 	mov	_TH0,#0xee
                                    538 ;	Receiver.c:71: TL0  = 0X00;
      0000FC 75 8A 00         [24]  539 	mov	_TL0,#0x00
                                    540 ;	Receiver.c:72: timerCount++;
      0000FF AE 0A            [24]  541 	mov	r6,_timerCount
      000101 AF 0B            [24]  542 	mov	r7,(_timerCount + 1)
      000103 74 01            [12]  543 	mov	a,#0x01
      000105 2E               [12]  544 	add	a,r6
      000106 F5 0A            [12]  545 	mov	_timerCount,a
      000108 E4               [12]  546 	clr	a
      000109 3F               [12]  547 	addc	a,r7
      00010A F5 0B            [12]  548 	mov	(_timerCount + 1),a
                                    549 ;	Receiver.c:74: if(state!=20)
      00010C 74 14            [12]  550 	mov	a,#0x14
      00010E B5 1A 07         [24]  551 	cjne	a,_state,00240$
      000111 E4               [12]  552 	clr	a
      000112 B5 1B 03         [24]  553 	cjne	a,(_state + 1),00240$
      000115 02 02 E5         [24]  554 	ljmp	00158$
      000118                        555 00240$:
                                    556 ;	Receiver.c:76: if(timerCount < (time_delay*30)) // count for LED-ON delay
      000118 85 10 22         [24]  557 	mov	__mulint_PARM_2,_time_delay
      00011B 85 11 23         [24]  558 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      00011E 90 00 1E         [24]  559 	mov	dptr,#0x001e
      000121 12 08 B6         [24]  560 	lcall	__mulint
      000124 AE 82            [24]  561 	mov	r6,dpl
      000126 AF 83            [24]  562 	mov	r7,dph
      000128 C3               [12]  563 	clr	c
      000129 E5 0A            [12]  564 	mov	a,_timerCount
      00012B 9E               [12]  565 	subb	a,r6
      00012C E5 0B            [12]  566 	mov	a,(_timerCount + 1)
      00012E 64 80            [12]  567 	xrl	a,#0x80
      000130 8F F0            [24]  568 	mov	b,r7
      000132 63 F0 80         [24]  569 	xrl	b,#0x80
      000135 95 F0            [12]  570 	subb	a,b
      000137 40 03            [24]  571 	jc	00241$
      000139 02 02 2F         [24]  572 	ljmp	00154$
      00013C                        573 00241$:
                                    574 ;	Receiver.c:78: switch(state)
      00013C E5 1B            [12]  575 	mov	a,(_state + 1)
      00013E 30 E7 03         [24]  576 	jnb	acc.7,00242$
      000141 02 02 E5         [24]  577 	ljmp	00158$
      000144                        578 00242$:
      000144 C3               [12]  579 	clr	c
      000145 74 09            [12]  580 	mov	a,#0x09
      000147 95 1A            [12]  581 	subb	a,_state
      000149 74 80            [12]  582 	mov	a,#(0x00 ^ 0x80)
      00014B 85 1B F0         [24]  583 	mov	b,(_state + 1)
      00014E 63 F0 80         [24]  584 	xrl	b,#0x80
      000151 95 F0            [12]  585 	subb	a,b
      000153 50 03            [24]  586 	jnc	00243$
      000155 02 02 E5         [24]  587 	ljmp	00158$
      000158                        588 00243$:
      000158 E5 1A            [12]  589 	mov	a,_state
      00015A 24 0B            [12]  590 	add	a,#(00244$-3-.)
      00015C 83               [24]  591 	movc	a,@a+pc
      00015D F5 82            [12]  592 	mov	dpl,a
      00015F E5 1A            [12]  593 	mov	a,_state
      000161 24 0E            [12]  594 	add	a,#(00245$-3-.)
      000163 83               [24]  595 	movc	a,@a+pc
      000164 F5 83            [12]  596 	mov	dph,a
      000166 E4               [12]  597 	clr	a
      000167 73               [24]  598 	jmp	@a+dptr
      000168                        599 00244$:
      000168 7C                     600 	.db	00101$
      000169 92                     601 	.db	00104$
      00016A A5                     602 	.db	00107$
      00016B B6                     603 	.db	00110$
      00016C C7                     604 	.db	00113$
      00016D D8                     605 	.db	00116$
      00016E E9                     606 	.db	00119$
      00016F FC                     607 	.db	00122$
      000170 05                     608 	.db	00123$
      000171 1A                     609 	.db	00126$
      000172                        610 00245$:
      000172 01                     611 	.db	00101$>>8
      000173 01                     612 	.db	00104$>>8
      000174 01                     613 	.db	00107$>>8
      000175 01                     614 	.db	00110$>>8
      000176 01                     615 	.db	00113$>>8
      000177 01                     616 	.db	00116$>>8
      000178 01                     617 	.db	00119$>>8
      000179 01                     618 	.db	00122$>>8
      00017A 02                     619 	.db	00123$>>8
      00017B 02                     620 	.db	00126$>>8
                                    621 ;	Receiver.c:80: case 0:up_led_main =1;center_led =0;down_led_main=1;									
      00017C                        622 00101$:
                                    623 ;	assignBit
      00017C D2 81            [12]  624 	setb	_P0_1
                                    625 ;	assignBit
      00017E C2 80            [12]  626 	clr	_P0_0
                                    627 ;	assignBit
      000180 D2 A6            [12]  628 	setb	_P2_6
                                    629 ;	Receiver.c:81: if(auto_flag)auto_led=1;
      000182 30 00 02         [24]  630 	jnb	_auto_flag,00103$
                                    631 ;	assignBit
      000185 D2 A1            [12]  632 	setb	_P2_1
      000187                        633 00103$:
                                    634 ;	Receiver.c:82: up_led=0;down_led=0;main_out1=1;main_out2=1;
                                    635 ;	assignBit
      000187 C2 A7            [12]  636 	clr	_P2_7
                                    637 ;	assignBit
      000189 C2 A4            [12]  638 	clr	_P2_4
                                    639 ;	assignBit
      00018B D2 B6            [12]  640 	setb	_P3_6
                                    641 ;	assignBit
      00018D D2 B7            [12]  642 	setb	_P3_7
                                    643 ;	Receiver.c:83: break;	
      00018F 02 02 E5         [24]  644 	ljmp	00158$
                                    645 ;	Receiver.c:84: case 1:up_led_main =1;center_led =0;down_led_main=0;
      000192                        646 00104$:
                                    647 ;	assignBit
      000192 D2 81            [12]  648 	setb	_P0_1
                                    649 ;	assignBit
      000194 C2 80            [12]  650 	clr	_P0_0
                                    651 ;	assignBit
      000196 C2 A6            [12]  652 	clr	_P2_6
                                    653 ;	Receiver.c:86: if(auto_flag)
      000198 20 00 03         [24]  654 	jb	_auto_flag,00247$
      00019B 02 02 E5         [24]  655 	ljmp	00158$
      00019E                        656 00247$:
                                    657 ;	Receiver.c:87: {main_out1=0;up_led=1;}
                                    658 ;	assignBit
      00019E C2 B6            [12]  659 	clr	_P3_6
                                    660 ;	assignBit
      0001A0 D2 A7            [12]  661 	setb	_P2_7
                                    662 ;	Receiver.c:88: break;
      0001A2 02 02 E5         [24]  663 	ljmp	00158$
                                    664 ;	Receiver.c:89: case 2:up_led_main =1;center_led =0;down_led_main=0;
      0001A5                        665 00107$:
                                    666 ;	assignBit
      0001A5 D2 81            [12]  667 	setb	_P0_1
                                    668 ;	assignBit
      0001A7 C2 80            [12]  669 	clr	_P0_0
                                    670 ;	assignBit
      0001A9 C2 A6            [12]  671 	clr	_P2_6
                                    672 ;	Receiver.c:91: if(auto_flag)
      0001AB 20 00 03         [24]  673 	jb	_auto_flag,00248$
      0001AE 02 02 E5         [24]  674 	ljmp	00158$
      0001B1                        675 00248$:
                                    676 ;	Receiver.c:93: up_led=1;}
                                    677 ;	assignBit
      0001B1 D2 A7            [12]  678 	setb	_P2_7
                                    679 ;	Receiver.c:94: break;
      0001B3 02 02 E5         [24]  680 	ljmp	00158$
                                    681 ;	Receiver.c:95: case 3:up_led_main =1;center_led =1;down_led_main=0;
      0001B6                        682 00110$:
                                    683 ;	assignBit
      0001B6 D2 81            [12]  684 	setb	_P0_1
                                    685 ;	assignBit
      0001B8 D2 80            [12]  686 	setb	_P0_0
                                    687 ;	assignBit
      0001BA C2 A6            [12]  688 	clr	_P2_6
                                    689 ;	Receiver.c:97: if(auto_flag)
      0001BC 20 00 03         [24]  690 	jb	_auto_flag,00249$
      0001BF 02 02 E5         [24]  691 	ljmp	00158$
      0001C2                        692 00249$:
                                    693 ;	Receiver.c:99: up_led=1;}
                                    694 ;	assignBit
      0001C2 D2 A7            [12]  695 	setb	_P2_7
                                    696 ;	Receiver.c:100: break;
      0001C4 02 02 E5         [24]  697 	ljmp	00158$
                                    698 ;	Receiver.c:101: case 4:	up_led_main =0;center_led =1;down_led_main=1;
      0001C7                        699 00113$:
                                    700 ;	assignBit
      0001C7 C2 81            [12]  701 	clr	_P0_1
                                    702 ;	assignBit
      0001C9 D2 80            [12]  703 	setb	_P0_0
                                    704 ;	assignBit
      0001CB D2 A6            [12]  705 	setb	_P2_6
                                    706 ;	Receiver.c:102: if(auto_flag)
      0001CD 20 00 03         [24]  707 	jb	_auto_flag,00250$
      0001D0 02 02 E5         [24]  708 	ljmp	00158$
      0001D3                        709 00250$:
                                    710 ;	Receiver.c:104: down_led=1;}
                                    711 ;	assignBit
      0001D3 D2 A4            [12]  712 	setb	_P2_4
                                    713 ;	Receiver.c:105: break;
      0001D5 02 02 E5         [24]  714 	ljmp	00158$
                                    715 ;	Receiver.c:106: case 5:up_led_main =0;center_led =0;down_led_main=1;
      0001D8                        716 00116$:
                                    717 ;	assignBit
      0001D8 C2 81            [12]  718 	clr	_P0_1
                                    719 ;	assignBit
      0001DA C2 80            [12]  720 	clr	_P0_0
                                    721 ;	assignBit
      0001DC D2 A6            [12]  722 	setb	_P2_6
                                    723 ;	Receiver.c:108: if(auto_flag)
      0001DE 20 00 03         [24]  724 	jb	_auto_flag,00251$
      0001E1 02 02 E5         [24]  725 	ljmp	00158$
      0001E4                        726 00251$:
                                    727 ;	Receiver.c:110: down_led=1;}
                                    728 ;	assignBit
      0001E4 D2 A4            [12]  729 	setb	_P2_4
                                    730 ;	Receiver.c:111: break;
      0001E6 02 02 E5         [24]  731 	ljmp	00158$
                                    732 ;	Receiver.c:112: case 6:	up_led_main =0;center_led =0;down_led_main=1;		
      0001E9                        733 00119$:
                                    734 ;	assignBit
      0001E9 C2 81            [12]  735 	clr	_P0_1
                                    736 ;	assignBit
      0001EB C2 80            [12]  737 	clr	_P0_0
                                    738 ;	assignBit
      0001ED D2 A6            [12]  739 	setb	_P2_6
                                    740 ;	Receiver.c:113: if(auto_flag)
      0001EF 20 00 03         [24]  741 	jb	_auto_flag,00252$
      0001F2 02 02 E5         [24]  742 	ljmp	00158$
      0001F5                        743 00252$:
                                    744 ;	Receiver.c:114: {main_out2=0;down_led=1;}
                                    745 ;	assignBit
      0001F5 C2 B7            [12]  746 	clr	_P3_7
                                    747 ;	assignBit
      0001F7 D2 A4            [12]  748 	setb	_P2_4
                                    749 ;	Receiver.c:115: break;
      0001F9 02 02 E5         [24]  750 	ljmp	00158$
                                    751 ;	Receiver.c:116: case 7:up_led_main =0;center_led =1;down_led_main=1;
      0001FC                        752 00122$:
                                    753 ;	assignBit
      0001FC C2 81            [12]  754 	clr	_P0_1
                                    755 ;	assignBit
      0001FE D2 80            [12]  756 	setb	_P0_0
                                    757 ;	assignBit
      000200 D2 A6            [12]  758 	setb	_P2_6
                                    759 ;	Receiver.c:117: break;
      000202 02 02 E5         [24]  760 	ljmp	00158$
                                    761 ;	Receiver.c:119: case 8:up_led_main =1;center_led =0;down_led_main=0;
      000205                        762 00123$:
                                    763 ;	assignBit
      000205 D2 81            [12]  764 	setb	_P0_1
                                    765 ;	assignBit
      000207 C2 80            [12]  766 	clr	_P0_0
                                    767 ;	assignBit
      000209 C2 A6            [12]  768 	clr	_P2_6
                                    769 ;	Receiver.c:120: main_out1=1;main_out2=1;
                                    770 ;	assignBit
      00020B D2 B6            [12]  771 	setb	_P3_6
                                    772 ;	assignBit
      00020D D2 B7            [12]  773 	setb	_P3_7
                                    774 ;	Receiver.c:121: if(auto_flag)
      00020F 20 00 03         [24]  775 	jb	_auto_flag,00253$
      000212 02 02 E5         [24]  776 	ljmp	00158$
      000215                        777 00253$:
                                    778 ;	Receiver.c:122: up_led=1;
                                    779 ;	assignBit
      000215 D2 A7            [12]  780 	setb	_P2_7
                                    781 ;	Receiver.c:123: break;
      000217 02 02 E5         [24]  782 	ljmp	00158$
                                    783 ;	Receiver.c:125: case 9:	up_led_main =0;center_led =0;down_led_main=1;
      00021A                        784 00126$:
                                    785 ;	assignBit
      00021A C2 81            [12]  786 	clr	_P0_1
                                    787 ;	assignBit
      00021C C2 80            [12]  788 	clr	_P0_0
                                    789 ;	assignBit
      00021E D2 A6            [12]  790 	setb	_P2_6
                                    791 ;	Receiver.c:126: main_out1=1;main_out2=1;
                                    792 ;	assignBit
      000220 D2 B6            [12]  793 	setb	_P3_6
                                    794 ;	assignBit
      000222 D2 B7            [12]  795 	setb	_P3_7
                                    796 ;	Receiver.c:127: if(auto_flag)
      000224 20 00 03         [24]  797 	jb	_auto_flag,00254$
      000227 02 02 E5         [24]  798 	ljmp	00158$
      00022A                        799 00254$:
                                    800 ;	Receiver.c:128: down_led=1;
                                    801 ;	assignBit
      00022A D2 A4            [12]  802 	setb	_P2_4
                                    803 ;	Receiver.c:129: break;
      00022C 02 02 E5         [24]  804 	ljmp	00158$
                                    805 ;	Receiver.c:131: }	
      00022F                        806 00154$:
                                    807 ;	Receiver.c:135: else if((timerCount > time_delay) &&(timerCount<time_delay*60)) // count for LED-ON delay
      00022F C3               [12]  808 	clr	c
      000230 E5 10            [12]  809 	mov	a,_time_delay
      000232 95 0A            [12]  810 	subb	a,_timerCount
      000234 E5 11            [12]  811 	mov	a,(_time_delay + 1)
      000236 64 80            [12]  812 	xrl	a,#0x80
      000238 85 0B F0         [24]  813 	mov	b,(_timerCount + 1)
      00023B 63 F0 80         [24]  814 	xrl	b,#0x80
      00023E 95 F0            [12]  815 	subb	a,b
      000240 40 03            [24]  816 	jc	00255$
      000242 02 02 E0         [24]  817 	ljmp	00150$
      000245                        818 00255$:
      000245 85 10 22         [24]  819 	mov	__mulint_PARM_2,_time_delay
      000248 85 11 23         [24]  820 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      00024B 90 00 3C         [24]  821 	mov	dptr,#0x003c
      00024E 12 08 B6         [24]  822 	lcall	__mulint
      000251 AE 82            [24]  823 	mov	r6,dpl
      000253 AF 83            [24]  824 	mov	r7,dph
      000255 C3               [12]  825 	clr	c
      000256 E5 0A            [12]  826 	mov	a,_timerCount
      000258 9E               [12]  827 	subb	a,r6
      000259 E5 0B            [12]  828 	mov	a,(_timerCount + 1)
      00025B 64 80            [12]  829 	xrl	a,#0x80
      00025D 8F F0            [24]  830 	mov	b,r7
      00025F 63 F0 80         [24]  831 	xrl	b,#0x80
      000262 95 F0            [12]  832 	subb	a,b
      000264 40 03            [24]  833 	jc	00256$
      000266 02 02 E0         [24]  834 	ljmp	00150$
      000269                        835 00256$:
                                    836 ;	Receiver.c:137: switch(state)
      000269 E5 1B            [12]  837 	mov	a,(_state + 1)
      00026B 30 E7 03         [24]  838 	jnb	acc.7,00257$
      00026E 02 02 E5         [24]  839 	ljmp	00158$
      000271                        840 00257$:
      000271 C3               [12]  841 	clr	c
      000272 74 09            [12]  842 	mov	a,#0x09
      000274 95 1A            [12]  843 	subb	a,_state
      000276 74 80            [12]  844 	mov	a,#(0x00 ^ 0x80)
      000278 85 1B F0         [24]  845 	mov	b,(_state + 1)
      00027B 63 F0 80         [24]  846 	xrl	b,#0x80
      00027E 95 F0            [12]  847 	subb	a,b
      000280 50 03            [24]  848 	jnc	00258$
      000282 02 02 E5         [24]  849 	ljmp	00158$
      000285                        850 00258$:
      000285 E5 1A            [12]  851 	mov	a,_state
      000287 24 0B            [12]  852 	add	a,#(00259$-3-.)
      000289 83               [24]  853 	movc	a,@a+pc
      00028A F5 82            [12]  854 	mov	dpl,a
      00028C E5 1A            [12]  855 	mov	a,_state
      00028E 24 0E            [12]  856 	add	a,#(00260$-3-.)
      000290 83               [24]  857 	movc	a,@a+pc
      000291 F5 83            [12]  858 	mov	dph,a
      000293 E4               [12]  859 	clr	a
      000294 73               [24]  860 	jmp	@a+dptr
      000295                        861 00259$:
      000295 A9                     862 	.db	00131$
      000296 BE                     863 	.db	00141$
      000297 B2                     864 	.db	00140$
      000298 B2                     865 	.db	00140$
      000299 B2                     866 	.db	00140$
      00029A B2                     867 	.db	00140$
      00029B CF                     868 	.db	00144$
      00029C B2                     869 	.db	00140$
      00029D B2                     870 	.db	00140$
      00029E B2                     871 	.db	00140$
      00029F                        872 00260$:
      00029F 02                     873 	.db	00131$>>8
      0002A0 02                     874 	.db	00141$>>8
      0002A1 02                     875 	.db	00140$>>8
      0002A2 02                     876 	.db	00140$>>8
      0002A3 02                     877 	.db	00140$>>8
      0002A4 02                     878 	.db	00140$>>8
      0002A5 02                     879 	.db	00144$>>8
      0002A6 02                     880 	.db	00140$>>8
      0002A7 02                     881 	.db	00140$>>8
      0002A8 02                     882 	.db	00140$>>8
                                    883 ;	Receiver.c:139: case 0:	if(auto_flag)	{auto_led=0;main_out1=1;main_out2=1;}
      0002A9                        884 00131$:
      0002A9 30 00 06         [24]  885 	jnb	_auto_flag,00140$
                                    886 ;	assignBit
      0002AC C2 A1            [12]  887 	clr	_P2_1
                                    888 ;	assignBit
      0002AE D2 B6            [12]  889 	setb	_P3_6
                                    890 ;	assignBit
      0002B0 D2 B7            [12]  891 	setb	_P3_7
                                    892 ;	Receiver.c:146: case 9:up_led_main =0;center_led =0;down_led_main=0;up_led=0;down_led=0;break;
      0002B2                        893 00140$:
                                    894 ;	assignBit
      0002B2 C2 81            [12]  895 	clr	_P0_1
                                    896 ;	assignBit
      0002B4 C2 80            [12]  897 	clr	_P0_0
                                    898 ;	assignBit
      0002B6 C2 A6            [12]  899 	clr	_P2_6
                                    900 ;	assignBit
      0002B8 C2 A7            [12]  901 	clr	_P2_7
                                    902 ;	assignBit
      0002BA C2 A4            [12]  903 	clr	_P2_4
                                    904 ;	Receiver.c:147: case 1:up_led_main =1;center_led =0;down_led_main=0;
      0002BC 80 27            [24]  905 	sjmp	00158$
      0002BE                        906 00141$:
                                    907 ;	assignBit
      0002BE D2 81            [12]  908 	setb	_P0_1
                                    909 ;	assignBit
      0002C0 C2 80            [12]  910 	clr	_P0_0
                                    911 ;	assignBit
      0002C2 C2 A6            [12]  912 	clr	_P2_6
                                    913 ;	Receiver.c:148: if(auto_flag)	{main_out1=0;up_led=1;down_led=0;}break;
      0002C4 30 00 1E         [24]  914 	jnb	_auto_flag,00158$
                                    915 ;	assignBit
      0002C7 C2 B6            [12]  916 	clr	_P3_6
                                    917 ;	assignBit
      0002C9 D2 A7            [12]  918 	setb	_P2_7
                                    919 ;	assignBit
      0002CB C2 A4            [12]  920 	clr	_P2_4
                                    921 ;	Receiver.c:150: case 6:	up_led_main =0;center_led =0;down_led_main=1;
      0002CD 80 16            [24]  922 	sjmp	00158$
      0002CF                        923 00144$:
                                    924 ;	assignBit
      0002CF C2 81            [12]  925 	clr	_P0_1
                                    926 ;	assignBit
      0002D1 C2 80            [12]  927 	clr	_P0_0
                                    928 ;	assignBit
      0002D3 D2 A6            [12]  929 	setb	_P2_6
                                    930 ;	Receiver.c:151: up_led=0;if(auto_flag){main_out2=0;down_led=1;}break;
                                    931 ;	assignBit
      0002D5 C2 A7            [12]  932 	clr	_P2_7
      0002D7 30 00 0B         [24]  933 	jnb	_auto_flag,00158$
                                    934 ;	assignBit
      0002DA C2 B7            [12]  935 	clr	_P3_7
                                    936 ;	assignBit
      0002DC D2 A4            [12]  937 	setb	_P2_4
                                    938 ;	Receiver.c:154: }
      0002DE 80 05            [24]  939 	sjmp	00158$
      0002E0                        940 00150$:
                                    941 ;	Receiver.c:158: {timerCount = 0;}
      0002E0 E4               [12]  942 	clr	a
      0002E1 F5 0A            [12]  943 	mov	_timerCount,a
      0002E3 F5 0B            [12]  944 	mov	(_timerCount + 1),a
      0002E5                        945 00158$:
                                    946 ;	Receiver.c:160: } //timer end
      0002E5 D0 D0            [24]  947 	pop	psw
      0002E7 D0 00            [24]  948 	pop	(0+0)
      0002E9 D0 01            [24]  949 	pop	(0+1)
      0002EB D0 02            [24]  950 	pop	(0+2)
      0002ED D0 03            [24]  951 	pop	(0+3)
      0002EF D0 04            [24]  952 	pop	(0+4)
      0002F1 D0 05            [24]  953 	pop	(0+5)
      0002F3 D0 06            [24]  954 	pop	(0+6)
      0002F5 D0 07            [24]  955 	pop	(0+7)
      0002F7 D0 83            [24]  956 	pop	dph
      0002F9 D0 82            [24]  957 	pop	dpl
      0002FB D0 F0            [24]  958 	pop	b
      0002FD D0 E0            [24]  959 	pop	acc
      0002FF D0 21            [24]  960 	pop	bits
      000301 32               [24]  961 	reti
                                    962 ;------------------------------------------------------------
                                    963 ;Allocation info for local variables in function 'timer1_ISR'
                                    964 ;------------------------------------------------------------
                                    965 ;	Receiver.c:163: void timer1_ISR (void) __interrupt 5
                                    966 ;	-----------------------------------------
                                    967 ;	 function timer1_ISR
                                    968 ;	-----------------------------------------
      000302                        969 _timer1_ISR:
      000302 C0 21            [24]  970 	push	bits
      000304 C0 E0            [24]  971 	push	acc
      000306 C0 F0            [24]  972 	push	b
      000308 C0 82            [24]  973 	push	dpl
      00030A C0 83            [24]  974 	push	dph
      00030C C0 07            [24]  975 	push	(0+7)
      00030E C0 06            [24]  976 	push	(0+6)
      000310 C0 05            [24]  977 	push	(0+5)
      000312 C0 04            [24]  978 	push	(0+4)
      000314 C0 03            [24]  979 	push	(0+3)
      000316 C0 02            [24]  980 	push	(0+2)
      000318 C0 01            [24]  981 	push	(0+1)
      00031A C0 00            [24]  982 	push	(0+0)
      00031C C0 D0            [24]  983 	push	psw
      00031E 75 D0 00         [24]  984 	mov	psw,#0x00
                                    985 ;	Receiver.c:165: TF2 = 0;            /* Clear the interrupt request */
                                    986 ;	assignBit
      000321 C2 CF            [12]  987 	clr	_TF2
                                    988 ;	Receiver.c:166: timerCount2++;
      000323 AE 0E            [24]  989 	mov	r6,_timerCount2
      000325 AF 0F            [24]  990 	mov	r7,(_timerCount2 + 1)
      000327 74 01            [12]  991 	mov	a,#0x01
      000329 2E               [12]  992 	add	a,r6
      00032A F5 0E            [12]  993 	mov	_timerCount2,a
      00032C E4               [12]  994 	clr	a
      00032D 3F               [12]  995 	addc	a,r7
      00032E F5 0F            [12]  996 	mov	(_timerCount2 + 1),a
                                    997 ;	Receiver.c:167: serialCount++;
      000330 AE 0C            [24]  998 	mov	r6,_serialCount
      000332 AF 0D            [24]  999 	mov	r7,(_serialCount + 1)
      000334 74 01            [12] 1000 	mov	a,#0x01
      000336 2E               [12] 1001 	add	a,r6
      000337 F5 0C            [12] 1002 	mov	_serialCount,a
      000339 E4               [12] 1003 	clr	a
      00033A 3F               [12] 1004 	addc	a,r7
      00033B F5 0D            [12] 1005 	mov	(_serialCount + 1),a
                                   1006 ;	Receiver.c:168: rst_out=!rst_out;
      00033D B2 96            [12] 1007 	cpl	_P1_6
                                   1008 ;	Receiver.c:169: if(dim1_val)
      00033F E5 16            [12] 1009 	mov	a,_dim1_val
      000341 45 17            [12] 1010 	orl	a,(_dim1_val + 1)
      000343 60 12            [24] 1011 	jz	00105$
                                   1012 ;	Receiver.c:170: {dim1_val--;dim_out=1;}
      000345 AE 16            [24] 1013 	mov	r6,_dim1_val
      000347 AF 17            [24] 1014 	mov	r7,(_dim1_val + 1)
      000349 EE               [12] 1015 	mov	a,r6
      00034A 24 FF            [12] 1016 	add	a,#0xff
      00034C F5 16            [12] 1017 	mov	_dim1_val,a
      00034E EF               [12] 1018 	mov	a,r7
      00034F 34 FF            [12] 1019 	addc	a,#0xff
      000351 F5 17            [12] 1020 	mov	(_dim1_val + 1),a
                                   1021 ;	assignBit
      000353 D2 82            [12] 1022 	setb	_P0_2
      000355 80 24            [24] 1023 	sjmp	00106$
      000357                       1024 00105$:
                                   1025 ;	Receiver.c:172: else if(dim1_val2){dim1_val2--;dim_out=0;}
      000357 E5 18            [12] 1026 	mov	a,_dim1_val2
      000359 45 19            [12] 1027 	orl	a,(_dim1_val2 + 1)
      00035B 60 12            [24] 1028 	jz	00102$
      00035D AE 18            [24] 1029 	mov	r6,_dim1_val2
      00035F AF 19            [24] 1030 	mov	r7,(_dim1_val2 + 1)
      000361 EE               [12] 1031 	mov	a,r6
      000362 24 FF            [12] 1032 	add	a,#0xff
      000364 F5 18            [12] 1033 	mov	_dim1_val2,a
      000366 EF               [12] 1034 	mov	a,r7
      000367 34 FF            [12] 1035 	addc	a,#0xff
      000369 F5 19            [12] 1036 	mov	(_dim1_val2 + 1),a
                                   1037 ;	assignBit
      00036B C2 82            [12] 1038 	clr	_P0_2
      00036D 80 0C            [24] 1039 	sjmp	00106$
      00036F                       1040 00102$:
                                   1041 ;	Receiver.c:174: else {dim1_val = dim_val;dim1_val2 = dim_val2;}    
      00036F 85 12 16         [24] 1042 	mov	_dim1_val,_dim_val
      000372 85 13 17         [24] 1043 	mov	(_dim1_val + 1),(_dim_val + 1)
      000375 85 14 18         [24] 1044 	mov	_dim1_val2,_dim_val2
      000378 85 15 19         [24] 1045 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      00037B                       1046 00106$:
                                   1047 ;	Receiver.c:176: if(auto_flag)
      00037B 20 00 03         [24] 1048 	jb	_auto_flag,00245$
      00037E 02 05 2D         [24] 1049 	ljmp	00150$
      000381                       1050 00245$:
                                   1051 ;	Receiver.c:178: if(timerCount2<1000)
      000381 C3               [12] 1052 	clr	c
      000382 E5 0E            [12] 1053 	mov	a,_timerCount2
      000384 94 E8            [12] 1054 	subb	a,#0xe8
      000386 E5 0F            [12] 1055 	mov	a,(_timerCount2 + 1)
      000388 64 80            [12] 1056 	xrl	a,#0x80
      00038A 94 83            [12] 1057 	subb	a,#0x83
      00038C 40 03            [24] 1058 	jc	00246$
      00038E 02 04 58         [24] 1059 	ljmp	00147$
      000391                       1060 00246$:
                                   1061 ;	Receiver.c:180: switch(state)
      000391 74 02            [12] 1062 	mov	a,#0x02
      000393 B5 1A 06         [24] 1063 	cjne	a,_state,00247$
      000396 E4               [12] 1064 	clr	a
      000397 B5 1B 02         [24] 1065 	cjne	a,(_state + 1),00247$
      00039A 80 24            [24] 1066 	sjmp	00107$
      00039C                       1067 00247$:
      00039C 74 03            [12] 1068 	mov	a,#0x03
      00039E B5 1A 06         [24] 1069 	cjne	a,_state,00248$
      0003A1 E4               [12] 1070 	clr	a
      0003A2 B5 1B 02         [24] 1071 	cjne	a,(_state + 1),00248$
      0003A5 80 3F            [24] 1072 	sjmp	00111$
      0003A7                       1073 00248$:
      0003A7 74 04            [12] 1074 	mov	a,#0x04
      0003A9 B5 1A 06         [24] 1075 	cjne	a,_state,00249$
      0003AC E4               [12] 1076 	clr	a
      0003AD B5 1B 02         [24] 1077 	cjne	a,(_state + 1),00249$
      0003B0 80 5A            [24] 1078 	sjmp	00115$
      0003B2                       1079 00249$:
      0003B2 74 05            [12] 1080 	mov	a,#0x05
      0003B4 B5 1A 06         [24] 1081 	cjne	a,_state,00250$
      0003B7 E4               [12] 1082 	clr	a
      0003B8 B5 1B 02         [24] 1083 	cjne	a,(_state + 1),00250$
      0003BB 80 75            [24] 1084 	sjmp	00119$
      0003BD                       1085 00250$:
      0003BD 02 05 2D         [24] 1086 	ljmp	00150$
                                   1087 ;	Receiver.c:182: case 2:	if(timerCount2%4){main_out1=1;main_out2=1;}
      0003C0                       1088 00107$:
      0003C0 75 22 04         [24] 1089 	mov	__modsint_PARM_2,#0x04
      0003C3 75 23 00         [24] 1090 	mov	(__modsint_PARM_2 + 1),#0x00
      0003C6 85 0E 82         [24] 1091 	mov	dpl,_timerCount2
      0003C9 85 0F 83         [24] 1092 	mov	dph,(_timerCount2 + 1)
      0003CC 12 09 20         [24] 1093 	lcall	__modsint
      0003CF E5 82            [12] 1094 	mov	a,dpl
      0003D1 85 83 F0         [24] 1095 	mov	b,dph
      0003D4 45 F0            [12] 1096 	orl	a,b
      0003D6 60 07            [24] 1097 	jz	00109$
                                   1098 ;	assignBit
      0003D8 D2 B6            [12] 1099 	setb	_P3_6
                                   1100 ;	assignBit
      0003DA D2 B7            [12] 1101 	setb	_P3_7
      0003DC 02 05 2D         [24] 1102 	ljmp	00150$
      0003DF                       1103 00109$:
                                   1104 ;	Receiver.c:183: else {main_out1=0;main_out2=1;}
                                   1105 ;	assignBit
      0003DF C2 B6            [12] 1106 	clr	_P3_6
                                   1107 ;	assignBit
      0003E1 D2 B7            [12] 1108 	setb	_P3_7
                                   1109 ;	Receiver.c:184: break;
      0003E3 02 05 2D         [24] 1110 	ljmp	00150$
                                   1111 ;	Receiver.c:186: case 3:	if(timerCount2%4){main_out1=1;main_out2=1;}
      0003E6                       1112 00111$:
      0003E6 75 22 04         [24] 1113 	mov	__modsint_PARM_2,#0x04
      0003E9 75 23 00         [24] 1114 	mov	(__modsint_PARM_2 + 1),#0x00
      0003EC 85 0E 82         [24] 1115 	mov	dpl,_timerCount2
      0003EF 85 0F 83         [24] 1116 	mov	dph,(_timerCount2 + 1)
      0003F2 12 09 20         [24] 1117 	lcall	__modsint
      0003F5 E5 82            [12] 1118 	mov	a,dpl
      0003F7 85 83 F0         [24] 1119 	mov	b,dph
      0003FA 45 F0            [12] 1120 	orl	a,b
      0003FC 60 07            [24] 1121 	jz	00113$
                                   1122 ;	assignBit
      0003FE D2 B6            [12] 1123 	setb	_P3_6
                                   1124 ;	assignBit
      000400 D2 B7            [12] 1125 	setb	_P3_7
      000402 02 05 2D         [24] 1126 	ljmp	00150$
      000405                       1127 00113$:
                                   1128 ;	Receiver.c:187: else {main_out1=0;main_out2=1;}
                                   1129 ;	assignBit
      000405 C2 B6            [12] 1130 	clr	_P3_6
                                   1131 ;	assignBit
      000407 D2 B7            [12] 1132 	setb	_P3_7
                                   1133 ;	Receiver.c:188: break;
      000409 02 05 2D         [24] 1134 	ljmp	00150$
                                   1135 ;	Receiver.c:190: case 4:	if(timerCount2%4){main_out1=1;main_out2=1;}
      00040C                       1136 00115$:
      00040C 75 22 04         [24] 1137 	mov	__modsint_PARM_2,#0x04
      00040F 75 23 00         [24] 1138 	mov	(__modsint_PARM_2 + 1),#0x00
      000412 85 0E 82         [24] 1139 	mov	dpl,_timerCount2
      000415 85 0F 83         [24] 1140 	mov	dph,(_timerCount2 + 1)
      000418 12 09 20         [24] 1141 	lcall	__modsint
      00041B E5 82            [12] 1142 	mov	a,dpl
      00041D 85 83 F0         [24] 1143 	mov	b,dph
      000420 45 F0            [12] 1144 	orl	a,b
      000422 60 07            [24] 1145 	jz	00117$
                                   1146 ;	assignBit
      000424 D2 B6            [12] 1147 	setb	_P3_6
                                   1148 ;	assignBit
      000426 D2 B7            [12] 1149 	setb	_P3_7
      000428 02 05 2D         [24] 1150 	ljmp	00150$
      00042B                       1151 00117$:
                                   1152 ;	Receiver.c:191: else {main_out1=1;main_out2=0;}
                                   1153 ;	assignBit
      00042B D2 B6            [12] 1154 	setb	_P3_6
                                   1155 ;	assignBit
      00042D C2 B7            [12] 1156 	clr	_P3_7
                                   1157 ;	Receiver.c:192: break;
      00042F 02 05 2D         [24] 1158 	ljmp	00150$
                                   1159 ;	Receiver.c:194: case 5:	if(timerCount2%4){main_out1=1;main_out2=1;}
      000432                       1160 00119$:
      000432 75 22 04         [24] 1161 	mov	__modsint_PARM_2,#0x04
      000435 75 23 00         [24] 1162 	mov	(__modsint_PARM_2 + 1),#0x00
      000438 85 0E 82         [24] 1163 	mov	dpl,_timerCount2
      00043B 85 0F 83         [24] 1164 	mov	dph,(_timerCount2 + 1)
      00043E 12 09 20         [24] 1165 	lcall	__modsint
      000441 E5 82            [12] 1166 	mov	a,dpl
      000443 85 83 F0         [24] 1167 	mov	b,dph
      000446 45 F0            [12] 1168 	orl	a,b
      000448 60 07            [24] 1169 	jz	00121$
                                   1170 ;	assignBit
      00044A D2 B6            [12] 1171 	setb	_P3_6
                                   1172 ;	assignBit
      00044C D2 B7            [12] 1173 	setb	_P3_7
      00044E 02 05 2D         [24] 1174 	ljmp	00150$
      000451                       1175 00121$:
                                   1176 ;	Receiver.c:195: else {main_out1=1;main_out2=0;}
                                   1177 ;	assignBit
      000451 D2 B6            [12] 1178 	setb	_P3_6
                                   1179 ;	assignBit
      000453 C2 B7            [12] 1180 	clr	_P3_7
                                   1181 ;	Receiver.c:196: break;
      000455 02 05 2D         [24] 1182 	ljmp	00150$
                                   1183 ;	Receiver.c:199: }}
      000458                       1184 00147$:
                                   1185 ;	Receiver.c:201: else if(timerCount2<2000)
      000458 C3               [12] 1186 	clr	c
      000459 E5 0E            [12] 1187 	mov	a,_timerCount2
      00045B 94 D0            [12] 1188 	subb	a,#0xd0
      00045D E5 0F            [12] 1189 	mov	a,(_timerCount2 + 1)
      00045F 64 80            [12] 1190 	xrl	a,#0x80
      000461 94 87            [12] 1191 	subb	a,#0x87
      000463 40 03            [24] 1192 	jc	00255$
      000465 02 05 28         [24] 1193 	ljmp	00144$
      000468                       1194 00255$:
                                   1195 ;	Receiver.c:203: switch(state)
      000468 74 02            [12] 1196 	mov	a,#0x02
      00046A B5 1A 06         [24] 1197 	cjne	a,_state,00256$
      00046D E4               [12] 1198 	clr	a
      00046E B5 1B 02         [24] 1199 	cjne	a,(_state + 1),00256$
      000471 80 24            [24] 1200 	sjmp	00125$
      000473                       1201 00256$:
      000473 74 03            [12] 1202 	mov	a,#0x03
      000475 B5 1A 06         [24] 1203 	cjne	a,_state,00257$
      000478 E4               [12] 1204 	clr	a
      000479 B5 1B 02         [24] 1205 	cjne	a,(_state + 1),00257$
      00047C 80 3E            [24] 1206 	sjmp	00129$
      00047E                       1207 00257$:
      00047E 74 04            [12] 1208 	mov	a,#0x04
      000480 B5 1A 06         [24] 1209 	cjne	a,_state,00258$
      000483 E4               [12] 1210 	clr	a
      000484 B5 1B 02         [24] 1211 	cjne	a,(_state + 1),00258$
      000487 80 57            [24] 1212 	sjmp	00133$
      000489                       1213 00258$:
      000489 74 05            [12] 1214 	mov	a,#0x05
      00048B B5 1A 06         [24] 1215 	cjne	a,_state,00259$
      00048E E4               [12] 1216 	clr	a
      00048F B5 1B 02         [24] 1217 	cjne	a,(_state + 1),00259$
      000492 80 70            [24] 1218 	sjmp	00137$
      000494                       1219 00259$:
      000494 02 05 2D         [24] 1220 	ljmp	00150$
                                   1221 ;	Receiver.c:205: case 2:	if(timerCount2%10){main_out1=1;main_out2=1;}
      000497                       1222 00125$:
      000497 75 22 0A         [24] 1223 	mov	__modsint_PARM_2,#0x0a
      00049A 75 23 00         [24] 1224 	mov	(__modsint_PARM_2 + 1),#0x00
      00049D 85 0E 82         [24] 1225 	mov	dpl,_timerCount2
      0004A0 85 0F 83         [24] 1226 	mov	dph,(_timerCount2 + 1)
      0004A3 12 09 20         [24] 1227 	lcall	__modsint
      0004A6 E5 82            [12] 1228 	mov	a,dpl
      0004A8 85 83 F0         [24] 1229 	mov	b,dph
      0004AB 45 F0            [12] 1230 	orl	a,b
      0004AD 60 07            [24] 1231 	jz	00127$
                                   1232 ;	assignBit
      0004AF D2 B6            [12] 1233 	setb	_P3_6
                                   1234 ;	assignBit
      0004B1 D2 B7            [12] 1235 	setb	_P3_7
      0004B3 02 05 2D         [24] 1236 	ljmp	00150$
      0004B6                       1237 00127$:
                                   1238 ;	Receiver.c:206: else {main_out1=0;main_out2=1;}
                                   1239 ;	assignBit
      0004B6 C2 B6            [12] 1240 	clr	_P3_6
                                   1241 ;	assignBit
      0004B8 D2 B7            [12] 1242 	setb	_P3_7
                                   1243 ;	Receiver.c:207: break;
                                   1244 ;	Receiver.c:209: case 3:	if(timerCount2%10){main_out1=1;main_out2=1;}
      0004BA 80 71            [24] 1245 	sjmp	00150$
      0004BC                       1246 00129$:
      0004BC 75 22 0A         [24] 1247 	mov	__modsint_PARM_2,#0x0a
      0004BF 75 23 00         [24] 1248 	mov	(__modsint_PARM_2 + 1),#0x00
      0004C2 85 0E 82         [24] 1249 	mov	dpl,_timerCount2
      0004C5 85 0F 83         [24] 1250 	mov	dph,(_timerCount2 + 1)
      0004C8 12 09 20         [24] 1251 	lcall	__modsint
      0004CB E5 82            [12] 1252 	mov	a,dpl
      0004CD 85 83 F0         [24] 1253 	mov	b,dph
      0004D0 45 F0            [12] 1254 	orl	a,b
      0004D2 60 06            [24] 1255 	jz	00131$
                                   1256 ;	assignBit
      0004D4 D2 B6            [12] 1257 	setb	_P3_6
                                   1258 ;	assignBit
      0004D6 D2 B7            [12] 1259 	setb	_P3_7
      0004D8 80 53            [24] 1260 	sjmp	00150$
      0004DA                       1261 00131$:
                                   1262 ;	Receiver.c:210: else {main_out1=0;main_out2=1;}
                                   1263 ;	assignBit
      0004DA C2 B6            [12] 1264 	clr	_P3_6
                                   1265 ;	assignBit
      0004DC D2 B7            [12] 1266 	setb	_P3_7
                                   1267 ;	Receiver.c:211: break;
                                   1268 ;	Receiver.c:213: case 4:	if(timerCount2%10){main_out1=1;main_out2=1;}
      0004DE 80 4D            [24] 1269 	sjmp	00150$
      0004E0                       1270 00133$:
      0004E0 75 22 0A         [24] 1271 	mov	__modsint_PARM_2,#0x0a
      0004E3 75 23 00         [24] 1272 	mov	(__modsint_PARM_2 + 1),#0x00
      0004E6 85 0E 82         [24] 1273 	mov	dpl,_timerCount2
      0004E9 85 0F 83         [24] 1274 	mov	dph,(_timerCount2 + 1)
      0004EC 12 09 20         [24] 1275 	lcall	__modsint
      0004EF E5 82            [12] 1276 	mov	a,dpl
      0004F1 85 83 F0         [24] 1277 	mov	b,dph
      0004F4 45 F0            [12] 1278 	orl	a,b
      0004F6 60 06            [24] 1279 	jz	00135$
                                   1280 ;	assignBit
      0004F8 D2 B6            [12] 1281 	setb	_P3_6
                                   1282 ;	assignBit
      0004FA D2 B7            [12] 1283 	setb	_P3_7
      0004FC 80 2F            [24] 1284 	sjmp	00150$
      0004FE                       1285 00135$:
                                   1286 ;	Receiver.c:214: else {main_out1=1;main_out2=0;}
                                   1287 ;	assignBit
      0004FE D2 B6            [12] 1288 	setb	_P3_6
                                   1289 ;	assignBit
      000500 C2 B7            [12] 1290 	clr	_P3_7
                                   1291 ;	Receiver.c:215: break;
                                   1292 ;	Receiver.c:217: case 5:	if(timerCount2%10){main_out1=1;main_out2=1;}
      000502 80 29            [24] 1293 	sjmp	00150$
      000504                       1294 00137$:
      000504 75 22 0A         [24] 1295 	mov	__modsint_PARM_2,#0x0a
      000507 75 23 00         [24] 1296 	mov	(__modsint_PARM_2 + 1),#0x00
      00050A 85 0E 82         [24] 1297 	mov	dpl,_timerCount2
      00050D 85 0F 83         [24] 1298 	mov	dph,(_timerCount2 + 1)
      000510 12 09 20         [24] 1299 	lcall	__modsint
      000513 E5 82            [12] 1300 	mov	a,dpl
      000515 85 83 F0         [24] 1301 	mov	b,dph
      000518 45 F0            [12] 1302 	orl	a,b
      00051A 60 06            [24] 1303 	jz	00139$
                                   1304 ;	assignBit
      00051C D2 B6            [12] 1305 	setb	_P3_6
                                   1306 ;	assignBit
      00051E D2 B7            [12] 1307 	setb	_P3_7
      000520 80 0B            [24] 1308 	sjmp	00150$
      000522                       1309 00139$:
                                   1310 ;	Receiver.c:218: else {main_out1=1;main_out2=0;}
                                   1311 ;	assignBit
      000522 D2 B6            [12] 1312 	setb	_P3_6
                                   1313 ;	assignBit
      000524 C2 B7            [12] 1314 	clr	_P3_7
                                   1315 ;	Receiver.c:219: break;
                                   1316 ;	Receiver.c:222: }}
      000526 80 05            [24] 1317 	sjmp	00150$
      000528                       1318 00144$:
                                   1319 ;	Receiver.c:224: else timerCount2=0;	
      000528 E4               [12] 1320 	clr	a
      000529 F5 0E            [12] 1321 	mov	_timerCount2,a
      00052B F5 0F            [12] 1322 	mov	(_timerCount2 + 1),a
      00052D                       1323 00150$:
                                   1324 ;	Receiver.c:228: if(timerCount2>4000)timerCount2=0;
      00052D C3               [12] 1325 	clr	c
      00052E 74 A0            [12] 1326 	mov	a,#0xa0
      000530 95 0E            [12] 1327 	subb	a,_timerCount2
      000532 74 8F            [12] 1328 	mov	a,#(0x0f ^ 0x80)
      000534 85 0F F0         [24] 1329 	mov	b,(_timerCount2 + 1)
      000537 63 F0 80         [24] 1330 	xrl	b,#0x80
      00053A 95 F0            [12] 1331 	subb	a,b
      00053C 50 05            [24] 1332 	jnc	00153$
      00053E E4               [12] 1333 	clr	a
      00053F F5 0E            [12] 1334 	mov	_timerCount2,a
      000541 F5 0F            [12] 1335 	mov	(_timerCount2 + 1),a
      000543                       1336 00153$:
                                   1337 ;	Receiver.c:230: }//end timer2
      000543 D0 D0            [24] 1338 	pop	psw
      000545 D0 00            [24] 1339 	pop	(0+0)
      000547 D0 01            [24] 1340 	pop	(0+1)
      000549 D0 02            [24] 1341 	pop	(0+2)
      00054B D0 03            [24] 1342 	pop	(0+3)
      00054D D0 04            [24] 1343 	pop	(0+4)
      00054F D0 05            [24] 1344 	pop	(0+5)
      000551 D0 06            [24] 1345 	pop	(0+6)
      000553 D0 07            [24] 1346 	pop	(0+7)
      000555 D0 83            [24] 1347 	pop	dph
      000557 D0 82            [24] 1348 	pop	dpl
      000559 D0 F0            [24] 1349 	pop	b
      00055B D0 E0            [24] 1350 	pop	acc
      00055D D0 21            [24] 1351 	pop	bits
      00055F 32               [24] 1352 	reti
                                   1353 ;------------------------------------------------------------
                                   1354 ;Allocation info for local variables in function 'main'
                                   1355 ;------------------------------------------------------------
                                   1356 ;	Receiver.c:234: void main()
                                   1357 ;	-----------------------------------------
                                   1358 ;	 function main
                                   1359 ;	-----------------------------------------
      000560                       1360 _main:
                                   1361 ;	Receiver.c:236: state=20;
      000560 75 1A 14         [24] 1362 	mov	_state,#0x14
      000563 75 1B 00         [24] 1363 	mov	(_state + 1),#0x00
                                   1364 ;	Receiver.c:237: pwr_out=0;
                                   1365 ;	assignBit
      000566 C2 87            [12] 1366 	clr	_P0_7
                                   1367 ;	Receiver.c:241: T2CON = 0x80;                /* 10000000 */
      000568 75 C8 80         [24] 1368 	mov	_T2CON,#0x80
                                   1369 ;	Receiver.c:246: RCAP2L = 0x18;
      00056B 75 CA 18         [24] 1370 	mov	_RCAP2L,#0x18
                                   1371 ;	Receiver.c:247: RCAP2H = 0xFE;
      00056E 75 CB FE         [24] 1372 	mov	_RCAP2H,#0xfe
                                   1373 ;	Receiver.c:249: TL2 = RCAP2L;
      000571 85 CA CC         [24] 1374 	mov	_TL2,_RCAP2L
                                   1375 ;	Receiver.c:250: TH2 = RCAP2H;
      000574 85 CB CD         [24] 1376 	mov	_TH2,_RCAP2H
                                   1377 ;	Receiver.c:254: ET2 = 1;                      /* Enable Timer 2 Interrupts */
                                   1378 ;	assignBit
      000577 D2 AD            [12] 1379 	setb	_ET2
                                   1380 ;	Receiver.c:255: TR2 = 1;                      /* Start Timer 2 Running */
                                   1381 ;	assignBit
      000579 D2 CA            [12] 1382 	setb	_TR2
                                   1383 ;	Receiver.c:258: InitTimer0();
      00057B 12 07 C6         [24] 1384 	lcall	_InitTimer0
                                   1385 ;	Receiver.c:259: EA=1;
                                   1386 ;	assignBit
      00057E D2 AF            [12] 1387 	setb	_EA
                                   1388 ;	Receiver.c:260: startup();
      000580 12 05 96         [24] 1389 	lcall	_startup
                                   1390 ;	Receiver.c:261: start=1;
      000583 75 08 01         [24] 1391 	mov	_start,#0x01
                                   1392 ;	Receiver.c:262: UART_Init();
      000586 12 06 1C         [24] 1393 	lcall	_UART_Init
                                   1394 ;	Receiver.c:263: handshake();
      000589 12 06 2F         [24] 1395 	lcall	_handshake
                                   1396 ;	Receiver.c:264: ES  = 1;      // Enable Serial INterrupt
                                   1397 ;	assignBit
      00058C D2 AC            [12] 1398 	setb	_ES
                                   1399 ;	Receiver.c:266: while(1)
      00058E                       1400 00102$:
                                   1401 ;	Receiver.c:268: check_switches();
      00058E 12 07 D4         [24] 1402 	lcall	_check_switches
                                   1403 ;	Receiver.c:269: check_data();
      000591 12 06 58         [24] 1404 	lcall	_check_data
                                   1405 ;	Receiver.c:271: } //main
      000594 80 F8            [24] 1406 	sjmp	00102$
                                   1407 ;------------------------------------------------------------
                                   1408 ;Allocation info for local variables in function 'startup'
                                   1409 ;------------------------------------------------------------
                                   1410 ;	Receiver.c:274: void startup()
                                   1411 ;	-----------------------------------------
                                   1412 ;	 function startup
                                   1413 ;	-----------------------------------------
      000596                       1414 _startup:
                                   1415 ;	Receiver.c:276: pwr_key=1;
                                   1416 ;	assignBit
      000596 D2 97            [12] 1417 	setb	_P1_7
                                   1418 ;	Receiver.c:277: dim_key=1;
                                   1419 ;	assignBit
      000598 D2 94            [12] 1420 	setb	_P1_4
                                   1421 ;	Receiver.c:278: ac_key=1;
                                   1422 ;	assignBit
      00059A D2 93            [12] 1423 	setb	_P1_3
                                   1424 ;	Receiver.c:279: auto_key=1;
                                   1425 ;	assignBit
      00059C D2 92            [12] 1426 	setb	_P1_2
                                   1427 ;	Receiver.c:280: manual_up_key=1;
                                   1428 ;	assignBit
      00059E D2 90            [12] 1429 	setb	_P1_0
                                   1430 ;	Receiver.c:281: manual_down_key=1;
                                   1431 ;	assignBit
      0005A0 D2 91            [12] 1432 	setb	_P1_1
                                   1433 ;	Receiver.c:283: main_out1=0;
                                   1434 ;	assignBit
      0005A2 C2 B6            [12] 1435 	clr	_P3_6
                                   1436 ;	Receiver.c:284: main_out2=0;
                                   1437 ;	assignBit
      0005A4 C2 B7            [12] 1438 	clr	_P3_7
                                   1439 ;	Receiver.c:285: pwr_out=0;
                                   1440 ;	assignBit
      0005A6 C2 87            [12] 1441 	clr	_P0_7
                                   1442 ;	Receiver.c:286: rst_out=0;
                                   1443 ;	assignBit
      0005A8 C2 96            [12] 1444 	clr	_P1_6
                                   1445 ;	Receiver.c:287: dim_out=0;
                                   1446 ;	assignBit
      0005AA C2 82            [12] 1447 	clr	_P0_2
                                   1448 ;	Receiver.c:288: pwr_led=0;
                                   1449 ;	assignBit
      0005AC C2 A0            [12] 1450 	clr	_P2_0
                                   1451 ;	Receiver.c:289: auto_led=0;
                                   1452 ;	assignBit
      0005AE C2 A1            [12] 1453 	clr	_P2_1
                                   1454 ;	Receiver.c:290: ac_led_up=0;
                                   1455 ;	assignBit
      0005B0 C2 A2            [12] 1456 	clr	_P2_2
                                   1457 ;	Receiver.c:291: ac_led_down=0;
                                   1458 ;	assignBit
      0005B2 C2 A3            [12] 1459 	clr	_P2_3
                                   1460 ;	Receiver.c:292: up_led=0;
                                   1461 ;	assignBit
      0005B4 C2 A7            [12] 1462 	clr	_P2_7
                                   1463 ;	Receiver.c:293: down_led=0;
                                   1464 ;	assignBit
      0005B6 C2 A4            [12] 1465 	clr	_P2_4
                                   1466 ;	Receiver.c:295: main_out1=1;
                                   1467 ;	assignBit
      0005B8 D2 B6            [12] 1468 	setb	_P3_6
                                   1469 ;	Receiver.c:296: main_out2=1;
                                   1470 ;	assignBit
      0005BA D2 B7            [12] 1471 	setb	_P3_7
                                   1472 ;	Receiver.c:297: pwr_led=1;
                                   1473 ;	assignBit
      0005BC D2 A0            [12] 1474 	setb	_P2_0
                                   1475 ;	Receiver.c:298: auto_led=0;
                                   1476 ;	assignBit
      0005BE C2 A1            [12] 1477 	clr	_P2_1
                                   1478 ;	Receiver.c:299: ac_led_up=1;ac_led_down=0;
                                   1479 ;	assignBit
      0005C0 D2 A2            [12] 1480 	setb	_P2_2
                                   1481 ;	assignBit
      0005C2 C2 A3            [12] 1482 	clr	_P2_3
                                   1483 ;	Receiver.c:300: auto_flag = 0;
                                   1484 ;	assignBit
      0005C4 C2 00            [12] 1485 	clr	_auto_flag
                                   1486 ;	Receiver.c:301: dim_out=1;
                                   1487 ;	assignBit
      0005C6 D2 82            [12] 1488 	setb	_P0_2
                                   1489 ;	Receiver.c:302: up_led_main =0;center_led =0;down_led_main=1;
                                   1490 ;	assignBit
      0005C8 C2 81            [12] 1491 	clr	_P0_1
                                   1492 ;	assignBit
      0005CA C2 80            [12] 1493 	clr	_P0_0
                                   1494 ;	assignBit
      0005CC D2 A6            [12] 1495 	setb	_P2_6
                                   1496 ;	Receiver.c:303: delay();delay();
      0005CE 12 05 F3         [24] 1497 	lcall	_delay
      0005D1 12 05 F3         [24] 1498 	lcall	_delay
                                   1499 ;	Receiver.c:304: up_led_main =0;center_led =1;down_led_main=0;
                                   1500 ;	assignBit
      0005D4 C2 81            [12] 1501 	clr	_P0_1
                                   1502 ;	assignBit
      0005D6 D2 80            [12] 1503 	setb	_P0_0
                                   1504 ;	assignBit
      0005D8 C2 A6            [12] 1505 	clr	_P2_6
                                   1506 ;	Receiver.c:305: delay();delay();
      0005DA 12 05 F3         [24] 1507 	lcall	_delay
      0005DD 12 05 F3         [24] 1508 	lcall	_delay
                                   1509 ;	Receiver.c:306: up_led_main =1;center_led =0;down_led_main=0;
                                   1510 ;	assignBit
      0005E0 D2 81            [12] 1511 	setb	_P0_1
                                   1512 ;	assignBit
      0005E2 C2 80            [12] 1513 	clr	_P0_0
                                   1514 ;	assignBit
      0005E4 C2 A6            [12] 1515 	clr	_P2_6
                                   1516 ;	Receiver.c:307: delay();delay();
      0005E6 12 05 F3         [24] 1517 	lcall	_delay
      0005E9 12 05 F3         [24] 1518 	lcall	_delay
                                   1519 ;	Receiver.c:308: up_led_main =0;center_led =0;down_led_main=0;
                                   1520 ;	assignBit
      0005EC C2 81            [12] 1521 	clr	_P0_1
                                   1522 ;	assignBit
      0005EE C2 80            [12] 1523 	clr	_P0_0
                                   1524 ;	assignBit
      0005F0 C2 A6            [12] 1525 	clr	_P2_6
                                   1526 ;	Receiver.c:309: }
      0005F2 22               [24] 1527 	ret
                                   1528 ;------------------------------------------------------------
                                   1529 ;Allocation info for local variables in function 'delay'
                                   1530 ;------------------------------------------------------------
                                   1531 ;i                         Allocated to registers r6 r7 
                                   1532 ;j                         Allocated to registers r4 r5 
                                   1533 ;------------------------------------------------------------
                                   1534 ;	Receiver.c:311: void delay()
                                   1535 ;	-----------------------------------------
                                   1536 ;	 function delay
                                   1537 ;	-----------------------------------------
      0005F3                       1538 _delay:
                                   1539 ;	Receiver.c:314: for(i=0;i<0x33;i++)
      0005F3 7E 00            [12] 1540 	mov	r6,#0x00
      0005F5 7F 00            [12] 1541 	mov	r7,#0x00
      0005F7                       1542 00106$:
                                   1543 ;	Receiver.c:315: for(j=0;j<0xff;j++);
      0005F7 7C FF            [12] 1544 	mov	r4,#0xff
      0005F9 7D 00            [12] 1545 	mov	r5,#0x00
      0005FB                       1546 00105$:
      0005FB EC               [12] 1547 	mov	a,r4
      0005FC 24 FF            [12] 1548 	add	a,#0xff
      0005FE FA               [12] 1549 	mov	r2,a
      0005FF ED               [12] 1550 	mov	a,r5
      000600 34 FF            [12] 1551 	addc	a,#0xff
      000602 FB               [12] 1552 	mov	r3,a
      000603 8A 04            [24] 1553 	mov	ar4,r2
      000605 8B 05            [24] 1554 	mov	ar5,r3
      000607 EA               [12] 1555 	mov	a,r2
      000608 4B               [12] 1556 	orl	a,r3
      000609 70 F0            [24] 1557 	jnz	00105$
                                   1558 ;	Receiver.c:314: for(i=0;i<0x33;i++)
      00060B 0E               [12] 1559 	inc	r6
      00060C BE 00 01         [24] 1560 	cjne	r6,#0x00,00124$
      00060F 0F               [12] 1561 	inc	r7
      000610                       1562 00124$:
      000610 C3               [12] 1563 	clr	c
      000611 EE               [12] 1564 	mov	a,r6
      000612 94 33            [12] 1565 	subb	a,#0x33
      000614 EF               [12] 1566 	mov	a,r7
      000615 64 80            [12] 1567 	xrl	a,#0x80
      000617 94 80            [12] 1568 	subb	a,#0x80
      000619 40 DC            [24] 1569 	jc	00106$
                                   1570 ;	Receiver.c:316: }
      00061B 22               [24] 1571 	ret
                                   1572 ;------------------------------------------------------------
                                   1573 ;Allocation info for local variables in function 'UART_Init'
                                   1574 ;------------------------------------------------------------
                                   1575 ;	Receiver.c:319: void UART_Init()
                                   1576 ;	-----------------------------------------
                                   1577 ;	 function UART_Init
                                   1578 ;	-----------------------------------------
      00061C                       1579 _UART_Init:
                                   1580 ;	Receiver.c:321: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      00061C 75 89 20         [24] 1581 	mov	_TMOD,#0x20
                                   1582 ;	Receiver.c:322: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      00061F 75 8D FD         [24] 1583 	mov	_TH1,#0xfd
                                   1584 ;	Receiver.c:323: SCON = 0x50;		/* Mode 1, reception enable */
      000622 75 98 50         [24] 1585 	mov	_SCON,#0x50
                                   1586 ;	Receiver.c:324: TR1 = 1;		/* Start timer 1 */
                                   1587 ;	assignBit
      000625 D2 8E            [12] 1588 	setb	_TR1
                                   1589 ;	Receiver.c:325: }
      000627 22               [24] 1590 	ret
                                   1591 ;------------------------------------------------------------
                                   1592 ;Allocation info for local variables in function 'Transmit_data'
                                   1593 ;------------------------------------------------------------
                                   1594 ;tx_data                   Allocated to registers 
                                   1595 ;------------------------------------------------------------
                                   1596 ;	Receiver.c:328: void Transmit_data(char tx_data)
                                   1597 ;	-----------------------------------------
                                   1598 ;	 function Transmit_data
                                   1599 ;	-----------------------------------------
      000628                       1600 _Transmit_data:
      000628 85 82 99         [24] 1601 	mov	_SBUF,dpl
                                   1602 ;	Receiver.c:331: while (TI==0);		/* Wait until stop bit transmit */
      00062B                       1603 00101$:
      00062B 30 99 FD         [24] 1604 	jnb	_TI,00101$
                                   1605 ;	Receiver.c:332: }
      00062E 22               [24] 1606 	ret
                                   1607 ;------------------------------------------------------------
                                   1608 ;Allocation info for local variables in function 'handshake'
                                   1609 ;------------------------------------------------------------
                                   1610 ;	Receiver.c:335: void handshake()
                                   1611 ;	-----------------------------------------
                                   1612 ;	 function handshake
                                   1613 ;	-----------------------------------------
      00062F                       1614 _handshake:
                                   1615 ;	Receiver.c:337: while(data_r!='y')
      00062F                       1616 00101$:
      00062F 74 79            [12] 1617 	mov	a,#0x79
      000631 B5 09 02         [24] 1618 	cjne	a,_data_r,00114$
      000634 80 19            [24] 1619 	sjmp	00103$
      000636                       1620 00114$:
                                   1621 ;	Receiver.c:339: state=20;
      000636 75 1A 14         [24] 1622 	mov	_state,#0x14
      000639 75 1B 00         [24] 1623 	mov	(_state + 1),#0x00
                                   1624 ;	Receiver.c:340: delay();
      00063C 12 05 F3         [24] 1625 	lcall	_delay
                                   1626 ;	Receiver.c:341: delay();
      00063F 12 05 F3         [24] 1627 	lcall	_delay
                                   1628 ;	Receiver.c:342: Transmit_data('x');
      000642 75 82 78         [24] 1629 	mov	dpl,#0x78
      000645 12 06 28         [24] 1630 	lcall	_Transmit_data
                                   1631 ;	Receiver.c:343: data_r=SBUF;
      000648 85 99 09         [24] 1632 	mov	_data_r,_SBUF
                                   1633 ;	Receiver.c:344: RI = 0;
                                   1634 ;	assignBit
      00064B C2 98            [12] 1635 	clr	_RI
      00064D 80 E0            [24] 1636 	sjmp	00101$
      00064F                       1637 00103$:
                                   1638 ;	Receiver.c:346: delay();
      00064F 12 05 F3         [24] 1639 	lcall	_delay
                                   1640 ;	Receiver.c:347: Transmit_data('m');
      000652 75 82 6D         [24] 1641 	mov	dpl,#0x6d
                                   1642 ;	Receiver.c:348: }
      000655 02 06 28         [24] 1643 	ljmp	_Transmit_data
                                   1644 ;------------------------------------------------------------
                                   1645 ;Allocation info for local variables in function 'check_data'
                                   1646 ;------------------------------------------------------------
                                   1647 ;	Receiver.c:350: void check_data()
                                   1648 ;	-----------------------------------------
                                   1649 ;	 function check_data
                                   1650 ;	-----------------------------------------
      000658                       1651 _check_data:
                                   1652 ;	Receiver.c:352: switch(data_r)
      000658 AF 09            [24] 1653 	mov	r7,_data_r
      00065A BF 61 02         [24] 1654 	cjne	r7,#0x61,00226$
      00065D 80 44            [24] 1655 	sjmp	00102$
      00065F                       1656 00226$:
      00065F BF 62 02         [24] 1657 	cjne	r7,#0x62,00227$
      000662 80 56            [24] 1658 	sjmp	00105$
      000664                       1659 00227$:
      000664 BF 63 02         [24] 1660 	cjne	r7,#0x63,00228$
      000667 80 68            [24] 1661 	sjmp	00108$
      000669                       1662 00228$:
      000669 BF 64 02         [24] 1663 	cjne	r7,#0x64,00229$
      00066C 80 7A            [24] 1664 	sjmp	00111$
      00066E                       1665 00229$:
      00066E BF 65 03         [24] 1666 	cjne	r7,#0x65,00230$
      000671 02 06 FF         [24] 1667 	ljmp	00114$
      000674                       1668 00230$:
      000674 BF 66 03         [24] 1669 	cjne	r7,#0x66,00231$
      000677 02 07 16         [24] 1670 	ljmp	00117$
      00067A                       1671 00231$:
      00067A BF 67 03         [24] 1672 	cjne	r7,#0x67,00232$
      00067D 02 07 2D         [24] 1673 	ljmp	00120$
      000680                       1674 00232$:
      000680 BF 6C 02         [24] 1675 	cjne	r7,#0x6c,00233$
      000683 80 0F            [24] 1676 	sjmp	00101$
      000685                       1677 00233$:
      000685 BF 6E 03         [24] 1678 	cjne	r7,#0x6e,00234$
      000688 02 07 40         [24] 1679 	ljmp	00123$
      00068B                       1680 00234$:
      00068B BF 75 03         [24] 1681 	cjne	r7,#0x75,00235$
      00068E 02 07 53         [24] 1682 	ljmp	00126$
      000691                       1683 00235$:
      000691 02 07 66         [24] 1684 	ljmp	00129$
                                   1685 ;	Receiver.c:354: case 'l':time_delay=30;state = 0;auto_led=0;break;
      000694                       1686 00101$:
      000694 75 10 1E         [24] 1687 	mov	_time_delay,#0x1e
      000697 E4               [12] 1688 	clr	a
      000698 F5 11            [12] 1689 	mov	(_time_delay + 1),a
      00069A F5 1A            [12] 1690 	mov	_state,a
      00069C F5 1B            [12] 1691 	mov	(_state + 1),a
                                   1692 ;	assignBit
      00069E C2 A1            [12] 1693 	clr	_P2_1
      0006A0 02 07 AC         [24] 1694 	ljmp	00133$
                                   1695 ;	Receiver.c:356: case 'a':time_delay=20;state = 1;	
      0006A3                       1696 00102$:
      0006A3 75 10 14         [24] 1697 	mov	_time_delay,#0x14
      0006A6 75 11 00         [24] 1698 	mov	(_time_delay + 1),#0x00
      0006A9 75 1A 01         [24] 1699 	mov	_state,#0x01
      0006AC 75 1B 00         [24] 1700 	mov	(_state + 1),#0x00
                                   1701 ;	Receiver.c:357: if(auto_flag)auto_led=1;break;
      0006AF 20 00 03         [24] 1702 	jb	_auto_flag,00236$
      0006B2 02 07 AC         [24] 1703 	ljmp	00133$
      0006B5                       1704 00236$:
                                   1705 ;	assignBit
      0006B5 D2 A1            [12] 1706 	setb	_P2_1
      0006B7 02 07 AC         [24] 1707 	ljmp	00133$
                                   1708 ;	Receiver.c:359: case 'b':time_delay=10;state = 2;
      0006BA                       1709 00105$:
      0006BA 75 10 0A         [24] 1710 	mov	_time_delay,#0x0a
      0006BD 75 11 00         [24] 1711 	mov	(_time_delay + 1),#0x00
      0006C0 75 1A 02         [24] 1712 	mov	_state,#0x02
      0006C3 75 1B 00         [24] 1713 	mov	(_state + 1),#0x00
                                   1714 ;	Receiver.c:360: if(auto_flag)auto_led=1;break;
      0006C6 20 00 03         [24] 1715 	jb	_auto_flag,00237$
      0006C9 02 07 AC         [24] 1716 	ljmp	00133$
      0006CC                       1717 00237$:
                                   1718 ;	assignBit
      0006CC D2 A1            [12] 1719 	setb	_P2_1
      0006CE 02 07 AC         [24] 1720 	ljmp	00133$
                                   1721 ;	Receiver.c:362: case 'c':time_delay=7 ;state = 3;
      0006D1                       1722 00108$:
      0006D1 75 10 07         [24] 1723 	mov	_time_delay,#0x07
      0006D4 75 11 00         [24] 1724 	mov	(_time_delay + 1),#0x00
      0006D7 75 1A 03         [24] 1725 	mov	_state,#0x03
      0006DA 75 1B 00         [24] 1726 	mov	(_state + 1),#0x00
                                   1727 ;	Receiver.c:363: if(auto_flag)auto_led=1;break;
      0006DD 20 00 03         [24] 1728 	jb	_auto_flag,00238$
      0006E0 02 07 AC         [24] 1729 	ljmp	00133$
      0006E3                       1730 00238$:
                                   1731 ;	assignBit
      0006E3 D2 A1            [12] 1732 	setb	_P2_1
      0006E5 02 07 AC         [24] 1733 	ljmp	00133$
                                   1734 ;	Receiver.c:365: case 'd':time_delay=7 ;state = 7;
      0006E8                       1735 00111$:
      0006E8 75 10 07         [24] 1736 	mov	_time_delay,#0x07
      0006EB 75 11 00         [24] 1737 	mov	(_time_delay + 1),#0x00
      0006EE 75 1A 07         [24] 1738 	mov	_state,#0x07
      0006F1 75 1B 00         [24] 1739 	mov	(_state + 1),#0x00
                                   1740 ;	Receiver.c:366: if(auto_flag)auto_led=1;break;
      0006F4 20 00 03         [24] 1741 	jb	_auto_flag,00239$
      0006F7 02 07 AC         [24] 1742 	ljmp	00133$
      0006FA                       1743 00239$:
                                   1744 ;	assignBit
      0006FA D2 A1            [12] 1745 	setb	_P2_1
      0006FC 02 07 AC         [24] 1746 	ljmp	00133$
                                   1747 ;	Receiver.c:368: case 'e':time_delay=7 ;state = 4;
      0006FF                       1748 00114$:
      0006FF 75 10 07         [24] 1749 	mov	_time_delay,#0x07
      000702 75 11 00         [24] 1750 	mov	(_time_delay + 1),#0x00
      000705 75 1A 04         [24] 1751 	mov	_state,#0x04
      000708 75 1B 00         [24] 1752 	mov	(_state + 1),#0x00
                                   1753 ;	Receiver.c:369: if(auto_flag)auto_led=1;break;
      00070B 20 00 03         [24] 1754 	jb	_auto_flag,00240$
      00070E 02 07 AC         [24] 1755 	ljmp	00133$
      000711                       1756 00240$:
                                   1757 ;	assignBit
      000711 D2 A1            [12] 1758 	setb	_P2_1
      000713 02 07 AC         [24] 1759 	ljmp	00133$
                                   1760 ;	Receiver.c:371: case 'f':time_delay=10;state = 5;
      000716                       1761 00117$:
      000716 75 10 0A         [24] 1762 	mov	_time_delay,#0x0a
      000719 75 11 00         [24] 1763 	mov	(_time_delay + 1),#0x00
      00071C 75 1A 05         [24] 1764 	mov	_state,#0x05
      00071F 75 1B 00         [24] 1765 	mov	(_state + 1),#0x00
                                   1766 ;	Receiver.c:372: if(auto_flag)auto_led=1;break;
      000722 20 00 03         [24] 1767 	jb	_auto_flag,00241$
      000725 02 07 AC         [24] 1768 	ljmp	00133$
      000728                       1769 00241$:
                                   1770 ;	assignBit
      000728 D2 A1            [12] 1771 	setb	_P2_1
      00072A 02 07 AC         [24] 1772 	ljmp	00133$
                                   1773 ;	Receiver.c:374: case 'g':time_delay=20;state = 6;
      00072D                       1774 00120$:
      00072D 75 10 14         [24] 1775 	mov	_time_delay,#0x14
      000730 75 11 00         [24] 1776 	mov	(_time_delay + 1),#0x00
      000733 75 1A 06         [24] 1777 	mov	_state,#0x06
      000736 75 1B 00         [24] 1778 	mov	(_state + 1),#0x00
                                   1779 ;	Receiver.c:375: if(auto_flag)auto_led=1;break;
      000739 30 00 70         [24] 1780 	jnb	_auto_flag,00133$
                                   1781 ;	assignBit
      00073C D2 A1            [12] 1782 	setb	_P2_1
                                   1783 ;	Receiver.c:377: case 'n':time_delay=15;state = 8;
      00073E 80 6C            [24] 1784 	sjmp	00133$
      000740                       1785 00123$:
      000740 75 10 0F         [24] 1786 	mov	_time_delay,#0x0f
      000743 75 11 00         [24] 1787 	mov	(_time_delay + 1),#0x00
      000746 75 1A 08         [24] 1788 	mov	_state,#0x08
      000749 75 1B 00         [24] 1789 	mov	(_state + 1),#0x00
                                   1790 ;	Receiver.c:378: if(auto_flag)auto_led=1;break;
      00074C 30 00 5D         [24] 1791 	jnb	_auto_flag,00133$
                                   1792 ;	assignBit
      00074F D2 A1            [12] 1793 	setb	_P2_1
                                   1794 ;	Receiver.c:380: case 'u':time_delay=15;state = 9;
      000751 80 59            [24] 1795 	sjmp	00133$
      000753                       1796 00126$:
      000753 75 10 0F         [24] 1797 	mov	_time_delay,#0x0f
      000756 75 11 00         [24] 1798 	mov	(_time_delay + 1),#0x00
      000759 75 1A 09         [24] 1799 	mov	_state,#0x09
      00075C 75 1B 00         [24] 1800 	mov	(_state + 1),#0x00
                                   1801 ;	Receiver.c:381: if(auto_flag)auto_led=1;break;
      00075F 30 00 4A         [24] 1802 	jnb	_auto_flag,00133$
                                   1803 ;	assignBit
      000762 D2 A1            [12] 1804 	setb	_P2_1
                                   1805 ;	Receiver.c:383: default :ES=0;
      000764 80 46            [24] 1806 	sjmp	00133$
      000766                       1807 00129$:
                                   1808 ;	assignBit
      000766 C2 AC            [12] 1809 	clr	_ES
                                   1810 ;	Receiver.c:384: serialCount=0;
      000768 E4               [12] 1811 	clr	a
      000769 F5 0C            [12] 1812 	mov	_serialCount,a
      00076B F5 0D            [12] 1813 	mov	(_serialCount + 1),a
                                   1814 ;	Receiver.c:385: state=20;
      00076D 75 1A 14         [24] 1815 	mov	_state,#0x14
                                   1816 ;	1-genFromRTrack replaced	mov	(_state + 1),#0x00
      000770 F5 1B            [12] 1817 	mov	(_state + 1),a
                                   1818 ;	Receiver.c:386: timerCount=0;
      000772 F5 0A            [12] 1819 	mov	_timerCount,a
      000774 F5 0B            [12] 1820 	mov	(_timerCount + 1),a
                                   1821 ;	Receiver.c:387: P0_1 =0;
                                   1822 ;	assignBit
      000776 C2 81            [12] 1823 	clr	_P0_1
                                   1824 ;	Receiver.c:388: P0_0 =0;
                                   1825 ;	assignBit
      000778 C2 80            [12] 1826 	clr	_P0_0
                                   1827 ;	Receiver.c:389: P2_6=0;
                                   1828 ;	assignBit
      00077A C2 A6            [12] 1829 	clr	_P2_6
                                   1830 ;	Receiver.c:390: up_led=0;
                                   1831 ;	assignBit
      00077C C2 A7            [12] 1832 	clr	_P2_7
                                   1833 ;	Receiver.c:391: down_led=0;
                                   1834 ;	assignBit
      00077E C2 A4            [12] 1835 	clr	_P2_4
                                   1836 ;	Receiver.c:393: Transmit_data('x');
      000780 75 82 78         [24] 1837 	mov	dpl,#0x78
      000783 12 06 28         [24] 1838 	lcall	_Transmit_data
                                   1839 ;	Receiver.c:394: __asm nop __endasm;
      000786 00               [12] 1840 	nop	
                                   1841 ;	Receiver.c:395: __asm nop __endasm;
      000787 00               [12] 1842 	nop	
                                   1843 ;	Receiver.c:396: __asm nop __endasm;
      000788 00               [12] 1844 	nop	
                                   1845 ;	Receiver.c:397: __asm nop __endasm;
      000789 00               [12] 1846 	nop	
                                   1847 ;	Receiver.c:398: while(data_r!='y')
      00078A                       1848 00130$:
      00078A 74 79            [12] 1849 	mov	a,#0x79
      00078C B5 09 02         [24] 1850 	cjne	a,_data_r,00245$
      00078F 80 19            [24] 1851 	sjmp	00132$
      000791                       1852 00245$:
                                   1853 ;	Receiver.c:400: state=20;
      000791 75 1A 14         [24] 1854 	mov	_state,#0x14
      000794 75 1B 00         [24] 1855 	mov	(_state + 1),#0x00
                                   1856 ;	Receiver.c:401: delay();
      000797 12 05 F3         [24] 1857 	lcall	_delay
                                   1858 ;	Receiver.c:402: delay();
      00079A 12 05 F3         [24] 1859 	lcall	_delay
                                   1860 ;	Receiver.c:403: Transmit_data('x');
      00079D 75 82 78         [24] 1861 	mov	dpl,#0x78
      0007A0 12 06 28         [24] 1862 	lcall	_Transmit_data
                                   1863 ;	Receiver.c:404: data_r=SBUF;
      0007A3 85 99 09         [24] 1864 	mov	_data_r,_SBUF
                                   1865 ;	Receiver.c:405: RI = 0;
                                   1866 ;	assignBit
      0007A6 C2 98            [12] 1867 	clr	_RI
      0007A8 80 E0            [24] 1868 	sjmp	00130$
      0007AA                       1869 00132$:
                                   1870 ;	Receiver.c:407: ES=1;
                                   1871 ;	assignBit
      0007AA D2 AC            [12] 1872 	setb	_ES
                                   1873 ;	Receiver.c:408: }//switch end
      0007AC                       1874 00133$:
                                   1875 ;	Receiver.c:411: if(serialCount>4000)
      0007AC C3               [12] 1876 	clr	c
      0007AD 74 A0            [12] 1877 	mov	a,#0xa0
      0007AF 95 0C            [12] 1878 	subb	a,_serialCount
      0007B1 74 8F            [12] 1879 	mov	a,#(0x0f ^ 0x80)
      0007B3 85 0D F0         [24] 1880 	mov	b,(_serialCount + 1)
      0007B6 63 F0 80         [24] 1881 	xrl	b,#0x80
      0007B9 95 F0            [12] 1882 	subb	a,b
      0007BB 50 08            [24] 1883 	jnc	00136$
                                   1884 ;	Receiver.c:412: {serialCount=0;data_r='q';}
      0007BD E4               [12] 1885 	clr	a
      0007BE F5 0C            [12] 1886 	mov	_serialCount,a
      0007C0 F5 0D            [12] 1887 	mov	(_serialCount + 1),a
      0007C2 75 09 71         [24] 1888 	mov	_data_r,#0x71
      0007C5                       1889 00136$:
                                   1890 ;	Receiver.c:413: }
      0007C5 22               [24] 1891 	ret
                                   1892 ;------------------------------------------------------------
                                   1893 ;Allocation info for local variables in function 'InitTimer0'
                                   1894 ;------------------------------------------------------------
                                   1895 ;	Receiver.c:415: void InitTimer0(void)
                                   1896 ;	-----------------------------------------
                                   1897 ;	 function InitTimer0
                                   1898 ;	-----------------------------------------
      0007C6                       1899 _InitTimer0:
                                   1900 ;	Receiver.c:417: TMOD |= 0x01;    // Set timer0 in mode 1
      0007C6 43 89 01         [24] 1901 	orl	_TMOD,#0x01
                                   1902 ;	Receiver.c:418: TH0 = 0xee;      // 5 msec reloading time
      0007C9 75 8C EE         [24] 1903 	mov	_TH0,#0xee
                                   1904 ;	Receiver.c:419: TL0 = 0x00;      // First time value
      0007CC 75 8A 00         [24] 1905 	mov	_TL0,#0x00
                                   1906 ;	Receiver.c:420: TR0 = 1;         // Start Timer 1
                                   1907 ;	assignBit
      0007CF D2 8C            [12] 1908 	setb	_TR0
                                   1909 ;	Receiver.c:421: ET0 = 1;         // Enable Timer1 interrupts	
                                   1910 ;	assignBit
      0007D1 D2 A9            [12] 1911 	setb	_ET0
                                   1912 ;	Receiver.c:422: }
      0007D3 22               [24] 1913 	ret
                                   1914 ;------------------------------------------------------------
                                   1915 ;Allocation info for local variables in function 'check_switches'
                                   1916 ;------------------------------------------------------------
                                   1917 ;	Receiver.c:424: void check_switches()
                                   1918 ;	-----------------------------------------
                                   1919 ;	 function check_switches
                                   1920 ;	-----------------------------------------
      0007D4                       1921 _check_switches:
                                   1922 ;	Receiver.c:426: if(!ac_key)
      0007D4 20 93 4F         [24] 1923 	jb	_P1_3,00111$
                                   1924 ;	Receiver.c:428: if(!ac_key)
      0007D7 20 93 4C         [24] 1925 	jb	_P1_3,00111$
                                   1926 ;	Receiver.c:430: delay();
      0007DA 12 05 F3         [24] 1927 	lcall	_delay
                                   1928 ;	Receiver.c:431: ac_state++;		
      0007DD 05 1E            [12] 1929 	inc	_ac_state
                                   1930 ;	Receiver.c:432: if(ac_state==3)
      0007DF 74 03            [12] 1931 	mov	a,#0x03
      0007E1 B5 1E 03         [24] 1932 	cjne	a,_ac_state,00102$
                                   1933 ;	Receiver.c:433: ac_state=0;
      0007E4 75 1E 00         [24] 1934 	mov	_ac_state,#0x00
      0007E7                       1935 00102$:
                                   1936 ;	Receiver.c:434: switch(ac_state)
      0007E7 E4               [12] 1937 	clr	a
      0007E8 B5 1E 02         [24] 1938 	cjne	a,_ac_state,00191$
      0007EB 80 0E            [24] 1939 	sjmp	00103$
      0007ED                       1940 00191$:
      0007ED 74 01            [12] 1941 	mov	a,#0x01
      0007EF B5 1E 02         [24] 1942 	cjne	a,_ac_state,00192$
      0007F2 80 16            [24] 1943 	sjmp	00104$
      0007F4                       1944 00192$:
      0007F4 74 02            [12] 1945 	mov	a,#0x02
                                   1946 ;	Receiver.c:436: case 0:Transmit_data('l');ac_led_up=1;ac_led_down=1;delay();break;
      0007F6 B5 1E 2D         [24] 1947 	cjne	a,_ac_state,00111$
      0007F9 80 1E            [24] 1948 	sjmp	00105$
      0007FB                       1949 00103$:
      0007FB 75 82 6C         [24] 1950 	mov	dpl,#0x6c
      0007FE 12 06 28         [24] 1951 	lcall	_Transmit_data
                                   1952 ;	assignBit
      000801 D2 A2            [12] 1953 	setb	_P2_2
                                   1954 ;	assignBit
      000803 D2 A3            [12] 1955 	setb	_P2_3
      000805 12 05 F3         [24] 1956 	lcall	_delay
                                   1957 ;	Receiver.c:437: case 1:Transmit_data('m');ac_led_up=1;ac_led_down=0;delay();break;
      000808 80 1C            [24] 1958 	sjmp	00111$
      00080A                       1959 00104$:
      00080A 75 82 6D         [24] 1960 	mov	dpl,#0x6d
      00080D 12 06 28         [24] 1961 	lcall	_Transmit_data
                                   1962 ;	assignBit
      000810 D2 A2            [12] 1963 	setb	_P2_2
                                   1964 ;	assignBit
      000812 C2 A3            [12] 1965 	clr	_P2_3
      000814 12 05 F3         [24] 1966 	lcall	_delay
                                   1967 ;	Receiver.c:438: case 2:Transmit_data('h');ac_led_up=0;ac_led_down=1;delay();break;
      000817 80 0D            [24] 1968 	sjmp	00111$
      000819                       1969 00105$:
      000819 75 82 68         [24] 1970 	mov	dpl,#0x68
      00081C 12 06 28         [24] 1971 	lcall	_Transmit_data
                                   1972 ;	assignBit
      00081F C2 A2            [12] 1973 	clr	_P2_2
                                   1974 ;	assignBit
      000821 D2 A3            [12] 1975 	setb	_P2_3
      000823 12 05 F3         [24] 1976 	lcall	_delay
                                   1977 ;	Receiver.c:440: }//switch end
      000826                       1978 00111$:
                                   1979 ;	Receiver.c:443: if(!dim_key)
      000826 20 94 37         [24] 1980 	jb	_P1_4,00115$
                                   1981 ;	Receiver.c:445: delay();
      000829 12 05 F3         [24] 1982 	lcall	_delay
                                   1983 ;	Receiver.c:447: dim_val = dim_val + 10;
      00082C 74 0A            [12] 1984 	mov	a,#0x0a
      00082E 25 12            [12] 1985 	add	a,_dim_val
      000830 F5 12            [12] 1986 	mov	_dim_val,a
      000832 E4               [12] 1987 	clr	a
      000833 35 13            [12] 1988 	addc	a,(_dim_val + 1)
      000835 F5 13            [12] 1989 	mov	(_dim_val + 1),a
                                   1990 ;	Receiver.c:448: dim_val2=50-dim_val;
      000837 74 32            [12] 1991 	mov	a,#0x32
      000839 C3               [12] 1992 	clr	c
      00083A 95 12            [12] 1993 	subb	a,_dim_val
      00083C F5 14            [12] 1994 	mov	_dim_val2,a
      00083E E4               [12] 1995 	clr	a
      00083F 95 13            [12] 1996 	subb	a,(_dim_val + 1)
      000841 F5 15            [12] 1997 	mov	(_dim_val2 + 1),a
                                   1998 ;	Receiver.c:449: if(dim_val>50){dim_val=1;dim_val2=50;}
      000843 C3               [12] 1999 	clr	c
      000844 74 32            [12] 2000 	mov	a,#0x32
      000846 95 12            [12] 2001 	subb	a,_dim_val
      000848 74 80            [12] 2002 	mov	a,#(0x00 ^ 0x80)
      00084A 85 13 F0         [24] 2003 	mov	b,(_dim_val + 1)
      00084D 63 F0 80         [24] 2004 	xrl	b,#0x80
      000850 95 F0            [12] 2005 	subb	a,b
      000852 50 0C            [24] 2006 	jnc	00115$
      000854 75 12 01         [24] 2007 	mov	_dim_val,#0x01
      000857 75 13 00         [24] 2008 	mov	(_dim_val + 1),#0x00
      00085A 75 14 32         [24] 2009 	mov	_dim_val2,#0x32
      00085D 75 15 00         [24] 2010 	mov	(_dim_val2 + 1),#0x00
      000860                       2011 00115$:
                                   2012 ;	Receiver.c:452: if(!auto_key)
      000860 20 92 05         [24] 2013 	jb	_P1_2,00117$
                                   2014 ;	Receiver.c:454: delay();
      000863 12 05 F3         [24] 2015 	lcall	_delay
                                   2016 ;	Receiver.c:455: auto_flag=!auto_flag;
      000866 B2 00            [12] 2017 	cpl	_auto_flag
      000868                       2018 00117$:
                                   2019 ;	Receiver.c:458: if(!pwr_key)
      000868 20 97 28         [24] 2020 	jb	_P1_7,00122$
                                   2021 ;	Receiver.c:460: delay();
      00086B 12 05 F3         [24] 2022 	lcall	_delay
                                   2023 ;	Receiver.c:461: delay();
      00086E 12 05 F3         [24] 2024 	lcall	_delay
                                   2025 ;	Receiver.c:462: delay();
      000871 12 05 F3         [24] 2026 	lcall	_delay
                                   2027 ;	Receiver.c:463: if(!pwr_key)
      000874 20 97 1C         [24] 2028 	jb	_P1_7,00122$
                                   2029 ;	Receiver.c:465: pwr_led=0;up_led_main =0;center_led =0;down_led_main=0;ac_led_up=0;ac_led_down=0;auto_led=0;
                                   2030 ;	assignBit
      000877 C2 A0            [12] 2031 	clr	_P2_0
                                   2032 ;	assignBit
      000879 C2 81            [12] 2033 	clr	_P0_1
                                   2034 ;	assignBit
      00087B C2 80            [12] 2035 	clr	_P0_0
                                   2036 ;	assignBit
      00087D C2 A6            [12] 2037 	clr	_P2_6
                                   2038 ;	assignBit
      00087F C2 A2            [12] 2039 	clr	_P2_2
                                   2040 ;	assignBit
      000881 C2 A3            [12] 2041 	clr	_P2_3
                                   2042 ;	assignBit
      000883 C2 A1            [12] 2043 	clr	_P2_1
                                   2044 ;	Receiver.c:466: TR0 = 0;         // Stop Timer 1
                                   2045 ;	assignBit
      000885 C2 8C            [12] 2046 	clr	_TR0
                                   2047 ;	Receiver.c:467: ET0 = 0;         // Enable Timer1 interrupts	
                                   2048 ;	assignBit
      000887 C2 A9            [12] 2049 	clr	_ET0
                                   2050 ;	Receiver.c:468: delay();delay();
      000889 12 05 F3         [24] 2051 	lcall	_delay
      00088C 12 05 F3         [24] 2052 	lcall	_delay
                                   2053 ;	Receiver.c:469: pwr_out=1;
                                   2054 ;	assignBit
      00088F D2 87            [12] 2055 	setb	_P0_7
                                   2056 ;	Receiver.c:470: shutdown:
      000891                       2057 00118$:
                                   2058 ;	Receiver.c:471: goto shutdown;
      000891 80 FE            [24] 2059 	sjmp	00118$
      000893                       2060 00122$:
                                   2061 ;	Receiver.c:476: if(!manual_up_key)
      000893 20 90 0D         [24] 2062 	jb	_P1_0,00127$
                                   2063 ;	Receiver.c:478: up_led=1;
                                   2064 ;	assignBit
      000896 D2 A7            [12] 2065 	setb	_P2_7
                                   2066 ;	Receiver.c:479: down_led=0;
                                   2067 ;	assignBit
      000898 C2 A4            [12] 2068 	clr	_P2_4
                                   2069 ;	Receiver.c:480: up_led_main=1;
                                   2070 ;	assignBit
      00089A D2 81            [12] 2071 	setb	_P0_1
                                   2072 ;	Receiver.c:481: center_led=0;
                                   2073 ;	assignBit
      00089C C2 80            [12] 2074 	clr	_P0_0
                                   2075 ;	Receiver.c:482: down_led_main=0;
                                   2076 ;	assignBit
      00089E C2 A6            [12] 2077 	clr	_P2_6
                                   2078 ;	Receiver.c:483: TR0=0;
                                   2079 ;	assignBit
      0008A0 C2 8C            [12] 2080 	clr	_TR0
      0008A2 22               [24] 2081 	ret
      0008A3                       2082 00127$:
                                   2083 ;	Receiver.c:486: else if(!manual_down_key)
      0008A3 20 91 0D         [24] 2084 	jb	_P1_1,00124$
                                   2085 ;	Receiver.c:488: up_led=0;
                                   2086 ;	assignBit
      0008A6 C2 A7            [12] 2087 	clr	_P2_7
                                   2088 ;	Receiver.c:489: down_led=1;
                                   2089 ;	assignBit
      0008A8 D2 A4            [12] 2090 	setb	_P2_4
                                   2091 ;	Receiver.c:490: up_led_main=0;
                                   2092 ;	assignBit
      0008AA C2 81            [12] 2093 	clr	_P0_1
                                   2094 ;	Receiver.c:491: center_led=0;
                                   2095 ;	assignBit
      0008AC C2 80            [12] 2096 	clr	_P0_0
                                   2097 ;	Receiver.c:492: down_led_main=1;
                                   2098 ;	assignBit
      0008AE D2 A6            [12] 2099 	setb	_P2_6
                                   2100 ;	Receiver.c:493: TR0=0;
                                   2101 ;	assignBit
      0008B0 C2 8C            [12] 2102 	clr	_TR0
      0008B2 22               [24] 2103 	ret
      0008B3                       2104 00124$:
                                   2105 ;	Receiver.c:498: TR0=1;
                                   2106 ;	assignBit
      0008B3 D2 8C            [12] 2107 	setb	_TR0
                                   2108 ;	Receiver.c:501: }
      0008B5 22               [24] 2109 	ret
                                   2110 	.area CSEG    (CODE)
                                   2111 	.area CONST   (CODE)
                                   2112 	.area XINIT   (CODE)
                                   2113 	.area CABS    (ABS,CODE)
