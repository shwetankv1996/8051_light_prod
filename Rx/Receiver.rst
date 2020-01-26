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
      00000B 02 00 DF         [24]  395 	ljmp	_isr_timer0
      00000E                        396 	.ds	5
      000013 32               [24]  397 	reti
      000014                        398 	.ds	7
      00001B 32               [24]  399 	reti
      00001C                        400 	.ds	7
      000023 02 00 B6         [24]  401 	ljmp	_serial_isr
      000026                        402 	.ds	5
      00002B 02 03 0A         [24]  403 	ljmp	_timer1_ISR
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
      00002E 02 05 68         [24]  457 	ljmp	_main
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
      0000BA 30 98 18         [24]  482 	jnb	_RI,00108$
                                    483 ;	Receiver.c:58: data_r = SBUF; // Copy the received char
      0000BD 85 99 09         [24]  484 	mov	_data_r,_SBUF
                                    485 ;	Receiver.c:59: RI = 0;              // Clear the Receive interrupt flag
                                    486 ;	assignBit
      0000C0 C2 98            [12]  487 	clr	_RI
                                    488 ;	Receiver.c:60: if(data_r!='y')serialCount=0;
      0000C2 74 79            [12]  489 	mov	a,#0x79
      0000C4 B5 09 02         [24]  490 	cjne	a,_data_r,00129$
      0000C7 80 05            [24]  491 	sjmp	00102$
      0000C9                        492 00129$:
      0000C9 E4               [12]  493 	clr	a
      0000CA F5 0C            [12]  494 	mov	_serialCount,a
      0000CC F5 0D            [12]  495 	mov	(_serialCount + 1),a
      0000CE                        496 00102$:
                                    497 ;	Receiver.c:61: if(auto_flag)auto_led=1;
      0000CE 30 00 09         [24]  498 	jnb	_auto_flag,00110$
                                    499 ;	assignBit
      0000D1 D2 A1            [12]  500 	setb	_P2_1
      0000D3 80 05            [24]  501 	sjmp	00110$
      0000D5                        502 00108$:
                                    503 ;	Receiver.c:63: else if(TI == 1)
                                    504 ;	Receiver.c:65: TI = 0;              // Clear the Transmit interrupt flag
                                    505 ;	assignBit
      0000D5 10 99 02         [24]  506 	jbc	_TI,00131$
      0000D8 80 00            [24]  507 	sjmp	00110$
      0000DA                        508 00131$:
      0000DA                        509 00110$:
                                    510 ;	Receiver.c:67: }
      0000DA D0 D0            [24]  511 	pop	psw
      0000DC D0 E0            [24]  512 	pop	acc
      0000DE 32               [24]  513 	reti
                                    514 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    515 ;	eliminated unneeded push/pop dpl
                                    516 ;	eliminated unneeded push/pop dph
                                    517 ;	eliminated unneeded push/pop b
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'isr_timer0'
                                    520 ;------------------------------------------------------------
                                    521 ;	Receiver.c:69: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
                                    522 ;	-----------------------------------------
                                    523 ;	 function isr_timer0
                                    524 ;	-----------------------------------------
      0000DF                        525 _isr_timer0:
      0000DF C0 21            [24]  526 	push	bits
      0000E1 C0 E0            [24]  527 	push	acc
      0000E3 C0 F0            [24]  528 	push	b
      0000E5 C0 82            [24]  529 	push	dpl
      0000E7 C0 83            [24]  530 	push	dph
      0000E9 C0 07            [24]  531 	push	(0+7)
      0000EB C0 06            [24]  532 	push	(0+6)
      0000ED C0 05            [24]  533 	push	(0+5)
      0000EF C0 04            [24]  534 	push	(0+4)
      0000F1 C0 03            [24]  535 	push	(0+3)
      0000F3 C0 02            [24]  536 	push	(0+2)
      0000F5 C0 01            [24]  537 	push	(0+1)
      0000F7 C0 00            [24]  538 	push	(0+0)
      0000F9 C0 D0            [24]  539 	push	psw
      0000FB 75 D0 00         [24]  540 	mov	psw,#0x00
                                    541 ;	Receiver.c:71: TH0  = 0Xee;         // ReLoad the timer value for 5ms
      0000FE 75 8C EE         [24]  542 	mov	_TH0,#0xee
                                    543 ;	Receiver.c:72: TL0  = 0X00;
      000101 75 8A 00         [24]  544 	mov	_TL0,#0x00
                                    545 ;	Receiver.c:73: timerCount++;
      000104 AE 0A            [24]  546 	mov	r6,_timerCount
      000106 AF 0B            [24]  547 	mov	r7,(_timerCount + 1)
      000108 74 01            [12]  548 	mov	a,#0x01
      00010A 2E               [12]  549 	add	a,r6
      00010B F5 0A            [12]  550 	mov	_timerCount,a
      00010D E4               [12]  551 	clr	a
      00010E 3F               [12]  552 	addc	a,r7
      00010F F5 0B            [12]  553 	mov	(_timerCount + 1),a
                                    554 ;	Receiver.c:75: if(state!=20)
      000111 74 14            [12]  555 	mov	a,#0x14
      000113 B5 1A 07         [24]  556 	cjne	a,_state,00240$
      000116 E4               [12]  557 	clr	a
      000117 B5 1B 03         [24]  558 	cjne	a,(_state + 1),00240$
      00011A 02 02 ED         [24]  559 	ljmp	00158$
      00011D                        560 00240$:
                                    561 ;	Receiver.c:77: if(timerCount < (time_delay*30)) // count for LED-ON delay
      00011D 85 10 22         [24]  562 	mov	__mulint_PARM_2,_time_delay
      000120 85 11 23         [24]  563 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      000123 90 00 1E         [24]  564 	mov	dptr,#0x001e
      000126 12 08 73         [24]  565 	lcall	__mulint
      000129 AE 82            [24]  566 	mov	r6,dpl
      00012B AF 83            [24]  567 	mov	r7,dph
      00012D C3               [12]  568 	clr	c
      00012E E5 0A            [12]  569 	mov	a,_timerCount
      000130 9E               [12]  570 	subb	a,r6
      000131 E5 0B            [12]  571 	mov	a,(_timerCount + 1)
      000133 64 80            [12]  572 	xrl	a,#0x80
      000135 8F F0            [24]  573 	mov	b,r7
      000137 63 F0 80         [24]  574 	xrl	b,#0x80
      00013A 95 F0            [12]  575 	subb	a,b
      00013C 40 03            [24]  576 	jc	00241$
      00013E 02 02 37         [24]  577 	ljmp	00154$
      000141                        578 00241$:
                                    579 ;	Receiver.c:79: switch(state)
      000141 E5 1B            [12]  580 	mov	a,(_state + 1)
      000143 30 E7 03         [24]  581 	jnb	acc.7,00242$
      000146 02 02 ED         [24]  582 	ljmp	00158$
      000149                        583 00242$:
      000149 C3               [12]  584 	clr	c
      00014A 74 09            [12]  585 	mov	a,#0x09
      00014C 95 1A            [12]  586 	subb	a,_state
      00014E 74 80            [12]  587 	mov	a,#(0x00 ^ 0x80)
      000150 85 1B F0         [24]  588 	mov	b,(_state + 1)
      000153 63 F0 80         [24]  589 	xrl	b,#0x80
      000156 95 F0            [12]  590 	subb	a,b
      000158 50 03            [24]  591 	jnc	00243$
      00015A 02 02 ED         [24]  592 	ljmp	00158$
      00015D                        593 00243$:
      00015D E5 1A            [12]  594 	mov	a,_state
      00015F 24 0B            [12]  595 	add	a,#(00244$-3-.)
      000161 83               [24]  596 	movc	a,@a+pc
      000162 F5 82            [12]  597 	mov	dpl,a
      000164 E5 1A            [12]  598 	mov	a,_state
      000166 24 0E            [12]  599 	add	a,#(00245$-3-.)
      000168 83               [24]  600 	movc	a,@a+pc
      000169 F5 83            [12]  601 	mov	dph,a
      00016B E4               [12]  602 	clr	a
      00016C 73               [24]  603 	jmp	@a+dptr
      00016D                        604 00244$:
      00016D 81                     605 	.db	00101$
      00016E 9A                     606 	.db	00104$
      00016F AD                     607 	.db	00107$
      000170 BE                     608 	.db	00110$
      000171 CF                     609 	.db	00113$
      000172 E0                     610 	.db	00116$
      000173 F1                     611 	.db	00119$
      000174 04                     612 	.db	00122$
      000175 0D                     613 	.db	00123$
      000176 22                     614 	.db	00126$
      000177                        615 00245$:
      000177 01                     616 	.db	00101$>>8
      000178 01                     617 	.db	00104$>>8
      000179 01                     618 	.db	00107$>>8
      00017A 01                     619 	.db	00110$>>8
      00017B 01                     620 	.db	00113$>>8
      00017C 01                     621 	.db	00116$>>8
      00017D 01                     622 	.db	00119$>>8
      00017E 02                     623 	.db	00122$>>8
      00017F 02                     624 	.db	00123$>>8
      000180 02                     625 	.db	00126$>>8
                                    626 ;	Receiver.c:81: case 0:up_led_main =1;center_led =0;down_led_main=1;									
      000181                        627 00101$:
                                    628 ;	assignBit
      000181 D2 81            [12]  629 	setb	_P0_1
                                    630 ;	assignBit
      000183 C2 80            [12]  631 	clr	_P0_0
                                    632 ;	assignBit
      000185 D2 A6            [12]  633 	setb	_P2_6
                                    634 ;	Receiver.c:82: up_led=0;down_led=0;main_out1=1;main_out2=1;
                                    635 ;	assignBit
      000187 C2 A7            [12]  636 	clr	_P2_7
                                    637 ;	assignBit
      000189 C2 A4            [12]  638 	clr	_P2_4
                                    639 ;	assignBit
      00018B D2 B6            [12]  640 	setb	_P3_6
                                    641 ;	assignBit
      00018D D2 B7            [12]  642 	setb	_P3_7
                                    643 ;	Receiver.c:83: if(auto_flag)auto_led=1;
      00018F 20 00 03         [24]  644 	jb	_auto_flag,00246$
      000192 02 02 ED         [24]  645 	ljmp	00158$
      000195                        646 00246$:
                                    647 ;	assignBit
      000195 D2 A1            [12]  648 	setb	_P2_1
                                    649 ;	Receiver.c:84: break;	
      000197 02 02 ED         [24]  650 	ljmp	00158$
                                    651 ;	Receiver.c:85: case 1:up_led_main =1;center_led =0;down_led_main=0;
      00019A                        652 00104$:
                                    653 ;	assignBit
      00019A D2 81            [12]  654 	setb	_P0_1
                                    655 ;	assignBit
      00019C C2 80            [12]  656 	clr	_P0_0
                                    657 ;	assignBit
      00019E C2 A6            [12]  658 	clr	_P2_6
                                    659 ;	Receiver.c:86: if(auto_flag)
      0001A0 20 00 03         [24]  660 	jb	_auto_flag,00247$
      0001A3 02 02 ED         [24]  661 	ljmp	00158$
      0001A6                        662 00247$:
                                    663 ;	Receiver.c:87: {main_out1=0;up_led=1;}
                                    664 ;	assignBit
      0001A6 C2 B6            [12]  665 	clr	_P3_6
                                    666 ;	assignBit
      0001A8 D2 A7            [12]  667 	setb	_P2_7
                                    668 ;	Receiver.c:88: break;
      0001AA 02 02 ED         [24]  669 	ljmp	00158$
                                    670 ;	Receiver.c:89: case 2:up_led_main =1;center_led =0;down_led_main=0;
      0001AD                        671 00107$:
                                    672 ;	assignBit
      0001AD D2 81            [12]  673 	setb	_P0_1
                                    674 ;	assignBit
      0001AF C2 80            [12]  675 	clr	_P0_0
                                    676 ;	assignBit
      0001B1 C2 A6            [12]  677 	clr	_P2_6
                                    678 ;	Receiver.c:91: if(auto_flag)
      0001B3 20 00 03         [24]  679 	jb	_auto_flag,00248$
      0001B6 02 02 ED         [24]  680 	ljmp	00158$
      0001B9                        681 00248$:
                                    682 ;	Receiver.c:93: up_led=1;}
                                    683 ;	assignBit
      0001B9 D2 A7            [12]  684 	setb	_P2_7
                                    685 ;	Receiver.c:94: break;
      0001BB 02 02 ED         [24]  686 	ljmp	00158$
                                    687 ;	Receiver.c:95: case 3:up_led_main =1;center_led =1;down_led_main=0;
      0001BE                        688 00110$:
                                    689 ;	assignBit
      0001BE D2 81            [12]  690 	setb	_P0_1
                                    691 ;	assignBit
      0001C0 D2 80            [12]  692 	setb	_P0_0
                                    693 ;	assignBit
      0001C2 C2 A6            [12]  694 	clr	_P2_6
                                    695 ;	Receiver.c:97: if(auto_flag)
      0001C4 20 00 03         [24]  696 	jb	_auto_flag,00249$
      0001C7 02 02 ED         [24]  697 	ljmp	00158$
      0001CA                        698 00249$:
                                    699 ;	Receiver.c:99: up_led=1;}
                                    700 ;	assignBit
      0001CA D2 A7            [12]  701 	setb	_P2_7
                                    702 ;	Receiver.c:100: break;
      0001CC 02 02 ED         [24]  703 	ljmp	00158$
                                    704 ;	Receiver.c:101: case 4:	up_led_main =0;center_led =1;down_led_main=1;
      0001CF                        705 00113$:
                                    706 ;	assignBit
      0001CF C2 81            [12]  707 	clr	_P0_1
                                    708 ;	assignBit
      0001D1 D2 80            [12]  709 	setb	_P0_0
                                    710 ;	assignBit
      0001D3 D2 A6            [12]  711 	setb	_P2_6
                                    712 ;	Receiver.c:102: if(auto_flag)
      0001D5 20 00 03         [24]  713 	jb	_auto_flag,00250$
      0001D8 02 02 ED         [24]  714 	ljmp	00158$
      0001DB                        715 00250$:
                                    716 ;	Receiver.c:104: down_led=1;}
                                    717 ;	assignBit
      0001DB D2 A4            [12]  718 	setb	_P2_4
                                    719 ;	Receiver.c:105: break;
      0001DD 02 02 ED         [24]  720 	ljmp	00158$
                                    721 ;	Receiver.c:106: case 5:up_led_main =0;center_led =0;down_led_main=1;
      0001E0                        722 00116$:
                                    723 ;	assignBit
      0001E0 C2 81            [12]  724 	clr	_P0_1
                                    725 ;	assignBit
      0001E2 C2 80            [12]  726 	clr	_P0_0
                                    727 ;	assignBit
      0001E4 D2 A6            [12]  728 	setb	_P2_6
                                    729 ;	Receiver.c:108: if(auto_flag)
      0001E6 20 00 03         [24]  730 	jb	_auto_flag,00251$
      0001E9 02 02 ED         [24]  731 	ljmp	00158$
      0001EC                        732 00251$:
                                    733 ;	Receiver.c:110: down_led=1;}
                                    734 ;	assignBit
      0001EC D2 A4            [12]  735 	setb	_P2_4
                                    736 ;	Receiver.c:111: break;
      0001EE 02 02 ED         [24]  737 	ljmp	00158$
                                    738 ;	Receiver.c:112: case 6:	up_led_main =0;center_led =0;down_led_main=1;		
      0001F1                        739 00119$:
                                    740 ;	assignBit
      0001F1 C2 81            [12]  741 	clr	_P0_1
                                    742 ;	assignBit
      0001F3 C2 80            [12]  743 	clr	_P0_0
                                    744 ;	assignBit
      0001F5 D2 A6            [12]  745 	setb	_P2_6
                                    746 ;	Receiver.c:113: if(auto_flag)
      0001F7 20 00 03         [24]  747 	jb	_auto_flag,00252$
      0001FA 02 02 ED         [24]  748 	ljmp	00158$
      0001FD                        749 00252$:
                                    750 ;	Receiver.c:114: {main_out2=0;down_led=1;}
                                    751 ;	assignBit
      0001FD C2 B7            [12]  752 	clr	_P3_7
                                    753 ;	assignBit
      0001FF D2 A4            [12]  754 	setb	_P2_4
                                    755 ;	Receiver.c:115: break;
      000201 02 02 ED         [24]  756 	ljmp	00158$
                                    757 ;	Receiver.c:116: case 7:up_led_main =0;center_led =1;down_led_main=1;
      000204                        758 00122$:
                                    759 ;	assignBit
      000204 C2 81            [12]  760 	clr	_P0_1
                                    761 ;	assignBit
      000206 D2 80            [12]  762 	setb	_P0_0
                                    763 ;	assignBit
      000208 D2 A6            [12]  764 	setb	_P2_6
                                    765 ;	Receiver.c:117: break;
      00020A 02 02 ED         [24]  766 	ljmp	00158$
                                    767 ;	Receiver.c:119: case 8:up_led_main =1;center_led =0;down_led_main=0;
      00020D                        768 00123$:
                                    769 ;	assignBit
      00020D D2 81            [12]  770 	setb	_P0_1
                                    771 ;	assignBit
      00020F C2 80            [12]  772 	clr	_P0_0
                                    773 ;	assignBit
      000211 C2 A6            [12]  774 	clr	_P2_6
                                    775 ;	Receiver.c:120: main_out1=1;main_out2=1;
                                    776 ;	assignBit
      000213 D2 B6            [12]  777 	setb	_P3_6
                                    778 ;	assignBit
      000215 D2 B7            [12]  779 	setb	_P3_7
                                    780 ;	Receiver.c:121: if(auto_flag)
      000217 20 00 03         [24]  781 	jb	_auto_flag,00253$
      00021A 02 02 ED         [24]  782 	ljmp	00158$
      00021D                        783 00253$:
                                    784 ;	Receiver.c:122: up_led=1;
                                    785 ;	assignBit
      00021D D2 A7            [12]  786 	setb	_P2_7
                                    787 ;	Receiver.c:123: break;
      00021F 02 02 ED         [24]  788 	ljmp	00158$
                                    789 ;	Receiver.c:125: case 9:	up_led_main =0;center_led =0;down_led_main=1;
      000222                        790 00126$:
                                    791 ;	assignBit
      000222 C2 81            [12]  792 	clr	_P0_1
                                    793 ;	assignBit
      000224 C2 80            [12]  794 	clr	_P0_0
                                    795 ;	assignBit
      000226 D2 A6            [12]  796 	setb	_P2_6
                                    797 ;	Receiver.c:126: main_out1=1;main_out2=1;
                                    798 ;	assignBit
      000228 D2 B6            [12]  799 	setb	_P3_6
                                    800 ;	assignBit
      00022A D2 B7            [12]  801 	setb	_P3_7
                                    802 ;	Receiver.c:127: if(auto_flag)
      00022C 20 00 03         [24]  803 	jb	_auto_flag,00254$
      00022F 02 02 ED         [24]  804 	ljmp	00158$
      000232                        805 00254$:
                                    806 ;	Receiver.c:128: down_led=1;
                                    807 ;	assignBit
      000232 D2 A4            [12]  808 	setb	_P2_4
                                    809 ;	Receiver.c:129: break;
      000234 02 02 ED         [24]  810 	ljmp	00158$
                                    811 ;	Receiver.c:131: }	
      000237                        812 00154$:
                                    813 ;	Receiver.c:135: else if((timerCount > time_delay) &&(timerCount<time_delay*60)) // count for LED-ON delay
      000237 C3               [12]  814 	clr	c
      000238 E5 10            [12]  815 	mov	a,_time_delay
      00023A 95 0A            [12]  816 	subb	a,_timerCount
      00023C E5 11            [12]  817 	mov	a,(_time_delay + 1)
      00023E 64 80            [12]  818 	xrl	a,#0x80
      000240 85 0B F0         [24]  819 	mov	b,(_timerCount + 1)
      000243 63 F0 80         [24]  820 	xrl	b,#0x80
      000246 95 F0            [12]  821 	subb	a,b
      000248 40 03            [24]  822 	jc	00255$
      00024A 02 02 E8         [24]  823 	ljmp	00150$
      00024D                        824 00255$:
      00024D 85 10 22         [24]  825 	mov	__mulint_PARM_2,_time_delay
      000250 85 11 23         [24]  826 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      000253 90 00 3C         [24]  827 	mov	dptr,#0x003c
      000256 12 08 73         [24]  828 	lcall	__mulint
      000259 AE 82            [24]  829 	mov	r6,dpl
      00025B AF 83            [24]  830 	mov	r7,dph
      00025D C3               [12]  831 	clr	c
      00025E E5 0A            [12]  832 	mov	a,_timerCount
      000260 9E               [12]  833 	subb	a,r6
      000261 E5 0B            [12]  834 	mov	a,(_timerCount + 1)
      000263 64 80            [12]  835 	xrl	a,#0x80
      000265 8F F0            [24]  836 	mov	b,r7
      000267 63 F0 80         [24]  837 	xrl	b,#0x80
      00026A 95 F0            [12]  838 	subb	a,b
      00026C 40 03            [24]  839 	jc	00256$
      00026E 02 02 E8         [24]  840 	ljmp	00150$
      000271                        841 00256$:
                                    842 ;	Receiver.c:137: switch(state)
      000271 E5 1B            [12]  843 	mov	a,(_state + 1)
      000273 30 E7 03         [24]  844 	jnb	acc.7,00257$
      000276 02 02 ED         [24]  845 	ljmp	00158$
      000279                        846 00257$:
      000279 C3               [12]  847 	clr	c
      00027A 74 09            [12]  848 	mov	a,#0x09
      00027C 95 1A            [12]  849 	subb	a,_state
      00027E 74 80            [12]  850 	mov	a,#(0x00 ^ 0x80)
      000280 85 1B F0         [24]  851 	mov	b,(_state + 1)
      000283 63 F0 80         [24]  852 	xrl	b,#0x80
      000286 95 F0            [12]  853 	subb	a,b
      000288 50 03            [24]  854 	jnc	00258$
      00028A 02 02 ED         [24]  855 	ljmp	00158$
      00028D                        856 00258$:
      00028D E5 1A            [12]  857 	mov	a,_state
      00028F 24 0B            [12]  858 	add	a,#(00259$-3-.)
      000291 83               [24]  859 	movc	a,@a+pc
      000292 F5 82            [12]  860 	mov	dpl,a
      000294 E5 1A            [12]  861 	mov	a,_state
      000296 24 0E            [12]  862 	add	a,#(00260$-3-.)
      000298 83               [24]  863 	movc	a,@a+pc
      000299 F5 83            [12]  864 	mov	dph,a
      00029B E4               [12]  865 	clr	a
      00029C 73               [24]  866 	jmp	@a+dptr
      00029D                        867 00259$:
      00029D B1                     868 	.db	00131$
      00029E C6                     869 	.db	00141$
      00029F BA                     870 	.db	00140$
      0002A0 BA                     871 	.db	00140$
      0002A1 BA                     872 	.db	00140$
      0002A2 BA                     873 	.db	00140$
      0002A3 D7                     874 	.db	00144$
      0002A4 BA                     875 	.db	00140$
      0002A5 BA                     876 	.db	00140$
      0002A6 BA                     877 	.db	00140$
      0002A7                        878 00260$:
      0002A7 02                     879 	.db	00131$>>8
      0002A8 02                     880 	.db	00141$>>8
      0002A9 02                     881 	.db	00140$>>8
      0002AA 02                     882 	.db	00140$>>8
      0002AB 02                     883 	.db	00140$>>8
      0002AC 02                     884 	.db	00140$>>8
      0002AD 02                     885 	.db	00144$>>8
      0002AE 02                     886 	.db	00140$>>8
      0002AF 02                     887 	.db	00140$>>8
      0002B0 02                     888 	.db	00140$>>8
                                    889 ;	Receiver.c:139: case 0:	if(auto_flag)	{auto_led=0;main_out1=1;main_out2=1;}
      0002B1                        890 00131$:
      0002B1 30 00 06         [24]  891 	jnb	_auto_flag,00140$
                                    892 ;	assignBit
      0002B4 C2 A1            [12]  893 	clr	_P2_1
                                    894 ;	assignBit
      0002B6 D2 B6            [12]  895 	setb	_P3_6
                                    896 ;	assignBit
      0002B8 D2 B7            [12]  897 	setb	_P3_7
                                    898 ;	Receiver.c:146: case 9:up_led_main =0;center_led =0;down_led_main=0;up_led=0;down_led=0;break;
      0002BA                        899 00140$:
                                    900 ;	assignBit
      0002BA C2 81            [12]  901 	clr	_P0_1
                                    902 ;	assignBit
      0002BC C2 80            [12]  903 	clr	_P0_0
                                    904 ;	assignBit
      0002BE C2 A6            [12]  905 	clr	_P2_6
                                    906 ;	assignBit
      0002C0 C2 A7            [12]  907 	clr	_P2_7
                                    908 ;	assignBit
      0002C2 C2 A4            [12]  909 	clr	_P2_4
                                    910 ;	Receiver.c:147: case 1:up_led_main =1;center_led =0;down_led_main=0;
      0002C4 80 27            [24]  911 	sjmp	00158$
      0002C6                        912 00141$:
                                    913 ;	assignBit
      0002C6 D2 81            [12]  914 	setb	_P0_1
                                    915 ;	assignBit
      0002C8 C2 80            [12]  916 	clr	_P0_0
                                    917 ;	assignBit
      0002CA C2 A6            [12]  918 	clr	_P2_6
                                    919 ;	Receiver.c:148: if(auto_flag)	{main_out1=0;up_led=1;down_led=0;}break;
      0002CC 30 00 1E         [24]  920 	jnb	_auto_flag,00158$
                                    921 ;	assignBit
      0002CF C2 B6            [12]  922 	clr	_P3_6
                                    923 ;	assignBit
      0002D1 D2 A7            [12]  924 	setb	_P2_7
                                    925 ;	assignBit
      0002D3 C2 A4            [12]  926 	clr	_P2_4
                                    927 ;	Receiver.c:150: case 6:	up_led_main =0;center_led =0;down_led_main=1;
      0002D5 80 16            [24]  928 	sjmp	00158$
      0002D7                        929 00144$:
                                    930 ;	assignBit
      0002D7 C2 81            [12]  931 	clr	_P0_1
                                    932 ;	assignBit
      0002D9 C2 80            [12]  933 	clr	_P0_0
                                    934 ;	assignBit
      0002DB D2 A6            [12]  935 	setb	_P2_6
                                    936 ;	Receiver.c:151: up_led=0;if(auto_flag){main_out2=0;down_led=1;}break;
                                    937 ;	assignBit
      0002DD C2 A7            [12]  938 	clr	_P2_7
      0002DF 30 00 0B         [24]  939 	jnb	_auto_flag,00158$
                                    940 ;	assignBit
      0002E2 C2 B7            [12]  941 	clr	_P3_7
                                    942 ;	assignBit
      0002E4 D2 A4            [12]  943 	setb	_P2_4
                                    944 ;	Receiver.c:154: }
      0002E6 80 05            [24]  945 	sjmp	00158$
      0002E8                        946 00150$:
                                    947 ;	Receiver.c:158: {timerCount = 0;}
      0002E8 E4               [12]  948 	clr	a
      0002E9 F5 0A            [12]  949 	mov	_timerCount,a
      0002EB F5 0B            [12]  950 	mov	(_timerCount + 1),a
      0002ED                        951 00158$:
                                    952 ;	Receiver.c:160: } //timer end
      0002ED D0 D0            [24]  953 	pop	psw
      0002EF D0 00            [24]  954 	pop	(0+0)
      0002F1 D0 01            [24]  955 	pop	(0+1)
      0002F3 D0 02            [24]  956 	pop	(0+2)
      0002F5 D0 03            [24]  957 	pop	(0+3)
      0002F7 D0 04            [24]  958 	pop	(0+4)
      0002F9 D0 05            [24]  959 	pop	(0+5)
      0002FB D0 06            [24]  960 	pop	(0+6)
      0002FD D0 07            [24]  961 	pop	(0+7)
      0002FF D0 83            [24]  962 	pop	dph
      000301 D0 82            [24]  963 	pop	dpl
      000303 D0 F0            [24]  964 	pop	b
      000305 D0 E0            [24]  965 	pop	acc
      000307 D0 21            [24]  966 	pop	bits
      000309 32               [24]  967 	reti
                                    968 ;------------------------------------------------------------
                                    969 ;Allocation info for local variables in function 'timer1_ISR'
                                    970 ;------------------------------------------------------------
                                    971 ;	Receiver.c:163: void timer1_ISR (void) __interrupt 5
                                    972 ;	-----------------------------------------
                                    973 ;	 function timer1_ISR
                                    974 ;	-----------------------------------------
      00030A                        975 _timer1_ISR:
      00030A C0 21            [24]  976 	push	bits
      00030C C0 E0            [24]  977 	push	acc
      00030E C0 F0            [24]  978 	push	b
      000310 C0 82            [24]  979 	push	dpl
      000312 C0 83            [24]  980 	push	dph
      000314 C0 07            [24]  981 	push	(0+7)
      000316 C0 06            [24]  982 	push	(0+6)
      000318 C0 05            [24]  983 	push	(0+5)
      00031A C0 04            [24]  984 	push	(0+4)
      00031C C0 03            [24]  985 	push	(0+3)
      00031E C0 02            [24]  986 	push	(0+2)
      000320 C0 01            [24]  987 	push	(0+1)
      000322 C0 00            [24]  988 	push	(0+0)
      000324 C0 D0            [24]  989 	push	psw
      000326 75 D0 00         [24]  990 	mov	psw,#0x00
                                    991 ;	Receiver.c:165: TF2 = 0;            /* Clear the interrupt request */
                                    992 ;	assignBit
      000329 C2 CF            [12]  993 	clr	_TF2
                                    994 ;	Receiver.c:166: timerCount2++;
      00032B AE 0E            [24]  995 	mov	r6,_timerCount2
      00032D AF 0F            [24]  996 	mov	r7,(_timerCount2 + 1)
      00032F 74 01            [12]  997 	mov	a,#0x01
      000331 2E               [12]  998 	add	a,r6
      000332 F5 0E            [12]  999 	mov	_timerCount2,a
      000334 E4               [12] 1000 	clr	a
      000335 3F               [12] 1001 	addc	a,r7
      000336 F5 0F            [12] 1002 	mov	(_timerCount2 + 1),a
                                   1003 ;	Receiver.c:167: serialCount++;
      000338 AE 0C            [24] 1004 	mov	r6,_serialCount
      00033A AF 0D            [24] 1005 	mov	r7,(_serialCount + 1)
      00033C 74 01            [12] 1006 	mov	a,#0x01
      00033E 2E               [12] 1007 	add	a,r6
      00033F F5 0C            [12] 1008 	mov	_serialCount,a
      000341 E4               [12] 1009 	clr	a
      000342 3F               [12] 1010 	addc	a,r7
      000343 F5 0D            [12] 1011 	mov	(_serialCount + 1),a
                                   1012 ;	Receiver.c:168: rst_out=!rst_out;
      000345 B2 96            [12] 1013 	cpl	_P1_6
                                   1014 ;	Receiver.c:169: if(dim1_val)
      000347 E5 16            [12] 1015 	mov	a,_dim1_val
      000349 45 17            [12] 1016 	orl	a,(_dim1_val + 1)
      00034B 60 12            [24] 1017 	jz	00105$
                                   1018 ;	Receiver.c:170: {dim1_val--;dim_out=1;}
      00034D AE 16            [24] 1019 	mov	r6,_dim1_val
      00034F AF 17            [24] 1020 	mov	r7,(_dim1_val + 1)
      000351 EE               [12] 1021 	mov	a,r6
      000352 24 FF            [12] 1022 	add	a,#0xff
      000354 F5 16            [12] 1023 	mov	_dim1_val,a
      000356 EF               [12] 1024 	mov	a,r7
      000357 34 FF            [12] 1025 	addc	a,#0xff
      000359 F5 17            [12] 1026 	mov	(_dim1_val + 1),a
                                   1027 ;	assignBit
      00035B D2 82            [12] 1028 	setb	_P0_2
      00035D 80 24            [24] 1029 	sjmp	00106$
      00035F                       1030 00105$:
                                   1031 ;	Receiver.c:172: else if(dim1_val2){dim1_val2--;dim_out=0;}
      00035F E5 18            [12] 1032 	mov	a,_dim1_val2
      000361 45 19            [12] 1033 	orl	a,(_dim1_val2 + 1)
      000363 60 12            [24] 1034 	jz	00102$
      000365 AE 18            [24] 1035 	mov	r6,_dim1_val2
      000367 AF 19            [24] 1036 	mov	r7,(_dim1_val2 + 1)
      000369 EE               [12] 1037 	mov	a,r6
      00036A 24 FF            [12] 1038 	add	a,#0xff
      00036C F5 18            [12] 1039 	mov	_dim1_val2,a
      00036E EF               [12] 1040 	mov	a,r7
      00036F 34 FF            [12] 1041 	addc	a,#0xff
      000371 F5 19            [12] 1042 	mov	(_dim1_val2 + 1),a
                                   1043 ;	assignBit
      000373 C2 82            [12] 1044 	clr	_P0_2
      000375 80 0C            [24] 1045 	sjmp	00106$
      000377                       1046 00102$:
                                   1047 ;	Receiver.c:174: else {dim1_val = dim_val;dim1_val2 = dim_val2;}    
      000377 85 12 16         [24] 1048 	mov	_dim1_val,_dim_val
      00037A 85 13 17         [24] 1049 	mov	(_dim1_val + 1),(_dim_val + 1)
      00037D 85 14 18         [24] 1050 	mov	_dim1_val2,_dim_val2
      000380 85 15 19         [24] 1051 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      000383                       1052 00106$:
                                   1053 ;	Receiver.c:176: if(auto_flag)
      000383 20 00 03         [24] 1054 	jb	_auto_flag,00245$
      000386 02 05 35         [24] 1055 	ljmp	00150$
      000389                       1056 00245$:
                                   1057 ;	Receiver.c:178: if(timerCount2<1000)
      000389 C3               [12] 1058 	clr	c
      00038A E5 0E            [12] 1059 	mov	a,_timerCount2
      00038C 94 E8            [12] 1060 	subb	a,#0xe8
      00038E E5 0F            [12] 1061 	mov	a,(_timerCount2 + 1)
      000390 64 80            [12] 1062 	xrl	a,#0x80
      000392 94 83            [12] 1063 	subb	a,#0x83
      000394 40 03            [24] 1064 	jc	00246$
      000396 02 04 60         [24] 1065 	ljmp	00147$
      000399                       1066 00246$:
                                   1067 ;	Receiver.c:180: switch(state)
      000399 74 02            [12] 1068 	mov	a,#0x02
      00039B B5 1A 06         [24] 1069 	cjne	a,_state,00247$
      00039E E4               [12] 1070 	clr	a
      00039F B5 1B 02         [24] 1071 	cjne	a,(_state + 1),00247$
      0003A2 80 24            [24] 1072 	sjmp	00107$
      0003A4                       1073 00247$:
      0003A4 74 03            [12] 1074 	mov	a,#0x03
      0003A6 B5 1A 06         [24] 1075 	cjne	a,_state,00248$
      0003A9 E4               [12] 1076 	clr	a
      0003AA B5 1B 02         [24] 1077 	cjne	a,(_state + 1),00248$
      0003AD 80 3F            [24] 1078 	sjmp	00111$
      0003AF                       1079 00248$:
      0003AF 74 04            [12] 1080 	mov	a,#0x04
      0003B1 B5 1A 06         [24] 1081 	cjne	a,_state,00249$
      0003B4 E4               [12] 1082 	clr	a
      0003B5 B5 1B 02         [24] 1083 	cjne	a,(_state + 1),00249$
      0003B8 80 5A            [24] 1084 	sjmp	00115$
      0003BA                       1085 00249$:
      0003BA 74 05            [12] 1086 	mov	a,#0x05
      0003BC B5 1A 06         [24] 1087 	cjne	a,_state,00250$
      0003BF E4               [12] 1088 	clr	a
      0003C0 B5 1B 02         [24] 1089 	cjne	a,(_state + 1),00250$
      0003C3 80 75            [24] 1090 	sjmp	00119$
      0003C5                       1091 00250$:
      0003C5 02 05 35         [24] 1092 	ljmp	00150$
                                   1093 ;	Receiver.c:182: case 2:	if(timerCount2%4){main_out1=1;main_out2=1;}
      0003C8                       1094 00107$:
      0003C8 75 22 04         [24] 1095 	mov	__modsint_PARM_2,#0x04
      0003CB 75 23 00         [24] 1096 	mov	(__modsint_PARM_2 + 1),#0x00
      0003CE 85 0E 82         [24] 1097 	mov	dpl,_timerCount2
      0003D1 85 0F 83         [24] 1098 	mov	dph,(_timerCount2 + 1)
      0003D4 12 08 DD         [24] 1099 	lcall	__modsint
      0003D7 E5 82            [12] 1100 	mov	a,dpl
      0003D9 85 83 F0         [24] 1101 	mov	b,dph
      0003DC 45 F0            [12] 1102 	orl	a,b
      0003DE 60 07            [24] 1103 	jz	00109$
                                   1104 ;	assignBit
      0003E0 D2 B6            [12] 1105 	setb	_P3_6
                                   1106 ;	assignBit
      0003E2 D2 B7            [12] 1107 	setb	_P3_7
      0003E4 02 05 35         [24] 1108 	ljmp	00150$
      0003E7                       1109 00109$:
                                   1110 ;	Receiver.c:183: else {main_out1=0;main_out2=1;}
                                   1111 ;	assignBit
      0003E7 C2 B6            [12] 1112 	clr	_P3_6
                                   1113 ;	assignBit
      0003E9 D2 B7            [12] 1114 	setb	_P3_7
                                   1115 ;	Receiver.c:184: break;
      0003EB 02 05 35         [24] 1116 	ljmp	00150$
                                   1117 ;	Receiver.c:186: case 3:	if(timerCount2%4){main_out1=1;main_out2=1;}
      0003EE                       1118 00111$:
      0003EE 75 22 04         [24] 1119 	mov	__modsint_PARM_2,#0x04
      0003F1 75 23 00         [24] 1120 	mov	(__modsint_PARM_2 + 1),#0x00
      0003F4 85 0E 82         [24] 1121 	mov	dpl,_timerCount2
      0003F7 85 0F 83         [24] 1122 	mov	dph,(_timerCount2 + 1)
      0003FA 12 08 DD         [24] 1123 	lcall	__modsint
      0003FD E5 82            [12] 1124 	mov	a,dpl
      0003FF 85 83 F0         [24] 1125 	mov	b,dph
      000402 45 F0            [12] 1126 	orl	a,b
      000404 60 07            [24] 1127 	jz	00113$
                                   1128 ;	assignBit
      000406 D2 B6            [12] 1129 	setb	_P3_6
                                   1130 ;	assignBit
      000408 D2 B7            [12] 1131 	setb	_P3_7
      00040A 02 05 35         [24] 1132 	ljmp	00150$
      00040D                       1133 00113$:
                                   1134 ;	Receiver.c:187: else {main_out1=0;main_out2=1;}
                                   1135 ;	assignBit
      00040D C2 B6            [12] 1136 	clr	_P3_6
                                   1137 ;	assignBit
      00040F D2 B7            [12] 1138 	setb	_P3_7
                                   1139 ;	Receiver.c:188: break;
      000411 02 05 35         [24] 1140 	ljmp	00150$
                                   1141 ;	Receiver.c:190: case 4:	if(timerCount2%4){main_out1=1;main_out2=1;}
      000414                       1142 00115$:
      000414 75 22 04         [24] 1143 	mov	__modsint_PARM_2,#0x04
      000417 75 23 00         [24] 1144 	mov	(__modsint_PARM_2 + 1),#0x00
      00041A 85 0E 82         [24] 1145 	mov	dpl,_timerCount2
      00041D 85 0F 83         [24] 1146 	mov	dph,(_timerCount2 + 1)
      000420 12 08 DD         [24] 1147 	lcall	__modsint
      000423 E5 82            [12] 1148 	mov	a,dpl
      000425 85 83 F0         [24] 1149 	mov	b,dph
      000428 45 F0            [12] 1150 	orl	a,b
      00042A 60 07            [24] 1151 	jz	00117$
                                   1152 ;	assignBit
      00042C D2 B6            [12] 1153 	setb	_P3_6
                                   1154 ;	assignBit
      00042E D2 B7            [12] 1155 	setb	_P3_7
      000430 02 05 35         [24] 1156 	ljmp	00150$
      000433                       1157 00117$:
                                   1158 ;	Receiver.c:191: else {main_out1=1;main_out2=0;}
                                   1159 ;	assignBit
      000433 D2 B6            [12] 1160 	setb	_P3_6
                                   1161 ;	assignBit
      000435 C2 B7            [12] 1162 	clr	_P3_7
                                   1163 ;	Receiver.c:192: break;
      000437 02 05 35         [24] 1164 	ljmp	00150$
                                   1165 ;	Receiver.c:194: case 5:	if(timerCount2%4){main_out1=1;main_out2=1;}
      00043A                       1166 00119$:
      00043A 75 22 04         [24] 1167 	mov	__modsint_PARM_2,#0x04
      00043D 75 23 00         [24] 1168 	mov	(__modsint_PARM_2 + 1),#0x00
      000440 85 0E 82         [24] 1169 	mov	dpl,_timerCount2
      000443 85 0F 83         [24] 1170 	mov	dph,(_timerCount2 + 1)
      000446 12 08 DD         [24] 1171 	lcall	__modsint
      000449 E5 82            [12] 1172 	mov	a,dpl
      00044B 85 83 F0         [24] 1173 	mov	b,dph
      00044E 45 F0            [12] 1174 	orl	a,b
      000450 60 07            [24] 1175 	jz	00121$
                                   1176 ;	assignBit
      000452 D2 B6            [12] 1177 	setb	_P3_6
                                   1178 ;	assignBit
      000454 D2 B7            [12] 1179 	setb	_P3_7
      000456 02 05 35         [24] 1180 	ljmp	00150$
      000459                       1181 00121$:
                                   1182 ;	Receiver.c:195: else {main_out1=1;main_out2=0;}
                                   1183 ;	assignBit
      000459 D2 B6            [12] 1184 	setb	_P3_6
                                   1185 ;	assignBit
      00045B C2 B7            [12] 1186 	clr	_P3_7
                                   1187 ;	Receiver.c:196: break;
      00045D 02 05 35         [24] 1188 	ljmp	00150$
                                   1189 ;	Receiver.c:199: }}
      000460                       1190 00147$:
                                   1191 ;	Receiver.c:201: else if(timerCount2<2000)
      000460 C3               [12] 1192 	clr	c
      000461 E5 0E            [12] 1193 	mov	a,_timerCount2
      000463 94 D0            [12] 1194 	subb	a,#0xd0
      000465 E5 0F            [12] 1195 	mov	a,(_timerCount2 + 1)
      000467 64 80            [12] 1196 	xrl	a,#0x80
      000469 94 87            [12] 1197 	subb	a,#0x87
      00046B 40 03            [24] 1198 	jc	00255$
      00046D 02 05 30         [24] 1199 	ljmp	00144$
      000470                       1200 00255$:
                                   1201 ;	Receiver.c:203: switch(state)
      000470 74 02            [12] 1202 	mov	a,#0x02
      000472 B5 1A 06         [24] 1203 	cjne	a,_state,00256$
      000475 E4               [12] 1204 	clr	a
      000476 B5 1B 02         [24] 1205 	cjne	a,(_state + 1),00256$
      000479 80 24            [24] 1206 	sjmp	00125$
      00047B                       1207 00256$:
      00047B 74 03            [12] 1208 	mov	a,#0x03
      00047D B5 1A 06         [24] 1209 	cjne	a,_state,00257$
      000480 E4               [12] 1210 	clr	a
      000481 B5 1B 02         [24] 1211 	cjne	a,(_state + 1),00257$
      000484 80 3E            [24] 1212 	sjmp	00129$
      000486                       1213 00257$:
      000486 74 04            [12] 1214 	mov	a,#0x04
      000488 B5 1A 06         [24] 1215 	cjne	a,_state,00258$
      00048B E4               [12] 1216 	clr	a
      00048C B5 1B 02         [24] 1217 	cjne	a,(_state + 1),00258$
      00048F 80 57            [24] 1218 	sjmp	00133$
      000491                       1219 00258$:
      000491 74 05            [12] 1220 	mov	a,#0x05
      000493 B5 1A 06         [24] 1221 	cjne	a,_state,00259$
      000496 E4               [12] 1222 	clr	a
      000497 B5 1B 02         [24] 1223 	cjne	a,(_state + 1),00259$
      00049A 80 70            [24] 1224 	sjmp	00137$
      00049C                       1225 00259$:
      00049C 02 05 35         [24] 1226 	ljmp	00150$
                                   1227 ;	Receiver.c:205: case 2:	if(timerCount2%10){main_out1=1;main_out2=1;}
      00049F                       1228 00125$:
      00049F 75 22 0A         [24] 1229 	mov	__modsint_PARM_2,#0x0a
      0004A2 75 23 00         [24] 1230 	mov	(__modsint_PARM_2 + 1),#0x00
      0004A5 85 0E 82         [24] 1231 	mov	dpl,_timerCount2
      0004A8 85 0F 83         [24] 1232 	mov	dph,(_timerCount2 + 1)
      0004AB 12 08 DD         [24] 1233 	lcall	__modsint
      0004AE E5 82            [12] 1234 	mov	a,dpl
      0004B0 85 83 F0         [24] 1235 	mov	b,dph
      0004B3 45 F0            [12] 1236 	orl	a,b
      0004B5 60 07            [24] 1237 	jz	00127$
                                   1238 ;	assignBit
      0004B7 D2 B6            [12] 1239 	setb	_P3_6
                                   1240 ;	assignBit
      0004B9 D2 B7            [12] 1241 	setb	_P3_7
      0004BB 02 05 35         [24] 1242 	ljmp	00150$
      0004BE                       1243 00127$:
                                   1244 ;	Receiver.c:206: else {main_out1=0;main_out2=1;}
                                   1245 ;	assignBit
      0004BE C2 B6            [12] 1246 	clr	_P3_6
                                   1247 ;	assignBit
      0004C0 D2 B7            [12] 1248 	setb	_P3_7
                                   1249 ;	Receiver.c:207: break;
                                   1250 ;	Receiver.c:209: case 3:	if(timerCount2%10){main_out1=1;main_out2=1;}
      0004C2 80 71            [24] 1251 	sjmp	00150$
      0004C4                       1252 00129$:
      0004C4 75 22 0A         [24] 1253 	mov	__modsint_PARM_2,#0x0a
      0004C7 75 23 00         [24] 1254 	mov	(__modsint_PARM_2 + 1),#0x00
      0004CA 85 0E 82         [24] 1255 	mov	dpl,_timerCount2
      0004CD 85 0F 83         [24] 1256 	mov	dph,(_timerCount2 + 1)
      0004D0 12 08 DD         [24] 1257 	lcall	__modsint
      0004D3 E5 82            [12] 1258 	mov	a,dpl
      0004D5 85 83 F0         [24] 1259 	mov	b,dph
      0004D8 45 F0            [12] 1260 	orl	a,b
      0004DA 60 06            [24] 1261 	jz	00131$
                                   1262 ;	assignBit
      0004DC D2 B6            [12] 1263 	setb	_P3_6
                                   1264 ;	assignBit
      0004DE D2 B7            [12] 1265 	setb	_P3_7
      0004E0 80 53            [24] 1266 	sjmp	00150$
      0004E2                       1267 00131$:
                                   1268 ;	Receiver.c:210: else {main_out1=0;main_out2=1;}
                                   1269 ;	assignBit
      0004E2 C2 B6            [12] 1270 	clr	_P3_6
                                   1271 ;	assignBit
      0004E4 D2 B7            [12] 1272 	setb	_P3_7
                                   1273 ;	Receiver.c:211: break;
                                   1274 ;	Receiver.c:213: case 4:	if(timerCount2%10){main_out1=1;main_out2=1;}
      0004E6 80 4D            [24] 1275 	sjmp	00150$
      0004E8                       1276 00133$:
      0004E8 75 22 0A         [24] 1277 	mov	__modsint_PARM_2,#0x0a
      0004EB 75 23 00         [24] 1278 	mov	(__modsint_PARM_2 + 1),#0x00
      0004EE 85 0E 82         [24] 1279 	mov	dpl,_timerCount2
      0004F1 85 0F 83         [24] 1280 	mov	dph,(_timerCount2 + 1)
      0004F4 12 08 DD         [24] 1281 	lcall	__modsint
      0004F7 E5 82            [12] 1282 	mov	a,dpl
      0004F9 85 83 F0         [24] 1283 	mov	b,dph
      0004FC 45 F0            [12] 1284 	orl	a,b
      0004FE 60 06            [24] 1285 	jz	00135$
                                   1286 ;	assignBit
      000500 D2 B6            [12] 1287 	setb	_P3_6
                                   1288 ;	assignBit
      000502 D2 B7            [12] 1289 	setb	_P3_7
      000504 80 2F            [24] 1290 	sjmp	00150$
      000506                       1291 00135$:
                                   1292 ;	Receiver.c:214: else {main_out1=1;main_out2=0;}
                                   1293 ;	assignBit
      000506 D2 B6            [12] 1294 	setb	_P3_6
                                   1295 ;	assignBit
      000508 C2 B7            [12] 1296 	clr	_P3_7
                                   1297 ;	Receiver.c:215: break;
                                   1298 ;	Receiver.c:217: case 5:	if(timerCount2%10){main_out1=1;main_out2=1;}
      00050A 80 29            [24] 1299 	sjmp	00150$
      00050C                       1300 00137$:
      00050C 75 22 0A         [24] 1301 	mov	__modsint_PARM_2,#0x0a
      00050F 75 23 00         [24] 1302 	mov	(__modsint_PARM_2 + 1),#0x00
      000512 85 0E 82         [24] 1303 	mov	dpl,_timerCount2
      000515 85 0F 83         [24] 1304 	mov	dph,(_timerCount2 + 1)
      000518 12 08 DD         [24] 1305 	lcall	__modsint
      00051B E5 82            [12] 1306 	mov	a,dpl
      00051D 85 83 F0         [24] 1307 	mov	b,dph
      000520 45 F0            [12] 1308 	orl	a,b
      000522 60 06            [24] 1309 	jz	00139$
                                   1310 ;	assignBit
      000524 D2 B6            [12] 1311 	setb	_P3_6
                                   1312 ;	assignBit
      000526 D2 B7            [12] 1313 	setb	_P3_7
      000528 80 0B            [24] 1314 	sjmp	00150$
      00052A                       1315 00139$:
                                   1316 ;	Receiver.c:218: else {main_out1=1;main_out2=0;}
                                   1317 ;	assignBit
      00052A D2 B6            [12] 1318 	setb	_P3_6
                                   1319 ;	assignBit
      00052C C2 B7            [12] 1320 	clr	_P3_7
                                   1321 ;	Receiver.c:219: break;
                                   1322 ;	Receiver.c:222: }}
      00052E 80 05            [24] 1323 	sjmp	00150$
      000530                       1324 00144$:
                                   1325 ;	Receiver.c:224: else timerCount2=0;	
      000530 E4               [12] 1326 	clr	a
      000531 F5 0E            [12] 1327 	mov	_timerCount2,a
      000533 F5 0F            [12] 1328 	mov	(_timerCount2 + 1),a
      000535                       1329 00150$:
                                   1330 ;	Receiver.c:228: if(timerCount2>4000)timerCount2=0;
      000535 C3               [12] 1331 	clr	c
      000536 74 A0            [12] 1332 	mov	a,#0xa0
      000538 95 0E            [12] 1333 	subb	a,_timerCount2
      00053A 74 8F            [12] 1334 	mov	a,#(0x0f ^ 0x80)
      00053C 85 0F F0         [24] 1335 	mov	b,(_timerCount2 + 1)
      00053F 63 F0 80         [24] 1336 	xrl	b,#0x80
      000542 95 F0            [12] 1337 	subb	a,b
      000544 50 05            [24] 1338 	jnc	00153$
      000546 E4               [12] 1339 	clr	a
      000547 F5 0E            [12] 1340 	mov	_timerCount2,a
      000549 F5 0F            [12] 1341 	mov	(_timerCount2 + 1),a
      00054B                       1342 00153$:
                                   1343 ;	Receiver.c:230: }//end timer2
      00054B D0 D0            [24] 1344 	pop	psw
      00054D D0 00            [24] 1345 	pop	(0+0)
      00054F D0 01            [24] 1346 	pop	(0+1)
      000551 D0 02            [24] 1347 	pop	(0+2)
      000553 D0 03            [24] 1348 	pop	(0+3)
      000555 D0 04            [24] 1349 	pop	(0+4)
      000557 D0 05            [24] 1350 	pop	(0+5)
      000559 D0 06            [24] 1351 	pop	(0+6)
      00055B D0 07            [24] 1352 	pop	(0+7)
      00055D D0 83            [24] 1353 	pop	dph
      00055F D0 82            [24] 1354 	pop	dpl
      000561 D0 F0            [24] 1355 	pop	b
      000563 D0 E0            [24] 1356 	pop	acc
      000565 D0 21            [24] 1357 	pop	bits
      000567 32               [24] 1358 	reti
                                   1359 ;------------------------------------------------------------
                                   1360 ;Allocation info for local variables in function 'main'
                                   1361 ;------------------------------------------------------------
                                   1362 ;	Receiver.c:234: void main()
                                   1363 ;	-----------------------------------------
                                   1364 ;	 function main
                                   1365 ;	-----------------------------------------
      000568                       1366 _main:
                                   1367 ;	Receiver.c:236: state=20;
      000568 75 1A 14         [24] 1368 	mov	_state,#0x14
      00056B 75 1B 00         [24] 1369 	mov	(_state + 1),#0x00
                                   1370 ;	Receiver.c:237: pwr_out=0;
                                   1371 ;	assignBit
      00056E C2 87            [12] 1372 	clr	_P0_7
                                   1373 ;	Receiver.c:241: T2CON = 0x80;                /* 10000000 */
      000570 75 C8 80         [24] 1374 	mov	_T2CON,#0x80
                                   1375 ;	Receiver.c:246: RCAP2L = 0x18;
      000573 75 CA 18         [24] 1376 	mov	_RCAP2L,#0x18
                                   1377 ;	Receiver.c:247: RCAP2H = 0xFE;
      000576 75 CB FE         [24] 1378 	mov	_RCAP2H,#0xfe
                                   1379 ;	Receiver.c:249: TL2 = RCAP2L;
      000579 85 CA CC         [24] 1380 	mov	_TL2,_RCAP2L
                                   1381 ;	Receiver.c:250: TH2 = RCAP2H;
      00057C 85 CB CD         [24] 1382 	mov	_TH2,_RCAP2H
                                   1383 ;	Receiver.c:254: ET2 = 1;                      /* Enable Timer 2 Interrupts */
                                   1384 ;	assignBit
      00057F D2 AD            [12] 1385 	setb	_ET2
                                   1386 ;	Receiver.c:255: TR2 = 1;                      /* Start Timer 2 Running */
                                   1387 ;	assignBit
      000581 D2 CA            [12] 1388 	setb	_TR2
                                   1389 ;	Receiver.c:258: InitTimer0();
      000583 12 07 8B         [24] 1390 	lcall	_InitTimer0
                                   1391 ;	Receiver.c:259: EA=1;
                                   1392 ;	assignBit
      000586 D2 AF            [12] 1393 	setb	_EA
                                   1394 ;	Receiver.c:260: startup();
      000588 12 05 9E         [24] 1395 	lcall	_startup
                                   1396 ;	Receiver.c:261: start=1;
      00058B 75 08 01         [24] 1397 	mov	_start,#0x01
                                   1398 ;	Receiver.c:262: UART_Init();
      00058E 12 06 24         [24] 1399 	lcall	_UART_Init
                                   1400 ;	Receiver.c:263: handshake();
      000591 12 06 37         [24] 1401 	lcall	_handshake
                                   1402 ;	Receiver.c:264: ES  = 1;      // Enable Serial INterrupt
                                   1403 ;	assignBit
      000594 D2 AC            [12] 1404 	setb	_ES
                                   1405 ;	Receiver.c:266: while(1)
      000596                       1406 00102$:
                                   1407 ;	Receiver.c:268: check_switches();
      000596 12 07 99         [24] 1408 	lcall	_check_switches
                                   1409 ;	Receiver.c:269: check_data();
      000599 12 06 60         [24] 1410 	lcall	_check_data
                                   1411 ;	Receiver.c:271: } //main
      00059C 80 F8            [24] 1412 	sjmp	00102$
                                   1413 ;------------------------------------------------------------
                                   1414 ;Allocation info for local variables in function 'startup'
                                   1415 ;------------------------------------------------------------
                                   1416 ;	Receiver.c:274: void startup()
                                   1417 ;	-----------------------------------------
                                   1418 ;	 function startup
                                   1419 ;	-----------------------------------------
      00059E                       1420 _startup:
                                   1421 ;	Receiver.c:276: pwr_key=1;
                                   1422 ;	assignBit
      00059E D2 97            [12] 1423 	setb	_P1_7
                                   1424 ;	Receiver.c:277: dim_key=1;
                                   1425 ;	assignBit
      0005A0 D2 94            [12] 1426 	setb	_P1_4
                                   1427 ;	Receiver.c:278: ac_key=1;
                                   1428 ;	assignBit
      0005A2 D2 93            [12] 1429 	setb	_P1_3
                                   1430 ;	Receiver.c:279: auto_key=1;
                                   1431 ;	assignBit
      0005A4 D2 92            [12] 1432 	setb	_P1_2
                                   1433 ;	Receiver.c:280: manual_up_key=1;
                                   1434 ;	assignBit
      0005A6 D2 90            [12] 1435 	setb	_P1_0
                                   1436 ;	Receiver.c:281: manual_down_key=1;
                                   1437 ;	assignBit
      0005A8 D2 91            [12] 1438 	setb	_P1_1
                                   1439 ;	Receiver.c:283: main_out1=0;
                                   1440 ;	assignBit
      0005AA C2 B6            [12] 1441 	clr	_P3_6
                                   1442 ;	Receiver.c:284: main_out2=0;
                                   1443 ;	assignBit
      0005AC C2 B7            [12] 1444 	clr	_P3_7
                                   1445 ;	Receiver.c:285: pwr_out=0;
                                   1446 ;	assignBit
      0005AE C2 87            [12] 1447 	clr	_P0_7
                                   1448 ;	Receiver.c:286: rst_out=0;
                                   1449 ;	assignBit
      0005B0 C2 96            [12] 1450 	clr	_P1_6
                                   1451 ;	Receiver.c:287: dim_out=0;
                                   1452 ;	assignBit
      0005B2 C2 82            [12] 1453 	clr	_P0_2
                                   1454 ;	Receiver.c:288: pwr_led=0;
                                   1455 ;	assignBit
      0005B4 C2 A0            [12] 1456 	clr	_P2_0
                                   1457 ;	Receiver.c:289: auto_led=0;
                                   1458 ;	assignBit
      0005B6 C2 A1            [12] 1459 	clr	_P2_1
                                   1460 ;	Receiver.c:290: ac_led_up=0;
                                   1461 ;	assignBit
      0005B8 C2 A2            [12] 1462 	clr	_P2_2
                                   1463 ;	Receiver.c:291: ac_led_down=0;
                                   1464 ;	assignBit
      0005BA C2 A3            [12] 1465 	clr	_P2_3
                                   1466 ;	Receiver.c:292: up_led=0;
                                   1467 ;	assignBit
      0005BC C2 A7            [12] 1468 	clr	_P2_7
                                   1469 ;	Receiver.c:293: down_led=0;
                                   1470 ;	assignBit
      0005BE C2 A4            [12] 1471 	clr	_P2_4
                                   1472 ;	Receiver.c:295: main_out1=1;
                                   1473 ;	assignBit
      0005C0 D2 B6            [12] 1474 	setb	_P3_6
                                   1475 ;	Receiver.c:296: main_out2=1;
                                   1476 ;	assignBit
      0005C2 D2 B7            [12] 1477 	setb	_P3_7
                                   1478 ;	Receiver.c:297: pwr_led=1;
                                   1479 ;	assignBit
      0005C4 D2 A0            [12] 1480 	setb	_P2_0
                                   1481 ;	Receiver.c:298: auto_led=0;
                                   1482 ;	assignBit
      0005C6 C2 A1            [12] 1483 	clr	_P2_1
                                   1484 ;	Receiver.c:299: ac_led_up=1;ac_led_down=0;
                                   1485 ;	assignBit
      0005C8 D2 A2            [12] 1486 	setb	_P2_2
                                   1487 ;	assignBit
      0005CA C2 A3            [12] 1488 	clr	_P2_3
                                   1489 ;	Receiver.c:300: auto_flag = 0;
                                   1490 ;	assignBit
      0005CC C2 00            [12] 1491 	clr	_auto_flag
                                   1492 ;	Receiver.c:301: dim_out=1;
                                   1493 ;	assignBit
      0005CE D2 82            [12] 1494 	setb	_P0_2
                                   1495 ;	Receiver.c:302: up_led_main =0;center_led =0;down_led_main=1;
                                   1496 ;	assignBit
      0005D0 C2 81            [12] 1497 	clr	_P0_1
                                   1498 ;	assignBit
      0005D2 C2 80            [12] 1499 	clr	_P0_0
                                   1500 ;	assignBit
      0005D4 D2 A6            [12] 1501 	setb	_P2_6
                                   1502 ;	Receiver.c:303: delay();delay();
      0005D6 12 05 FB         [24] 1503 	lcall	_delay
      0005D9 12 05 FB         [24] 1504 	lcall	_delay
                                   1505 ;	Receiver.c:304: up_led_main =0;center_led =1;down_led_main=0;
                                   1506 ;	assignBit
      0005DC C2 81            [12] 1507 	clr	_P0_1
                                   1508 ;	assignBit
      0005DE D2 80            [12] 1509 	setb	_P0_0
                                   1510 ;	assignBit
      0005E0 C2 A6            [12] 1511 	clr	_P2_6
                                   1512 ;	Receiver.c:305: delay();delay();
      0005E2 12 05 FB         [24] 1513 	lcall	_delay
      0005E5 12 05 FB         [24] 1514 	lcall	_delay
                                   1515 ;	Receiver.c:306: up_led_main =1;center_led =0;down_led_main=0;
                                   1516 ;	assignBit
      0005E8 D2 81            [12] 1517 	setb	_P0_1
                                   1518 ;	assignBit
      0005EA C2 80            [12] 1519 	clr	_P0_0
                                   1520 ;	assignBit
      0005EC C2 A6            [12] 1521 	clr	_P2_6
                                   1522 ;	Receiver.c:307: delay();delay();
      0005EE 12 05 FB         [24] 1523 	lcall	_delay
      0005F1 12 05 FB         [24] 1524 	lcall	_delay
                                   1525 ;	Receiver.c:308: up_led_main =0;center_led =0;down_led_main=0;
                                   1526 ;	assignBit
      0005F4 C2 81            [12] 1527 	clr	_P0_1
                                   1528 ;	assignBit
      0005F6 C2 80            [12] 1529 	clr	_P0_0
                                   1530 ;	assignBit
      0005F8 C2 A6            [12] 1531 	clr	_P2_6
                                   1532 ;	Receiver.c:309: }
      0005FA 22               [24] 1533 	ret
                                   1534 ;------------------------------------------------------------
                                   1535 ;Allocation info for local variables in function 'delay'
                                   1536 ;------------------------------------------------------------
                                   1537 ;i                         Allocated to registers r6 r7 
                                   1538 ;j                         Allocated to registers r4 r5 
                                   1539 ;------------------------------------------------------------
                                   1540 ;	Receiver.c:311: void delay()
                                   1541 ;	-----------------------------------------
                                   1542 ;	 function delay
                                   1543 ;	-----------------------------------------
      0005FB                       1544 _delay:
                                   1545 ;	Receiver.c:314: for(i=0;i<0x33;i++)
      0005FB 7E 00            [12] 1546 	mov	r6,#0x00
      0005FD 7F 00            [12] 1547 	mov	r7,#0x00
      0005FF                       1548 00106$:
                                   1549 ;	Receiver.c:315: for(j=0;j<0xff;j++);
      0005FF 7C FF            [12] 1550 	mov	r4,#0xff
      000601 7D 00            [12] 1551 	mov	r5,#0x00
      000603                       1552 00105$:
      000603 EC               [12] 1553 	mov	a,r4
      000604 24 FF            [12] 1554 	add	a,#0xff
      000606 FA               [12] 1555 	mov	r2,a
      000607 ED               [12] 1556 	mov	a,r5
      000608 34 FF            [12] 1557 	addc	a,#0xff
      00060A FB               [12] 1558 	mov	r3,a
      00060B 8A 04            [24] 1559 	mov	ar4,r2
      00060D 8B 05            [24] 1560 	mov	ar5,r3
      00060F EA               [12] 1561 	mov	a,r2
      000610 4B               [12] 1562 	orl	a,r3
      000611 70 F0            [24] 1563 	jnz	00105$
                                   1564 ;	Receiver.c:314: for(i=0;i<0x33;i++)
      000613 0E               [12] 1565 	inc	r6
      000614 BE 00 01         [24] 1566 	cjne	r6,#0x00,00124$
      000617 0F               [12] 1567 	inc	r7
      000618                       1568 00124$:
      000618 C3               [12] 1569 	clr	c
      000619 EE               [12] 1570 	mov	a,r6
      00061A 94 33            [12] 1571 	subb	a,#0x33
      00061C EF               [12] 1572 	mov	a,r7
      00061D 64 80            [12] 1573 	xrl	a,#0x80
      00061F 94 80            [12] 1574 	subb	a,#0x80
      000621 40 DC            [24] 1575 	jc	00106$
                                   1576 ;	Receiver.c:316: }
      000623 22               [24] 1577 	ret
                                   1578 ;------------------------------------------------------------
                                   1579 ;Allocation info for local variables in function 'UART_Init'
                                   1580 ;------------------------------------------------------------
                                   1581 ;	Receiver.c:319: void UART_Init()
                                   1582 ;	-----------------------------------------
                                   1583 ;	 function UART_Init
                                   1584 ;	-----------------------------------------
      000624                       1585 _UART_Init:
                                   1586 ;	Receiver.c:321: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      000624 75 89 20         [24] 1587 	mov	_TMOD,#0x20
                                   1588 ;	Receiver.c:322: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      000627 75 8D FD         [24] 1589 	mov	_TH1,#0xfd
                                   1590 ;	Receiver.c:323: SCON = 0x50;		/* Mode 1, reception enable */
      00062A 75 98 50         [24] 1591 	mov	_SCON,#0x50
                                   1592 ;	Receiver.c:324: TR1 = 1;		/* Start timer 1 */
                                   1593 ;	assignBit
      00062D D2 8E            [12] 1594 	setb	_TR1
                                   1595 ;	Receiver.c:325: }
      00062F 22               [24] 1596 	ret
                                   1597 ;------------------------------------------------------------
                                   1598 ;Allocation info for local variables in function 'Transmit_data'
                                   1599 ;------------------------------------------------------------
                                   1600 ;tx_data                   Allocated to registers 
                                   1601 ;------------------------------------------------------------
                                   1602 ;	Receiver.c:328: void Transmit_data(char tx_data)
                                   1603 ;	-----------------------------------------
                                   1604 ;	 function Transmit_data
                                   1605 ;	-----------------------------------------
      000630                       1606 _Transmit_data:
      000630 85 82 99         [24] 1607 	mov	_SBUF,dpl
                                   1608 ;	Receiver.c:331: while (TI==0);		/* Wait until stop bit transmit */
      000633                       1609 00101$:
      000633 30 99 FD         [24] 1610 	jnb	_TI,00101$
                                   1611 ;	Receiver.c:332: }
      000636 22               [24] 1612 	ret
                                   1613 ;------------------------------------------------------------
                                   1614 ;Allocation info for local variables in function 'handshake'
                                   1615 ;------------------------------------------------------------
                                   1616 ;	Receiver.c:335: void handshake()
                                   1617 ;	-----------------------------------------
                                   1618 ;	 function handshake
                                   1619 ;	-----------------------------------------
      000637                       1620 _handshake:
                                   1621 ;	Receiver.c:337: while(data_r!='y')
      000637                       1622 00101$:
      000637 74 79            [12] 1623 	mov	a,#0x79
      000639 B5 09 02         [24] 1624 	cjne	a,_data_r,00114$
      00063C 80 19            [24] 1625 	sjmp	00103$
      00063E                       1626 00114$:
                                   1627 ;	Receiver.c:339: state=20;
      00063E 75 1A 14         [24] 1628 	mov	_state,#0x14
      000641 75 1B 00         [24] 1629 	mov	(_state + 1),#0x00
                                   1630 ;	Receiver.c:340: delay();
      000644 12 05 FB         [24] 1631 	lcall	_delay
                                   1632 ;	Receiver.c:341: delay();
      000647 12 05 FB         [24] 1633 	lcall	_delay
                                   1634 ;	Receiver.c:342: Transmit_data('x');
      00064A 75 82 78         [24] 1635 	mov	dpl,#0x78
      00064D 12 06 30         [24] 1636 	lcall	_Transmit_data
                                   1637 ;	Receiver.c:343: data_r=SBUF;
      000650 85 99 09         [24] 1638 	mov	_data_r,_SBUF
                                   1639 ;	Receiver.c:344: RI = 0;
                                   1640 ;	assignBit
      000653 C2 98            [12] 1641 	clr	_RI
      000655 80 E0            [24] 1642 	sjmp	00101$
      000657                       1643 00103$:
                                   1644 ;	Receiver.c:346: delay();
      000657 12 05 FB         [24] 1645 	lcall	_delay
                                   1646 ;	Receiver.c:347: Transmit_data('m');
      00065A 75 82 6D         [24] 1647 	mov	dpl,#0x6d
                                   1648 ;	Receiver.c:348: }
      00065D 02 06 30         [24] 1649 	ljmp	_Transmit_data
                                   1650 ;------------------------------------------------------------
                                   1651 ;Allocation info for local variables in function 'check_data'
                                   1652 ;------------------------------------------------------------
                                   1653 ;	Receiver.c:350: void check_data()
                                   1654 ;	-----------------------------------------
                                   1655 ;	 function check_data
                                   1656 ;	-----------------------------------------
      000660                       1657 _check_data:
                                   1658 ;	Receiver.c:352: switch(data_r)
      000660 AF 09            [24] 1659 	mov	r7,_data_r
      000662 BF 61 02         [24] 1660 	cjne	r7,#0x61,00177$
      000665 80 48            [24] 1661 	sjmp	00102$
      000667                       1662 00177$:
      000667 BF 62 02         [24] 1663 	cjne	r7,#0x62,00178$
      00066A 80 52            [24] 1664 	sjmp	00103$
      00066C                       1665 00178$:
      00066C BF 63 02         [24] 1666 	cjne	r7,#0x63,00179$
      00066F 80 5C            [24] 1667 	sjmp	00104$
      000671                       1668 00179$:
      000671 BF 64 02         [24] 1669 	cjne	r7,#0x64,00180$
      000674 80 66            [24] 1670 	sjmp	00105$
      000676                       1671 00180$:
      000676 BF 65 02         [24] 1672 	cjne	r7,#0x65,00181$
      000679 80 70            [24] 1673 	sjmp	00106$
      00067B                       1674 00181$:
      00067B BF 66 02         [24] 1675 	cjne	r7,#0x66,00182$
      00067E 80 7A            [24] 1676 	sjmp	00107$
      000680                       1677 00182$:
      000680 BF 67 03         [24] 1678 	cjne	r7,#0x67,00183$
      000683 02 07 08         [24] 1679 	ljmp	00108$
      000686                       1680 00183$:
      000686 BF 6C 02         [24] 1681 	cjne	r7,#0x6c,00184$
      000689 80 15            [24] 1682 	sjmp	00101$
      00068B                       1683 00184$:
      00068B BF 6E 03         [24] 1684 	cjne	r7,#0x6e,00185$
      00068E 02 07 16         [24] 1685 	ljmp	00109$
      000691                       1686 00185$:
      000691 BF 71 03         [24] 1687 	cjne	r7,#0x71,00186$
      000694 02 07 32         [24] 1688 	ljmp	00111$
      000697                       1689 00186$:
      000697 BF 75 03         [24] 1690 	cjne	r7,#0x75,00187$
      00069A 02 07 24         [24] 1691 	ljmp	00110$
      00069D                       1692 00187$:
      00069D 02 07 71         [24] 1693 	ljmp	00116$
                                   1694 ;	Receiver.c:354: case 'l':time_delay=30;state = 0;auto_led=0;break;
      0006A0                       1695 00101$:
      0006A0 75 10 1E         [24] 1696 	mov	_time_delay,#0x1e
      0006A3 E4               [12] 1697 	clr	a
      0006A4 F5 11            [12] 1698 	mov	(_time_delay + 1),a
      0006A6 F5 1A            [12] 1699 	mov	_state,a
      0006A8 F5 1B            [12] 1700 	mov	(_state + 1),a
                                   1701 ;	assignBit
      0006AA C2 A1            [12] 1702 	clr	_P2_1
      0006AC 02 07 71         [24] 1703 	ljmp	00116$
                                   1704 ;	Receiver.c:356: case 'a':time_delay=20;state = 1;	
      0006AF                       1705 00102$:
      0006AF 75 10 14         [24] 1706 	mov	_time_delay,#0x14
      0006B2 75 11 00         [24] 1707 	mov	(_time_delay + 1),#0x00
      0006B5 75 1A 01         [24] 1708 	mov	_state,#0x01
      0006B8 75 1B 00         [24] 1709 	mov	(_state + 1),#0x00
                                   1710 ;	Receiver.c:357: break;
      0006BB 02 07 71         [24] 1711 	ljmp	00116$
                                   1712 ;	Receiver.c:359: case 'b':time_delay=10;state = 2;
      0006BE                       1713 00103$:
      0006BE 75 10 0A         [24] 1714 	mov	_time_delay,#0x0a
      0006C1 75 11 00         [24] 1715 	mov	(_time_delay + 1),#0x00
      0006C4 75 1A 02         [24] 1716 	mov	_state,#0x02
      0006C7 75 1B 00         [24] 1717 	mov	(_state + 1),#0x00
                                   1718 ;	Receiver.c:360: break;
      0006CA 02 07 71         [24] 1719 	ljmp	00116$
                                   1720 ;	Receiver.c:362: case 'c':time_delay=7 ;state = 3;
      0006CD                       1721 00104$:
      0006CD 75 10 07         [24] 1722 	mov	_time_delay,#0x07
      0006D0 75 11 00         [24] 1723 	mov	(_time_delay + 1),#0x00
      0006D3 75 1A 03         [24] 1724 	mov	_state,#0x03
      0006D6 75 1B 00         [24] 1725 	mov	(_state + 1),#0x00
                                   1726 ;	Receiver.c:363: break;
      0006D9 02 07 71         [24] 1727 	ljmp	00116$
                                   1728 ;	Receiver.c:365: case 'd':time_delay=7 ;state = 7;
      0006DC                       1729 00105$:
      0006DC 75 10 07         [24] 1730 	mov	_time_delay,#0x07
      0006DF 75 11 00         [24] 1731 	mov	(_time_delay + 1),#0x00
      0006E2 75 1A 07         [24] 1732 	mov	_state,#0x07
      0006E5 75 1B 00         [24] 1733 	mov	(_state + 1),#0x00
                                   1734 ;	Receiver.c:366: break;
      0006E8 02 07 71         [24] 1735 	ljmp	00116$
                                   1736 ;	Receiver.c:368: case 'e':time_delay=7 ;state = 4;
      0006EB                       1737 00106$:
      0006EB 75 10 07         [24] 1738 	mov	_time_delay,#0x07
      0006EE 75 11 00         [24] 1739 	mov	(_time_delay + 1),#0x00
      0006F1 75 1A 04         [24] 1740 	mov	_state,#0x04
      0006F4 75 1B 00         [24] 1741 	mov	(_state + 1),#0x00
                                   1742 ;	Receiver.c:369: break;
      0006F7 02 07 71         [24] 1743 	ljmp	00116$
                                   1744 ;	Receiver.c:371: case 'f':time_delay=10;state = 5;
      0006FA                       1745 00107$:
      0006FA 75 10 0A         [24] 1746 	mov	_time_delay,#0x0a
      0006FD 75 11 00         [24] 1747 	mov	(_time_delay + 1),#0x00
      000700 75 1A 05         [24] 1748 	mov	_state,#0x05
      000703 75 1B 00         [24] 1749 	mov	(_state + 1),#0x00
                                   1750 ;	Receiver.c:372: break;
                                   1751 ;	Receiver.c:374: case 'g':time_delay=20;state = 6;
      000706 80 69            [24] 1752 	sjmp	00116$
      000708                       1753 00108$:
      000708 75 10 14         [24] 1754 	mov	_time_delay,#0x14
      00070B 75 11 00         [24] 1755 	mov	(_time_delay + 1),#0x00
      00070E 75 1A 06         [24] 1756 	mov	_state,#0x06
      000711 75 1B 00         [24] 1757 	mov	(_state + 1),#0x00
                                   1758 ;	Receiver.c:375: break;
                                   1759 ;	Receiver.c:377: case 'n':time_delay=15;state = 8;
      000714 80 5B            [24] 1760 	sjmp	00116$
      000716                       1761 00109$:
      000716 75 10 0F         [24] 1762 	mov	_time_delay,#0x0f
      000719 75 11 00         [24] 1763 	mov	(_time_delay + 1),#0x00
      00071C 75 1A 08         [24] 1764 	mov	_state,#0x08
      00071F 75 1B 00         [24] 1765 	mov	(_state + 1),#0x00
                                   1766 ;	Receiver.c:378: break;
                                   1767 ;	Receiver.c:380: case 'u':time_delay=15;state = 9;
      000722 80 4D            [24] 1768 	sjmp	00116$
      000724                       1769 00110$:
      000724 75 10 0F         [24] 1770 	mov	_time_delay,#0x0f
      000727 75 11 00         [24] 1771 	mov	(_time_delay + 1),#0x00
      00072A 75 1A 09         [24] 1772 	mov	_state,#0x09
      00072D 75 1B 00         [24] 1773 	mov	(_state + 1),#0x00
                                   1774 ;	Receiver.c:381: break;
                                   1775 ;	Receiver.c:383: case 'q' :ES=0;
      000730 80 3F            [24] 1776 	sjmp	00116$
      000732                       1777 00111$:
                                   1778 ;	assignBit
      000732 C2 AC            [12] 1779 	clr	_ES
                                   1780 ;	Receiver.c:384: serialCount=0;
      000734 E4               [12] 1781 	clr	a
      000735 F5 0C            [12] 1782 	mov	_serialCount,a
      000737 F5 0D            [12] 1783 	mov	(_serialCount + 1),a
                                   1784 ;	Receiver.c:385: state=20;
      000739 75 1A 14         [24] 1785 	mov	_state,#0x14
                                   1786 ;	1-genFromRTrack replaced	mov	(_state + 1),#0x00
      00073C F5 1B            [12] 1787 	mov	(_state + 1),a
                                   1788 ;	Receiver.c:386: timerCount=0;
      00073E F5 0A            [12] 1789 	mov	_timerCount,a
      000740 F5 0B            [12] 1790 	mov	(_timerCount + 1),a
                                   1791 ;	Receiver.c:387: P0_1 =0;
                                   1792 ;	assignBit
      000742 C2 81            [12] 1793 	clr	_P0_1
                                   1794 ;	Receiver.c:388: P0_0 =0;
                                   1795 ;	assignBit
      000744 C2 80            [12] 1796 	clr	_P0_0
                                   1797 ;	Receiver.c:389: P2_6=0;
                                   1798 ;	assignBit
      000746 C2 A6            [12] 1799 	clr	_P2_6
                                   1800 ;	Receiver.c:390: up_led=0;
                                   1801 ;	assignBit
      000748 C2 A7            [12] 1802 	clr	_P2_7
                                   1803 ;	Receiver.c:391: down_led=0;
                                   1804 ;	assignBit
      00074A C2 A4            [12] 1805 	clr	_P2_4
                                   1806 ;	Receiver.c:393: data_r=0;
      00074C 75 09 00         [24] 1807 	mov	_data_r,#0x00
                                   1808 ;	Receiver.c:394: while(data_r!='y')
      00074F                       1809 00112$:
      00074F 74 79            [12] 1810 	mov	a,#0x79
      000751 B5 09 02         [24] 1811 	cjne	a,_data_r,00188$
      000754 80 19            [24] 1812 	sjmp	00114$
      000756                       1813 00188$:
                                   1814 ;	Receiver.c:396: state=20;
      000756 75 1A 14         [24] 1815 	mov	_state,#0x14
      000759 75 1B 00         [24] 1816 	mov	(_state + 1),#0x00
                                   1817 ;	Receiver.c:397: delay();
      00075C 12 05 FB         [24] 1818 	lcall	_delay
                                   1819 ;	Receiver.c:398: delay();
      00075F 12 05 FB         [24] 1820 	lcall	_delay
                                   1821 ;	Receiver.c:399: Transmit_data('x');
      000762 75 82 78         [24] 1822 	mov	dpl,#0x78
      000765 12 06 30         [24] 1823 	lcall	_Transmit_data
                                   1824 ;	Receiver.c:400: data_r=SBUF;
      000768 85 99 09         [24] 1825 	mov	_data_r,_SBUF
                                   1826 ;	Receiver.c:401: RI = 0;
                                   1827 ;	assignBit
      00076B C2 98            [12] 1828 	clr	_RI
      00076D 80 E0            [24] 1829 	sjmp	00112$
      00076F                       1830 00114$:
                                   1831 ;	Receiver.c:403: ES=1;break;
                                   1832 ;	assignBit
      00076F D2 AC            [12] 1833 	setb	_ES
                                   1834 ;	Receiver.c:406: }//switch end
      000771                       1835 00116$:
                                   1836 ;	Receiver.c:409: if(serialCount>4000)
      000771 C3               [12] 1837 	clr	c
      000772 74 A0            [12] 1838 	mov	a,#0xa0
      000774 95 0C            [12] 1839 	subb	a,_serialCount
      000776 74 8F            [12] 1840 	mov	a,#(0x0f ^ 0x80)
      000778 85 0D F0         [24] 1841 	mov	b,(_serialCount + 1)
      00077B 63 F0 80         [24] 1842 	xrl	b,#0x80
      00077E 95 F0            [12] 1843 	subb	a,b
      000780 50 08            [24] 1844 	jnc	00119$
                                   1845 ;	Receiver.c:410: {serialCount=0;data_r='q';}
      000782 E4               [12] 1846 	clr	a
      000783 F5 0C            [12] 1847 	mov	_serialCount,a
      000785 F5 0D            [12] 1848 	mov	(_serialCount + 1),a
      000787 75 09 71         [24] 1849 	mov	_data_r,#0x71
      00078A                       1850 00119$:
                                   1851 ;	Receiver.c:411: }
      00078A 22               [24] 1852 	ret
                                   1853 ;------------------------------------------------------------
                                   1854 ;Allocation info for local variables in function 'InitTimer0'
                                   1855 ;------------------------------------------------------------
                                   1856 ;	Receiver.c:413: void InitTimer0(void)
                                   1857 ;	-----------------------------------------
                                   1858 ;	 function InitTimer0
                                   1859 ;	-----------------------------------------
      00078B                       1860 _InitTimer0:
                                   1861 ;	Receiver.c:415: TMOD |= 0x01;    // Set timer0 in mode 1
      00078B 43 89 01         [24] 1862 	orl	_TMOD,#0x01
                                   1863 ;	Receiver.c:416: TH0 = 0xee;      // 5 msec reloading time
      00078E 75 8C EE         [24] 1864 	mov	_TH0,#0xee
                                   1865 ;	Receiver.c:417: TL0 = 0x00;      // First time value
      000791 75 8A 00         [24] 1866 	mov	_TL0,#0x00
                                   1867 ;	Receiver.c:418: TR0 = 1;         // Start Timer 1
                                   1868 ;	assignBit
      000794 D2 8C            [12] 1869 	setb	_TR0
                                   1870 ;	Receiver.c:419: ET0 = 1;         // Enable Timer1 interrupts	
                                   1871 ;	assignBit
      000796 D2 A9            [12] 1872 	setb	_ET0
                                   1873 ;	Receiver.c:420: }
      000798 22               [24] 1874 	ret
                                   1875 ;------------------------------------------------------------
                                   1876 ;Allocation info for local variables in function 'check_switches'
                                   1877 ;------------------------------------------------------------
                                   1878 ;	Receiver.c:422: void check_switches()
                                   1879 ;	-----------------------------------------
                                   1880 ;	 function check_switches
                                   1881 ;	-----------------------------------------
      000799                       1882 _check_switches:
                                   1883 ;	Receiver.c:424: if(!ac_key)
      000799 20 93 47         [24] 1884 	jb	_P1_3,00111$
                                   1885 ;	Receiver.c:426: delay();
      00079C 12 05 FB         [24] 1886 	lcall	_delay
                                   1887 ;	Receiver.c:427: if(!ac_key)
      00079F 20 93 41         [24] 1888 	jb	_P1_3,00111$
                                   1889 ;	Receiver.c:429: ac_state++;		
      0007A2 05 1E            [12] 1890 	inc	_ac_state
                                   1891 ;	Receiver.c:430: if(ac_state>=3)
      0007A4 74 FD            [12] 1892 	mov	a,#0x100 - 0x03
      0007A6 25 1E            [12] 1893 	add	a,_ac_state
      0007A8 50 03            [24] 1894 	jnc	00102$
                                   1895 ;	Receiver.c:431: ac_state=0;
      0007AA 75 1E 00         [24] 1896 	mov	_ac_state,#0x00
      0007AD                       1897 00102$:
                                   1898 ;	Receiver.c:432: switch(ac_state)
      0007AD E4               [12] 1899 	clr	a
      0007AE B5 1E 02         [24] 1900 	cjne	a,_ac_state,00190$
      0007B1 80 0E            [24] 1901 	sjmp	00103$
      0007B3                       1902 00190$:
      0007B3 74 01            [12] 1903 	mov	a,#0x01
      0007B5 B5 1E 02         [24] 1904 	cjne	a,_ac_state,00191$
      0007B8 80 13            [24] 1905 	sjmp	00104$
      0007BA                       1906 00191$:
      0007BA 74 02            [12] 1907 	mov	a,#0x02
                                   1908 ;	Receiver.c:434: case 0:Transmit_data('l');ac_led_up=1;ac_led_down=1;break;
      0007BC B5 1E 24         [24] 1909 	cjne	a,_ac_state,00111$
      0007BF 80 18            [24] 1910 	sjmp	00105$
      0007C1                       1911 00103$:
      0007C1 75 82 6C         [24] 1912 	mov	dpl,#0x6c
      0007C4 12 06 30         [24] 1913 	lcall	_Transmit_data
                                   1914 ;	assignBit
      0007C7 D2 A2            [12] 1915 	setb	_P2_2
                                   1916 ;	assignBit
      0007C9 D2 A3            [12] 1917 	setb	_P2_3
                                   1918 ;	Receiver.c:435: case 1:Transmit_data('m');ac_led_up=1;ac_led_down=0;break;
      0007CB 80 16            [24] 1919 	sjmp	00111$
      0007CD                       1920 00104$:
      0007CD 75 82 6D         [24] 1921 	mov	dpl,#0x6d
      0007D0 12 06 30         [24] 1922 	lcall	_Transmit_data
                                   1923 ;	assignBit
      0007D3 D2 A2            [12] 1924 	setb	_P2_2
                                   1925 ;	assignBit
      0007D5 C2 A3            [12] 1926 	clr	_P2_3
                                   1927 ;	Receiver.c:436: case 2:Transmit_data('h');ac_led_up=0;ac_led_down=1;break;
      0007D7 80 0A            [24] 1928 	sjmp	00111$
      0007D9                       1929 00105$:
      0007D9 75 82 68         [24] 1930 	mov	dpl,#0x68
      0007DC 12 06 30         [24] 1931 	lcall	_Transmit_data
                                   1932 ;	assignBit
      0007DF C2 A2            [12] 1933 	clr	_P2_2
                                   1934 ;	assignBit
      0007E1 D2 A3            [12] 1935 	setb	_P2_3
                                   1936 ;	Receiver.c:438: }//switch end
      0007E3                       1937 00111$:
                                   1938 ;	Receiver.c:442: if(!dim_key)
      0007E3 20 94 37         [24] 1939 	jb	_P1_4,00115$
                                   1940 ;	Receiver.c:444: delay();
      0007E6 12 05 FB         [24] 1941 	lcall	_delay
                                   1942 ;	Receiver.c:446: dim_val = dim_val + 10;
      0007E9 74 0A            [12] 1943 	mov	a,#0x0a
      0007EB 25 12            [12] 1944 	add	a,_dim_val
      0007ED F5 12            [12] 1945 	mov	_dim_val,a
      0007EF E4               [12] 1946 	clr	a
      0007F0 35 13            [12] 1947 	addc	a,(_dim_val + 1)
      0007F2 F5 13            [12] 1948 	mov	(_dim_val + 1),a
                                   1949 ;	Receiver.c:447: dim_val2=50-dim_val;
      0007F4 74 32            [12] 1950 	mov	a,#0x32
      0007F6 C3               [12] 1951 	clr	c
      0007F7 95 12            [12] 1952 	subb	a,_dim_val
      0007F9 F5 14            [12] 1953 	mov	_dim_val2,a
      0007FB E4               [12] 1954 	clr	a
      0007FC 95 13            [12] 1955 	subb	a,(_dim_val + 1)
      0007FE F5 15            [12] 1956 	mov	(_dim_val2 + 1),a
                                   1957 ;	Receiver.c:448: if(dim_val>50){dim_val=1;dim_val2=50;}
      000800 C3               [12] 1958 	clr	c
      000801 74 32            [12] 1959 	mov	a,#0x32
      000803 95 12            [12] 1960 	subb	a,_dim_val
      000805 74 80            [12] 1961 	mov	a,#(0x00 ^ 0x80)
      000807 85 13 F0         [24] 1962 	mov	b,(_dim_val + 1)
      00080A 63 F0 80         [24] 1963 	xrl	b,#0x80
      00080D 95 F0            [12] 1964 	subb	a,b
      00080F 50 0C            [24] 1965 	jnc	00115$
      000811 75 12 01         [24] 1966 	mov	_dim_val,#0x01
      000814 75 13 00         [24] 1967 	mov	(_dim_val + 1),#0x00
      000817 75 14 32         [24] 1968 	mov	_dim_val2,#0x32
      00081A 75 15 00         [24] 1969 	mov	(_dim_val2 + 1),#0x00
      00081D                       1970 00115$:
                                   1971 ;	Receiver.c:451: if(!auto_key)
      00081D 20 92 05         [24] 1972 	jb	_P1_2,00117$
                                   1973 ;	Receiver.c:453: delay();
      000820 12 05 FB         [24] 1974 	lcall	_delay
                                   1975 ;	Receiver.c:454: auto_flag=!auto_flag;
      000823 B2 00            [12] 1976 	cpl	_auto_flag
      000825                       1977 00117$:
                                   1978 ;	Receiver.c:457: if(!pwr_key)
      000825 20 97 28         [24] 1979 	jb	_P1_7,00122$
                                   1980 ;	Receiver.c:459: delay();
      000828 12 05 FB         [24] 1981 	lcall	_delay
                                   1982 ;	Receiver.c:460: delay();
      00082B 12 05 FB         [24] 1983 	lcall	_delay
                                   1984 ;	Receiver.c:461: delay();
      00082E 12 05 FB         [24] 1985 	lcall	_delay
                                   1986 ;	Receiver.c:462: if(!pwr_key)
      000831 20 97 1C         [24] 1987 	jb	_P1_7,00122$
                                   1988 ;	Receiver.c:464: pwr_led=0;up_led_main =0;center_led =0;down_led_main=0;ac_led_up=0;ac_led_down=0;auto_led=0;
                                   1989 ;	assignBit
      000834 C2 A0            [12] 1990 	clr	_P2_0
                                   1991 ;	assignBit
      000836 C2 81            [12] 1992 	clr	_P0_1
                                   1993 ;	assignBit
      000838 C2 80            [12] 1994 	clr	_P0_0
                                   1995 ;	assignBit
      00083A C2 A6            [12] 1996 	clr	_P2_6
                                   1997 ;	assignBit
      00083C C2 A2            [12] 1998 	clr	_P2_2
                                   1999 ;	assignBit
      00083E C2 A3            [12] 2000 	clr	_P2_3
                                   2001 ;	assignBit
      000840 C2 A1            [12] 2002 	clr	_P2_1
                                   2003 ;	Receiver.c:465: TR0 = 0;         // Stop Timer 1
                                   2004 ;	assignBit
      000842 C2 8C            [12] 2005 	clr	_TR0
                                   2006 ;	Receiver.c:466: ET0 = 0;         // Enable Timer1 interrupts	
                                   2007 ;	assignBit
      000844 C2 A9            [12] 2008 	clr	_ET0
                                   2009 ;	Receiver.c:467: delay();delay();
      000846 12 05 FB         [24] 2010 	lcall	_delay
      000849 12 05 FB         [24] 2011 	lcall	_delay
                                   2012 ;	Receiver.c:468: pwr_out=1;
                                   2013 ;	assignBit
      00084C D2 87            [12] 2014 	setb	_P0_7
                                   2015 ;	Receiver.c:469: shutdown:
      00084E                       2016 00118$:
                                   2017 ;	Receiver.c:470: goto shutdown;
      00084E 80 FE            [24] 2018 	sjmp	00118$
      000850                       2019 00122$:
                                   2020 ;	Receiver.c:475: if(!manual_up_key)
      000850 20 90 0D         [24] 2021 	jb	_P1_0,00127$
                                   2022 ;	Receiver.c:477: up_led=1;
                                   2023 ;	assignBit
      000853 D2 A7            [12] 2024 	setb	_P2_7
                                   2025 ;	Receiver.c:478: down_led=0;
                                   2026 ;	assignBit
      000855 C2 A4            [12] 2027 	clr	_P2_4
                                   2028 ;	Receiver.c:479: up_led_main=1;
                                   2029 ;	assignBit
      000857 D2 81            [12] 2030 	setb	_P0_1
                                   2031 ;	Receiver.c:480: center_led=0;
                                   2032 ;	assignBit
      000859 C2 80            [12] 2033 	clr	_P0_0
                                   2034 ;	Receiver.c:481: down_led_main=0;
                                   2035 ;	assignBit
      00085B C2 A6            [12] 2036 	clr	_P2_6
                                   2037 ;	Receiver.c:482: TR0=0;
                                   2038 ;	assignBit
      00085D C2 8C            [12] 2039 	clr	_TR0
      00085F 22               [24] 2040 	ret
      000860                       2041 00127$:
                                   2042 ;	Receiver.c:485: else if(!manual_down_key)
      000860 20 91 0D         [24] 2043 	jb	_P1_1,00124$
                                   2044 ;	Receiver.c:487: up_led=0;
                                   2045 ;	assignBit
      000863 C2 A7            [12] 2046 	clr	_P2_7
                                   2047 ;	Receiver.c:488: down_led=1;
                                   2048 ;	assignBit
      000865 D2 A4            [12] 2049 	setb	_P2_4
                                   2050 ;	Receiver.c:489: up_led_main=0;
                                   2051 ;	assignBit
      000867 C2 81            [12] 2052 	clr	_P0_1
                                   2053 ;	Receiver.c:490: center_led=0;
                                   2054 ;	assignBit
      000869 C2 80            [12] 2055 	clr	_P0_0
                                   2056 ;	Receiver.c:491: down_led_main=1;
                                   2057 ;	assignBit
      00086B D2 A6            [12] 2058 	setb	_P2_6
                                   2059 ;	Receiver.c:492: TR0=0;
                                   2060 ;	assignBit
      00086D C2 8C            [12] 2061 	clr	_TR0
      00086F 22               [24] 2062 	ret
      000870                       2063 00124$:
                                   2064 ;	Receiver.c:497: TR0=1;
                                   2065 ;	assignBit
      000870 D2 8C            [12] 2066 	setb	_TR0
                                   2067 ;	Receiver.c:500: }
      000872 22               [24] 2068 	ret
                                   2069 	.area CSEG    (CODE)
                                   2070 	.area CONST   (CODE)
                                   2071 	.area XINIT   (CODE)
                                   2072 	.area CABS    (ABS,CODE)
