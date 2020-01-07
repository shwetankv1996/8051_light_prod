                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11418 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module transmitter
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _isr_timer0
                                     13 	.globl _TF2
                                     14 	.globl _EXF2
                                     15 	.globl _RCLK
                                     16 	.globl _TCLK
                                     17 	.globl _EXEN2
                                     18 	.globl _TR2
                                     19 	.globl _C_T2
                                     20 	.globl _CP_RL2
                                     21 	.globl _T2CON_7
                                     22 	.globl _T2CON_6
                                     23 	.globl _T2CON_5
                                     24 	.globl _T2CON_4
                                     25 	.globl _T2CON_3
                                     26 	.globl _T2CON_2
                                     27 	.globl _T2CON_1
                                     28 	.globl _T2CON_0
                                     29 	.globl _PT2
                                     30 	.globl _ET2
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _PS
                                     40 	.globl _PT1
                                     41 	.globl _PX1
                                     42 	.globl _PT0
                                     43 	.globl _PX0
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _ES
                                     62 	.globl _ET1
                                     63 	.globl _EX1
                                     64 	.globl _ET0
                                     65 	.globl _EX0
                                     66 	.globl _P2_7
                                     67 	.globl _P2_6
                                     68 	.globl _P2_5
                                     69 	.globl _P2_4
                                     70 	.globl _P2_3
                                     71 	.globl _P2_2
                                     72 	.globl _P2_1
                                     73 	.globl _P2_0
                                     74 	.globl _SM0
                                     75 	.globl _SM1
                                     76 	.globl _SM2
                                     77 	.globl _REN
                                     78 	.globl _TB8
                                     79 	.globl _RB8
                                     80 	.globl _TI
                                     81 	.globl _RI
                                     82 	.globl _P1_7
                                     83 	.globl _P1_6
                                     84 	.globl _P1_5
                                     85 	.globl _P1_4
                                     86 	.globl _P1_3
                                     87 	.globl _P1_2
                                     88 	.globl _P1_1
                                     89 	.globl _P1_0
                                     90 	.globl _TF1
                                     91 	.globl _TR1
                                     92 	.globl _TF0
                                     93 	.globl _TR0
                                     94 	.globl _IE1
                                     95 	.globl _IT1
                                     96 	.globl _IE0
                                     97 	.globl _IT0
                                     98 	.globl _P0_7
                                     99 	.globl _P0_6
                                    100 	.globl _P0_5
                                    101 	.globl _P0_4
                                    102 	.globl _P0_3
                                    103 	.globl _P0_2
                                    104 	.globl _P0_1
                                    105 	.globl _P0_0
                                    106 	.globl _TH2
                                    107 	.globl _TL2
                                    108 	.globl _RCAP2H
                                    109 	.globl _RCAP2L
                                    110 	.globl _T2CON
                                    111 	.globl _B
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _IP
                                    115 	.globl _P3
                                    116 	.globl _IE
                                    117 	.globl _P2
                                    118 	.globl _SBUF
                                    119 	.globl _SCON
                                    120 	.globl _P1
                                    121 	.globl _TH1
                                    122 	.globl _TH0
                                    123 	.globl _TL1
                                    124 	.globl _TL0
                                    125 	.globl _TMOD
                                    126 	.globl _TCON
                                    127 	.globl _PCON
                                    128 	.globl _DPH
                                    129 	.globl _DPL
                                    130 	.globl _SP
                                    131 	.globl _P0
                                    132 	.globl _pushed
                                    133 	.globl _a_g
                                    134 	.globl _received
                                    135 	.globl _data_r
                                    136 	.globl _button
                                    137 	.globl _time_delay
                                    138 	.globl _timerCount
                                    139 	.globl _state_was
                                    140 	.globl _state
                                    141 	.globl _delay
                                    142 	.globl _startup
                                    143 	.globl _UART_Init
                                    144 	.globl _handshake
                                    145 	.globl _Transmit_data
                                    146 	.globl _check_x
                                    147 	.globl _InitTimer1
                                    148 	.globl _default_and_a_g
                                    149 ;--------------------------------------------------------
                                    150 ; special function registers
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0	=	0x0080
                           000081   155 _SP	=	0x0081
                           000082   156 _DPL	=	0x0082
                           000083   157 _DPH	=	0x0083
                           000087   158 _PCON	=	0x0087
                           000088   159 _TCON	=	0x0088
                           000089   160 _TMOD	=	0x0089
                           00008A   161 _TL0	=	0x008a
                           00008B   162 _TL1	=	0x008b
                           00008C   163 _TH0	=	0x008c
                           00008D   164 _TH1	=	0x008d
                           000090   165 _P1	=	0x0090
                           000098   166 _SCON	=	0x0098
                           000099   167 _SBUF	=	0x0099
                           0000A0   168 _P2	=	0x00a0
                           0000A8   169 _IE	=	0x00a8
                           0000B0   170 _P3	=	0x00b0
                           0000B8   171 _IP	=	0x00b8
                           0000D0   172 _PSW	=	0x00d0
                           0000E0   173 _ACC	=	0x00e0
                           0000F0   174 _B	=	0x00f0
                           0000C8   175 _T2CON	=	0x00c8
                           0000CA   176 _RCAP2L	=	0x00ca
                           0000CB   177 _RCAP2H	=	0x00cb
                           0000CC   178 _TL2	=	0x00cc
                           0000CD   179 _TH2	=	0x00cd
                                    180 ;--------------------------------------------------------
                                    181 ; special function bits
                                    182 ;--------------------------------------------------------
                                    183 	.area RSEG    (ABS,DATA)
      000000                        184 	.org 0x0000
                           000080   185 _P0_0	=	0x0080
                           000081   186 _P0_1	=	0x0081
                           000082   187 _P0_2	=	0x0082
                           000083   188 _P0_3	=	0x0083
                           000084   189 _P0_4	=	0x0084
                           000085   190 _P0_5	=	0x0085
                           000086   191 _P0_6	=	0x0086
                           000087   192 _P0_7	=	0x0087
                           000088   193 _IT0	=	0x0088
                           000089   194 _IE0	=	0x0089
                           00008A   195 _IT1	=	0x008a
                           00008B   196 _IE1	=	0x008b
                           00008C   197 _TR0	=	0x008c
                           00008D   198 _TF0	=	0x008d
                           00008E   199 _TR1	=	0x008e
                           00008F   200 _TF1	=	0x008f
                           000090   201 _P1_0	=	0x0090
                           000091   202 _P1_1	=	0x0091
                           000092   203 _P1_2	=	0x0092
                           000093   204 _P1_3	=	0x0093
                           000094   205 _P1_4	=	0x0094
                           000095   206 _P1_5	=	0x0095
                           000096   207 _P1_6	=	0x0096
                           000097   208 _P1_7	=	0x0097
                           000098   209 _RI	=	0x0098
                           000099   210 _TI	=	0x0099
                           00009A   211 _RB8	=	0x009a
                           00009B   212 _TB8	=	0x009b
                           00009C   213 _REN	=	0x009c
                           00009D   214 _SM2	=	0x009d
                           00009E   215 _SM1	=	0x009e
                           00009F   216 _SM0	=	0x009f
                           0000A0   217 _P2_0	=	0x00a0
                           0000A1   218 _P2_1	=	0x00a1
                           0000A2   219 _P2_2	=	0x00a2
                           0000A3   220 _P2_3	=	0x00a3
                           0000A4   221 _P2_4	=	0x00a4
                           0000A5   222 _P2_5	=	0x00a5
                           0000A6   223 _P2_6	=	0x00a6
                           0000A7   224 _P2_7	=	0x00a7
                           0000A8   225 _EX0	=	0x00a8
                           0000A9   226 _ET0	=	0x00a9
                           0000AA   227 _EX1	=	0x00aa
                           0000AB   228 _ET1	=	0x00ab
                           0000AC   229 _ES	=	0x00ac
                           0000AF   230 _EA	=	0x00af
                           0000B0   231 _P3_0	=	0x00b0
                           0000B1   232 _P3_1	=	0x00b1
                           0000B2   233 _P3_2	=	0x00b2
                           0000B3   234 _P3_3	=	0x00b3
                           0000B4   235 _P3_4	=	0x00b4
                           0000B5   236 _P3_5	=	0x00b5
                           0000B6   237 _P3_6	=	0x00b6
                           0000B7   238 _P3_7	=	0x00b7
                           0000B0   239 _RXD	=	0x00b0
                           0000B1   240 _TXD	=	0x00b1
                           0000B2   241 _INT0	=	0x00b2
                           0000B3   242 _INT1	=	0x00b3
                           0000B4   243 _T0	=	0x00b4
                           0000B5   244 _T1	=	0x00b5
                           0000B6   245 _WR	=	0x00b6
                           0000B7   246 _RD	=	0x00b7
                           0000B8   247 _PX0	=	0x00b8
                           0000B9   248 _PT0	=	0x00b9
                           0000BA   249 _PX1	=	0x00ba
                           0000BB   250 _PT1	=	0x00bb
                           0000BC   251 _PS	=	0x00bc
                           0000D0   252 _P	=	0x00d0
                           0000D1   253 _F1	=	0x00d1
                           0000D2   254 _OV	=	0x00d2
                           0000D3   255 _RS0	=	0x00d3
                           0000D4   256 _RS1	=	0x00d4
                           0000D5   257 _F0	=	0x00d5
                           0000D6   258 _AC	=	0x00d6
                           0000D7   259 _CY	=	0x00d7
                           0000AD   260 _ET2	=	0x00ad
                           0000BD   261 _PT2	=	0x00bd
                           0000C8   262 _T2CON_0	=	0x00c8
                           0000C9   263 _T2CON_1	=	0x00c9
                           0000CA   264 _T2CON_2	=	0x00ca
                           0000CB   265 _T2CON_3	=	0x00cb
                           0000CC   266 _T2CON_4	=	0x00cc
                           0000CD   267 _T2CON_5	=	0x00cd
                           0000CE   268 _T2CON_6	=	0x00ce
                           0000CF   269 _T2CON_7	=	0x00cf
                           0000C8   270 _CP_RL2	=	0x00c8
                           0000C9   271 _C_T2	=	0x00c9
                           0000CA   272 _TR2	=	0x00ca
                           0000CB   273 _EXEN2	=	0x00cb
                           0000CC   274 _TCLK	=	0x00cc
                           0000CD   275 _RCLK	=	0x00cd
                           0000CE   276 _EXF2	=	0x00ce
                           0000CF   277 _TF2	=	0x00cf
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable register banks
                                    280 ;--------------------------------------------------------
                                    281 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        282 	.ds 8
                                    283 ;--------------------------------------------------------
                                    284 ; overlayable bit register bank
                                    285 ;--------------------------------------------------------
                                    286 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        287 bits:
      000021                        288 	.ds 1
                           008000   289 	b0 = bits[0]
                           008100   290 	b1 = bits[1]
                           008200   291 	b2 = bits[2]
                           008300   292 	b3 = bits[3]
                           008400   293 	b4 = bits[4]
                           008500   294 	b5 = bits[5]
                           008600   295 	b6 = bits[6]
                           008700   296 	b7 = bits[7]
                                    297 ;--------------------------------------------------------
                                    298 ; internal ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area DSEG    (DATA)
      000008                        301 _state::
      000008                        302 	.ds 2
      00000A                        303 _state_was::
      00000A                        304 	.ds 2
      00000C                        305 _timerCount::
      00000C                        306 	.ds 2
      00000E                        307 _time_delay::
      00000E                        308 	.ds 2
      000010                        309 _button::
      000010                        310 	.ds 1
      000011                        311 _data_r::
      000011                        312 	.ds 1
      000012                        313 _received::
      000012                        314 	.ds 1
                                    315 ;--------------------------------------------------------
                                    316 ; overlayable items in internal ram 
                                    317 ;--------------------------------------------------------
                                    318 	.area	OSEG    (OVR,DATA)
                                    319 	.area	OSEG    (OVR,DATA)
                                    320 ;--------------------------------------------------------
                                    321 ; Stack segment in internal ram 
                                    322 ;--------------------------------------------------------
                                    323 	.area	SSEG
      000022                        324 __start__stack:
      000022                        325 	.ds	1
                                    326 
                                    327 ;--------------------------------------------------------
                                    328 ; indirectly addressable internal ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area ISEG    (DATA)
                                    331 ;--------------------------------------------------------
                                    332 ; absolute internal ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area IABS    (ABS,DATA)
                                    335 	.area IABS    (ABS,DATA)
                                    336 ;--------------------------------------------------------
                                    337 ; bit data
                                    338 ;--------------------------------------------------------
                                    339 	.area BSEG    (BIT)
      000000                        340 _a_g::
      000000                        341 	.ds 1
      000001                        342 _pushed::
      000001                        343 	.ds 1
                                    344 ;--------------------------------------------------------
                                    345 ; paged external ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area PSEG    (PAG,XDATA)
                                    348 ;--------------------------------------------------------
                                    349 ; external ram data
                                    350 ;--------------------------------------------------------
                                    351 	.area XSEG    (XDATA)
                                    352 ;--------------------------------------------------------
                                    353 ; absolute external ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area XABS    (ABS,XDATA)
                                    356 ;--------------------------------------------------------
                                    357 ; external initialized ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area XISEG   (XDATA)
                                    360 	.area HOME    (CODE)
                                    361 	.area GSINIT0 (CODE)
                                    362 	.area GSINIT1 (CODE)
                                    363 	.area GSINIT2 (CODE)
                                    364 	.area GSINIT3 (CODE)
                                    365 	.area GSINIT4 (CODE)
                                    366 	.area GSINIT5 (CODE)
                                    367 	.area GSINIT  (CODE)
                                    368 	.area GSFINAL (CODE)
                                    369 	.area CSEG    (CODE)
                                    370 ;--------------------------------------------------------
                                    371 ; interrupt vector 
                                    372 ;--------------------------------------------------------
                                    373 	.area HOME    (CODE)
      000000                        374 __interrupt_vect:
      000000 02 00 11         [24]  375 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  376 	reti
      000004                        377 	.ds	7
      00000B 02 00 8B         [24]  378 	ljmp	_isr_timer0
                                    379 ;--------------------------------------------------------
                                    380 ; global & static initialisations
                                    381 ;--------------------------------------------------------
                                    382 	.area HOME    (CODE)
                                    383 	.area GSINIT  (CODE)
                                    384 	.area GSFINAL (CODE)
                                    385 	.area GSINIT  (CODE)
                                    386 	.globl __sdcc_gsinit_startup
                                    387 	.globl __sdcc_program_startup
                                    388 	.globl __start__stack
                                    389 	.globl __mcs51_genXINIT
                                    390 	.globl __mcs51_genXRAMCLEAR
                                    391 	.globl __mcs51_genRAMCLEAR
                                    392 ;	transmitter.c:13: volatile int state = 0;
      00006A E4               [12]  393 	clr	a
      00006B F5 08            [12]  394 	mov	_state,a
      00006D F5 09            [12]  395 	mov	(_state + 1),a
                                    396 ;	transmitter.c:14: volatile int state_was = 0;
      00006F F5 0A            [12]  397 	mov	_state_was,a
      000071 F5 0B            [12]  398 	mov	(_state_was + 1),a
                                    399 ;	transmitter.c:15: volatile int timerCount = 0;
      000073 F5 0C            [12]  400 	mov	_timerCount,a
      000075 F5 0D            [12]  401 	mov	(_timerCount + 1),a
                                    402 ;	transmitter.c:16: volatile int time_delay = 15;
      000077 75 0E 0F         [24]  403 	mov	_time_delay,#0x0f
                                    404 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      00007A F5 0F            [12]  405 	mov	(_time_delay + 1),a
                                    406 ;	transmitter.c:19: volatile char button='l';
      00007C 75 10 6C         [24]  407 	mov	_button,#0x6c
                                    408 ;	transmitter.c:21: char data_r=0;
                                    409 ;	1-genFromRTrack replaced	mov	_data_r,#0x00
      00007F F5 11            [12]  410 	mov	_data_r,a
                                    411 ;	transmitter.c:22: char received=1;
      000081 75 12 01         [24]  412 	mov	_received,#0x01
                                    413 ;	transmitter.c:17: volatile __bit a_g=0;
                                    414 ;	assignBit
      000084 C2 00            [12]  415 	clr	_a_g
                                    416 ;	transmitter.c:18: volatile __bit pushed=0;
                                    417 ;	assignBit
      000086 C2 01            [12]  418 	clr	_pushed
                                    419 	.area GSFINAL (CODE)
      000088 02 00 0E         [24]  420 	ljmp	__sdcc_program_startup
                                    421 ;--------------------------------------------------------
                                    422 ; Home
                                    423 ;--------------------------------------------------------
                                    424 	.area HOME    (CODE)
                                    425 	.area HOME    (CODE)
      00000E                        426 __sdcc_program_startup:
      00000E 02 03 4D         [24]  427 	ljmp	_main
                                    428 ;	return from main will return to caller
                                    429 ;--------------------------------------------------------
                                    430 ; code
                                    431 ;--------------------------------------------------------
                                    432 	.area CSEG    (CODE)
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function 'isr_timer0'
                                    435 ;------------------------------------------------------------
                                    436 ;	transmitter.c:24: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
                                    437 ;	-----------------------------------------
                                    438 ;	 function isr_timer0
                                    439 ;	-----------------------------------------
      00008B                        440 _isr_timer0:
                           000007   441 	ar7 = 0x07
                           000006   442 	ar6 = 0x06
                           000005   443 	ar5 = 0x05
                           000004   444 	ar4 = 0x04
                           000003   445 	ar3 = 0x03
                           000002   446 	ar2 = 0x02
                           000001   447 	ar1 = 0x01
                           000000   448 	ar0 = 0x00
      00008B C0 21            [24]  449 	push	bits
      00008D C0 E0            [24]  450 	push	acc
      00008F C0 F0            [24]  451 	push	b
      000091 C0 82            [24]  452 	push	dpl
      000093 C0 83            [24]  453 	push	dph
      000095 C0 07            [24]  454 	push	(0+7)
      000097 C0 06            [24]  455 	push	(0+6)
      000099 C0 05            [24]  456 	push	(0+5)
      00009B C0 04            [24]  457 	push	(0+4)
      00009D C0 03            [24]  458 	push	(0+3)
      00009F C0 02            [24]  459 	push	(0+2)
      0000A1 C0 01            [24]  460 	push	(0+1)
      0000A3 C0 00            [24]  461 	push	(0+0)
      0000A5 C0 D0            [24]  462 	push	psw
      0000A7 75 D0 00         [24]  463 	mov	psw,#0x00
                                    464 ;	transmitter.c:26: TH0  = 0Xee;         // ReLoad the timer value for 5ms
      0000AA 75 8C EE         [24]  465 	mov	_TH0,#0xee
                                    466 ;	transmitter.c:27: TL0  = 0X00;
      0000AD 75 8A 00         [24]  467 	mov	_TL0,#0x00
                                    468 ;	transmitter.c:28: timerCount++;
      0000B0 AE 0C            [24]  469 	mov	r6,_timerCount
      0000B2 AF 0D            [24]  470 	mov	r7,(_timerCount + 1)
      0000B4 74 01            [12]  471 	mov	a,#0x01
      0000B6 2E               [12]  472 	add	a,r6
      0000B7 F5 0C            [12]  473 	mov	_timerCount,a
      0000B9 E4               [12]  474 	clr	a
      0000BA 3F               [12]  475 	addc	a,r7
      0000BB F5 0D            [12]  476 	mov	(_timerCount + 1),a
                                    477 ;	transmitter.c:30: if(!pushed)
      0000BD 30 01 03         [24]  478 	jnb	_pushed,00234$
      0000C0 02 01 E3         [24]  479 	ljmp	00118$
      0000C3                        480 00234$:
                                    481 ;	transmitter.c:32: switch(P1)
      0000C3 AF 90            [24]  482 	mov	r7,_P1
      0000C5 BF 1F 03         [24]  483 	cjne	r7,#0x1f,00235$
      0000C8 02 01 AE         [24]  484 	ljmp	00113$
      0000CB                        485 00235$:
      0000CB BF 2F 03         [24]  486 	cjne	r7,#0x2f,00236$
      0000CE 02 01 93         [24]  487 	ljmp	00112$
      0000D1                        488 00236$:
      0000D1 BF 33 03         [24]  489 	cjne	r7,#0x33,00237$
      0000D4 02 01 C6         [24]  490 	ljmp	00114$
      0000D7                        491 00237$:
      0000D7 BF 37 03         [24]  492 	cjne	r7,#0x37,00238$
      0000DA 02 01 61         [24]  493 	ljmp	00108$
      0000DD                        494 00238$:
      0000DD BF 3B 02         [24]  495 	cjne	r7,#0x3b,00239$
      0000E0 80 4C            [24]  496 	sjmp	00104$
      0000E2                        497 00239$:
      0000E2 BF 3D 02         [24]  498 	cjne	r7,#0x3d,00240$
      0000E5 80 2B            [24]  499 	sjmp	00103$
      0000E7                        500 00240$:
      0000E7 BF 3E 02         [24]  501 	cjne	r7,#0x3e,00241$
      0000EA 80 0D            [24]  502 	sjmp	00102$
      0000EC                        503 00241$:
      0000EC BF 3F 02         [24]  504 	cjne	r7,#0x3f,00242$
      0000EF 80 03            [24]  505 	sjmp	00243$
      0000F1                        506 00242$:
      0000F1 02 01 E1         [24]  507 	ljmp	00115$
      0000F4                        508 00243$:
                                    509 ;	transmitter.c:35: pushed = 0;
                                    510 ;	assignBit
      0000F4 C2 01            [12]  511 	clr	_pushed
                                    512 ;	transmitter.c:36: break;
      0000F6 02 01 E3         [24]  513 	ljmp	00118$
                                    514 ;	transmitter.c:38: case 0x3e:
      0000F9                        515 00102$:
                                    516 ;	transmitter.c:39: pushed = 1;
                                    517 ;	assignBit
      0000F9 D2 01            [12]  518 	setb	_pushed
                                    519 ;	transmitter.c:40: Transmit_data('a');
      0000FB 75 82 61         [24]  520 	mov	dpl,#0x61
      0000FE 12 04 12         [24]  521 	lcall	_Transmit_data
                                    522 ;	transmitter.c:41: P2 =0x80;
      000101 75 A0 80         [24]  523 	mov	_P2,#0x80
                                    524 ;	transmitter.c:42: state = 1;
      000104 75 08 01         [24]  525 	mov	_state,#0x01
      000107 75 09 00         [24]  526 	mov	(_state + 1),#0x00
                                    527 ;	transmitter.c:43: button = 'a';
      00010A 75 10 61         [24]  528 	mov	_button,#0x61
                                    529 ;	transmitter.c:44: a_g=1;
                                    530 ;	assignBit
      00010D D2 00            [12]  531 	setb	_a_g
                                    532 ;	transmitter.c:45: break;
      00010F 02 01 E3         [24]  533 	ljmp	00118$
                                    534 ;	transmitter.c:47: case 0x3d:
      000112                        535 00103$:
                                    536 ;	transmitter.c:48: pushed = 1;
                                    537 ;	assignBit
      000112 D2 01            [12]  538 	setb	_pushed
                                    539 ;	transmitter.c:49: Transmit_data('b');
      000114 75 82 62         [24]  540 	mov	dpl,#0x62
      000117 12 04 12         [24]  541 	lcall	_Transmit_data
                                    542 ;	transmitter.c:50: time_delay=3;
      00011A 75 0E 03         [24]  543 	mov	_time_delay,#0x03
      00011D 75 0F 00         [24]  544 	mov	(_time_delay + 1),#0x00
                                    545 ;	transmitter.c:51: state = 2;
      000120 75 08 02         [24]  546 	mov	_state,#0x02
      000123 75 09 00         [24]  547 	mov	(_state + 1),#0x00
                                    548 ;	transmitter.c:52: button = 'b';
      000126 75 10 62         [24]  549 	mov	_button,#0x62
                                    550 ;	transmitter.c:53: a_g=0;
                                    551 ;	assignBit
      000129 C2 00            [12]  552 	clr	_a_g
                                    553 ;	transmitter.c:54: break;
      00012B 02 01 E3         [24]  554 	ljmp	00118$
                                    555 ;	transmitter.c:56: case 0x3b:
      00012E                        556 00104$:
                                    557 ;	transmitter.c:57: if(received)
      00012E E5 12            [12]  558 	mov	a,_received
      000130 60 13            [24]  559 	jz	00106$
                                    560 ;	transmitter.c:58: {		pushed = 1;
                                    561 ;	assignBit
      000132 D2 01            [12]  562 	setb	_pushed
                                    563 ;	transmitter.c:59: Transmit_data('d');
      000134 75 82 64         [24]  564 	mov	dpl,#0x64
      000137 12 04 12         [24]  565 	lcall	_Transmit_data
                                    566 ;	transmitter.c:60: state = 7;
      00013A 75 08 07         [24]  567 	mov	_state,#0x07
      00013D 75 09 00         [24]  568 	mov	(_state + 1),#0x00
                                    569 ;	transmitter.c:61: button = 'd';
      000140 75 10 64         [24]  570 	mov	_button,#0x64
      000143 80 11            [24]  571 	sjmp	00107$
      000145                        572 00106$:
                                    573 ;	transmitter.c:64: {		pushed = 1;
                                    574 ;	assignBit
      000145 D2 01            [12]  575 	setb	_pushed
                                    576 ;	transmitter.c:65: Transmit_data('c');
      000147 75 82 63         [24]  577 	mov	dpl,#0x63
      00014A 12 04 12         [24]  578 	lcall	_Transmit_data
                                    579 ;	transmitter.c:66: state = 3;
      00014D 75 08 03         [24]  580 	mov	_state,#0x03
      000150 75 09 00         [24]  581 	mov	(_state + 1),#0x00
                                    582 ;	transmitter.c:67: button = 'c';
      000153 75 10 63         [24]  583 	mov	_button,#0x63
      000156                        584 00107$:
                                    585 ;	transmitter.c:69: time_delay=3;
      000156 75 0E 03         [24]  586 	mov	_time_delay,#0x03
      000159 75 0F 00         [24]  587 	mov	(_time_delay + 1),#0x00
                                    588 ;	transmitter.c:70: a_g=0;
                                    589 ;	assignBit
      00015C C2 00            [12]  590 	clr	_a_g
                                    591 ;	transmitter.c:71: break;
      00015E 02 01 E3         [24]  592 	ljmp	00118$
                                    593 ;	transmitter.c:73: case 0x37:
      000161                        594 00108$:
                                    595 ;	transmitter.c:74: if(received)
      000161 E5 12            [12]  596 	mov	a,_received
      000163 60 13            [24]  597 	jz	00110$
                                    598 ;	transmitter.c:75: {		pushed = 1;
                                    599 ;	assignBit
      000165 D2 01            [12]  600 	setb	_pushed
                                    601 ;	transmitter.c:76: Transmit_data('d');
      000167 75 82 64         [24]  602 	mov	dpl,#0x64
      00016A 12 04 12         [24]  603 	lcall	_Transmit_data
                                    604 ;	transmitter.c:77: state = 7;
      00016D 75 08 07         [24]  605 	mov	_state,#0x07
      000170 75 09 00         [24]  606 	mov	(_state + 1),#0x00
                                    607 ;	transmitter.c:78: button = 'd';
      000173 75 10 64         [24]  608 	mov	_button,#0x64
      000176 80 11            [24]  609 	sjmp	00111$
      000178                        610 00110$:
                                    611 ;	transmitter.c:82: pushed = 1;
                                    612 ;	assignBit
      000178 D2 01            [12]  613 	setb	_pushed
                                    614 ;	transmitter.c:83: Transmit_data('e');
      00017A 75 82 65         [24]  615 	mov	dpl,#0x65
      00017D 12 04 12         [24]  616 	lcall	_Transmit_data
                                    617 ;	transmitter.c:84: state = 4;
      000180 75 08 04         [24]  618 	mov	_state,#0x04
      000183 75 09 00         [24]  619 	mov	(_state + 1),#0x00
                                    620 ;	transmitter.c:85: button = 'e';
      000186 75 10 65         [24]  621 	mov	_button,#0x65
      000189                        622 00111$:
                                    623 ;	transmitter.c:87: time_delay=3;
      000189 75 0E 03         [24]  624 	mov	_time_delay,#0x03
      00018C 75 0F 00         [24]  625 	mov	(_time_delay + 1),#0x00
                                    626 ;	transmitter.c:88: a_g=0;
                                    627 ;	assignBit
      00018F C2 00            [12]  628 	clr	_a_g
                                    629 ;	transmitter.c:89: break;
                                    630 ;	transmitter.c:91: case 0x2f:
      000191 80 50            [24]  631 	sjmp	00118$
      000193                        632 00112$:
                                    633 ;	transmitter.c:92: pushed = 1;
                                    634 ;	assignBit
      000193 D2 01            [12]  635 	setb	_pushed
                                    636 ;	transmitter.c:93: Transmit_data('f');
      000195 75 82 66         [24]  637 	mov	dpl,#0x66
      000198 12 04 12         [24]  638 	lcall	_Transmit_data
                                    639 ;	transmitter.c:94: state = 5;
      00019B 75 08 05         [24]  640 	mov	_state,#0x05
      00019E 75 09 00         [24]  641 	mov	(_state + 1),#0x00
                                    642 ;	transmitter.c:95: button = 'f';
      0001A1 75 10 66         [24]  643 	mov	_button,#0x66
                                    644 ;	transmitter.c:96: time_delay=3;
      0001A4 75 0E 03         [24]  645 	mov	_time_delay,#0x03
      0001A7 75 0F 00         [24]  646 	mov	(_time_delay + 1),#0x00
                                    647 ;	transmitter.c:97: a_g=0;
                                    648 ;	assignBit
      0001AA C2 00            [12]  649 	clr	_a_g
                                    650 ;	transmitter.c:98: break;
                                    651 ;	transmitter.c:100: case 0x1f:
      0001AC 80 35            [24]  652 	sjmp	00118$
      0001AE                        653 00113$:
                                    654 ;	transmitter.c:101: pushed = 1;
                                    655 ;	assignBit
      0001AE D2 01            [12]  656 	setb	_pushed
                                    657 ;	transmitter.c:102: Transmit_data('g');
      0001B0 75 82 67         [24]  658 	mov	dpl,#0x67
      0001B3 12 04 12         [24]  659 	lcall	_Transmit_data
                                    660 ;	transmitter.c:103: P2 =0x20;
      0001B6 75 A0 20         [24]  661 	mov	_P2,#0x20
                                    662 ;	transmitter.c:104: state = 6;
      0001B9 75 08 06         [24]  663 	mov	_state,#0x06
      0001BC 75 09 00         [24]  664 	mov	(_state + 1),#0x00
                                    665 ;	transmitter.c:105: button = 'g';
      0001BF 75 10 67         [24]  666 	mov	_button,#0x67
                                    667 ;	transmitter.c:106: a_g=1;
                                    668 ;	assignBit
      0001C2 D2 00            [12]  669 	setb	_a_g
                                    670 ;	transmitter.c:107: break;
                                    671 ;	transmitter.c:109: case 0x33:
      0001C4 80 1D            [24]  672 	sjmp	00118$
      0001C6                        673 00114$:
                                    674 ;	transmitter.c:110: pushed = 1;
                                    675 ;	assignBit
      0001C6 D2 01            [12]  676 	setb	_pushed
                                    677 ;	transmitter.c:111: Transmit_data('d');
      0001C8 75 82 64         [24]  678 	mov	dpl,#0x64
      0001CB 12 04 12         [24]  679 	lcall	_Transmit_data
                                    680 ;	transmitter.c:112: state = 7;
      0001CE 75 08 07         [24]  681 	mov	_state,#0x07
      0001D1 75 09 00         [24]  682 	mov	(_state + 1),#0x00
                                    683 ;	transmitter.c:113: button = 'd';
      0001D4 75 10 64         [24]  684 	mov	_button,#0x64
                                    685 ;	transmitter.c:114: time_delay=3;
      0001D7 75 0E 03         [24]  686 	mov	_time_delay,#0x03
      0001DA 75 0F 00         [24]  687 	mov	(_time_delay + 1),#0x00
                                    688 ;	transmitter.c:115: a_g=0;
                                    689 ;	assignBit
      0001DD C2 00            [12]  690 	clr	_a_g
                                    691 ;	transmitter.c:116: break;
                                    692 ;	transmitter.c:118: default:pushed = 0;
      0001DF 80 02            [24]  693 	sjmp	00118$
      0001E1                        694 00115$:
                                    695 ;	assignBit
      0001E1 C2 01            [12]  696 	clr	_pushed
                                    697 ;	transmitter.c:120: }
      0001E3                        698 00118$:
                                    699 ;	transmitter.c:125: if(timerCount == 40)
      0001E3 74 28            [12]  700 	mov	a,#0x28
      0001E5 B5 0C 06         [24]  701 	cjne	a,_timerCount,00246$
      0001E8 E4               [12]  702 	clr	a
      0001E9 B5 0D 02         [24]  703 	cjne	a,(_timerCount + 1),00246$
      0001EC 80 02            [24]  704 	sjmp	00247$
      0001EE                        705 00246$:
      0001EE 80 08            [24]  706 	sjmp	00120$
      0001F0                        707 00247$:
                                    708 ;	transmitter.c:127: pushed=0;
                                    709 ;	assignBit
      0001F0 C2 01            [12]  710 	clr	_pushed
                                    711 ;	transmitter.c:128: Transmit_data(button);
      0001F2 85 10 82         [24]  712 	mov	dpl,_button
      0001F5 12 04 12         [24]  713 	lcall	_Transmit_data
      0001F8                        714 00120$:
                                    715 ;	transmitter.c:132: if(pushed)
      0001F8 20 01 03         [24]  716 	jb	_pushed,00248$
      0001FB 02 03 2A         [24]  717 	ljmp	00151$
      0001FE                        718 00248$:
                                    719 ;	transmitter.c:134: if(timerCount < (time_delay*10)) // count for LED-ON delay
      0001FE 85 0E 13         [24]  720 	mov	__mulint_PARM_2,_time_delay
      000201 85 0F 14         [24]  721 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      000204 90 00 0A         [24]  722 	mov	dptr,#0x000a
      000207 12 04 DB         [24]  723 	lcall	__mulint
      00020A AE 82            [24]  724 	mov	r6,dpl
      00020C AF 83            [24]  725 	mov	r7,dph
      00020E C3               [12]  726 	clr	c
      00020F E5 0C            [12]  727 	mov	a,_timerCount
      000211 9E               [12]  728 	subb	a,r6
      000212 E5 0D            [12]  729 	mov	a,(_timerCount + 1)
      000214 64 80            [12]  730 	xrl	a,#0x80
      000216 8F F0            [24]  731 	mov	b,r7
      000218 63 F0 80         [24]  732 	xrl	b,#0x80
      00021B 95 F0            [12]  733 	subb	a,b
      00021D 40 03            [24]  734 	jc	00249$
      00021F 02 02 9A         [24]  735 	ljmp	00148$
      000222                        736 00249$:
                                    737 ;	transmitter.c:136: switch(state)
      000222 AE 08            [24]  738 	mov	r6,_state
      000224 E5 09            [12]  739 	mov	a,(_state + 1)
      000226 FF               [12]  740 	mov	r7,a
      000227 30 E7 03         [24]  741 	jnb	acc.7,00250$
      00022A 02 03 2A         [24]  742 	ljmp	00151$
      00022D                        743 00250$:
      00022D C3               [12]  744 	clr	c
      00022E 74 09            [12]  745 	mov	a,#0x09
      000230 9E               [12]  746 	subb	a,r6
      000231 74 80            [12]  747 	mov	a,#(0x00 ^ 0x80)
      000233 8F F0            [24]  748 	mov	b,r7
      000235 63 F0 80         [24]  749 	xrl	b,#0x80
      000238 95 F0            [12]  750 	subb	a,b
      00023A 50 03            [24]  751 	jnc	00251$
      00023C 02 03 2A         [24]  752 	ljmp	00151$
      00023F                        753 00251$:
      00023F EE               [12]  754 	mov	a,r6
      000240 F5 F0            [12]  755 	mov	b,a
      000242 24 0B            [12]  756 	add	a,#(00252$-3-.)
      000244 83               [24]  757 	movc	a,@a+pc
      000245 F5 82            [12]  758 	mov	dpl,a
      000247 E5 F0            [12]  759 	mov	a,b
      000249 24 0E            [12]  760 	add	a,#(00253$-3-.)
      00024B 83               [24]  761 	movc	a,@a+pc
      00024C F5 83            [12]  762 	mov	dph,a
      00024E E4               [12]  763 	clr	a
      00024F 73               [24]  764 	jmp	@a+dptr
      000250                        765 00252$:
      000250 2A                     766 	.db	00151$
      000251 64                     767 	.db	00121$
      000252 6A                     768 	.db	00122$
      000253 70                     769 	.db	00123$
      000254 76                     770 	.db	00124$
      000255 7C                     771 	.db	00125$
      000256 82                     772 	.db	00126$
      000257 88                     773 	.db	00127$
      000258 8E                     774 	.db	00128$
      000259 94                     775 	.db	00129$
      00025A                        776 00253$:
      00025A 03                     777 	.db	00151$>>8
      00025B 02                     778 	.db	00121$>>8
      00025C 02                     779 	.db	00122$>>8
      00025D 02                     780 	.db	00123$>>8
      00025E 02                     781 	.db	00124$>>8
      00025F 02                     782 	.db	00125$>>8
      000260 02                     783 	.db	00126$>>8
      000261 02                     784 	.db	00127$>>8
      000262 02                     785 	.db	00128$>>8
      000263 02                     786 	.db	00129$>>8
                                    787 ;	transmitter.c:139: case 1:	P2 =0x80;break;
      000264                        788 00121$:
      000264 75 A0 80         [24]  789 	mov	_P2,#0x80
      000267 02 03 2A         [24]  790 	ljmp	00151$
                                    791 ;	transmitter.c:140: case 2:	P2 =0x80;break;
      00026A                        792 00122$:
      00026A 75 A0 80         [24]  793 	mov	_P2,#0x80
      00026D 02 03 2A         [24]  794 	ljmp	00151$
                                    795 ;	transmitter.c:141: case 3:	P2 =0xc0;break;
      000270                        796 00123$:
      000270 75 A0 C0         [24]  797 	mov	_P2,#0xc0
      000273 02 03 2A         [24]  798 	ljmp	00151$
                                    799 ;	transmitter.c:142: case 4:	P2 =0x60;break;
      000276                        800 00124$:
      000276 75 A0 60         [24]  801 	mov	_P2,#0x60
      000279 02 03 2A         [24]  802 	ljmp	00151$
                                    803 ;	transmitter.c:143: case 5:	P2 =0x20;break;
      00027C                        804 00125$:
      00027C 75 A0 20         [24]  805 	mov	_P2,#0x20
      00027F 02 03 2A         [24]  806 	ljmp	00151$
                                    807 ;	transmitter.c:144: case 6:	P2 =0x20;break;
      000282                        808 00126$:
      000282 75 A0 20         [24]  809 	mov	_P2,#0x20
      000285 02 03 2A         [24]  810 	ljmp	00151$
                                    811 ;	transmitter.c:145: case 7:	P2 =0x40;break;
      000288                        812 00127$:
      000288 75 A0 40         [24]  813 	mov	_P2,#0x40
      00028B 02 03 2A         [24]  814 	ljmp	00151$
                                    815 ;	transmitter.c:146: case 8:	P2 =0x80;break;
      00028E                        816 00128$:
      00028E 75 A0 80         [24]  817 	mov	_P2,#0x80
      000291 02 03 2A         [24]  818 	ljmp	00151$
                                    819 ;	transmitter.c:147: case 9:	P2 =0x20;break;
      000294                        820 00129$:
      000294 75 A0 20         [24]  821 	mov	_P2,#0x20
      000297 02 03 2A         [24]  822 	ljmp	00151$
                                    823 ;	transmitter.c:148: default:break;}
      00029A                        824 00148$:
                                    825 ;	transmitter.c:152: else if((timerCount > time_delay) &&(timerCount<time_delay*20)) // count for LED-ON delay
      00029A C3               [12]  826 	clr	c
      00029B E5 0E            [12]  827 	mov	a,_time_delay
      00029D 95 0C            [12]  828 	subb	a,_timerCount
      00029F E5 0F            [12]  829 	mov	a,(_time_delay + 1)
      0002A1 64 80            [12]  830 	xrl	a,#0x80
      0002A3 85 0D F0         [24]  831 	mov	b,(_timerCount + 1)
      0002A6 63 F0 80         [24]  832 	xrl	b,#0x80
      0002A9 95 F0            [12]  833 	subb	a,b
      0002AB 40 03            [24]  834 	jc	00254$
      0002AD 02 03 25         [24]  835 	ljmp	00144$
      0002B0                        836 00254$:
      0002B0 85 0E 13         [24]  837 	mov	__mulint_PARM_2,_time_delay
      0002B3 85 0F 14         [24]  838 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      0002B6 90 00 14         [24]  839 	mov	dptr,#0x0014
      0002B9 12 04 DB         [24]  840 	lcall	__mulint
      0002BC AE 82            [24]  841 	mov	r6,dpl
      0002BE AF 83            [24]  842 	mov	r7,dph
      0002C0 C3               [12]  843 	clr	c
      0002C1 E5 0C            [12]  844 	mov	a,_timerCount
      0002C3 9E               [12]  845 	subb	a,r6
      0002C4 E5 0D            [12]  846 	mov	a,(_timerCount + 1)
      0002C6 64 80            [12]  847 	xrl	a,#0x80
      0002C8 8F F0            [24]  848 	mov	b,r7
      0002CA 63 F0 80         [24]  849 	xrl	b,#0x80
      0002CD 95 F0            [12]  850 	subb	a,b
      0002CF 40 03            [24]  851 	jc	00255$
      0002D1 02 03 25         [24]  852 	ljmp	00144$
      0002D4                        853 00255$:
                                    854 ;	transmitter.c:154: switch(state)
      0002D4 AE 08            [24]  855 	mov	r6,_state
      0002D6 E5 09            [12]  856 	mov	a,(_state + 1)
      0002D8 FF               [12]  857 	mov	r7,a
      0002D9 30 E7 03         [24]  858 	jnb	acc.7,00256$
      0002DC 02 03 2A         [24]  859 	ljmp	00151$
      0002DF                        860 00256$:
      0002DF C3               [12]  861 	clr	c
      0002E0 74 09            [12]  862 	mov	a,#0x09
      0002E2 9E               [12]  863 	subb	a,r6
      0002E3 74 80            [12]  864 	mov	a,#(0x00 ^ 0x80)
      0002E5 8F F0            [24]  865 	mov	b,r7
      0002E7 63 F0 80         [24]  866 	xrl	b,#0x80
      0002EA 95 F0            [12]  867 	subb	a,b
      0002EC 50 03            [24]  868 	jnc	00257$
      0002EE 02 03 2A         [24]  869 	ljmp	00151$
      0002F1                        870 00257$:
      0002F1 EE               [12]  871 	mov	a,r6
      0002F2 F5 F0            [12]  872 	mov	b,a
      0002F4 24 0B            [12]  873 	add	a,#(00258$-3-.)
      0002F6 83               [24]  874 	movc	a,@a+pc
      0002F7 F5 82            [12]  875 	mov	dpl,a
      0002F9 E5 F0            [12]  876 	mov	a,b
      0002FB 24 0E            [12]  877 	add	a,#(00259$-3-.)
      0002FD 83               [24]  878 	movc	a,@a+pc
      0002FE F5 83            [12]  879 	mov	dph,a
      000300 E4               [12]  880 	clr	a
      000301 73               [24]  881 	jmp	@a+dptr
      000302                        882 00258$:
      000302 2A                     883 	.db	00151$
      000303 1B                     884 	.db	00139$
      000304 16                     885 	.db	00138$
      000305 16                     886 	.db	00138$
      000306 16                     887 	.db	00138$
      000307 16                     888 	.db	00138$
      000308 20                     889 	.db	00140$
      000309 16                     890 	.db	00138$
      00030A 16                     891 	.db	00138$
      00030B 16                     892 	.db	00138$
      00030C                        893 00259$:
      00030C 03                     894 	.db	00151$>>8
      00030D 03                     895 	.db	00139$>>8
      00030E 03                     896 	.db	00138$>>8
      00030F 03                     897 	.db	00138$>>8
      000310 03                     898 	.db	00138$>>8
      000311 03                     899 	.db	00138$>>8
      000312 03                     900 	.db	00140$>>8
      000313 03                     901 	.db	00138$>>8
      000314 03                     902 	.db	00138$>>8
      000315 03                     903 	.db	00138$>>8
                                    904 ;	transmitter.c:163: case 9:P2 =0x00;break;
      000316                        905 00138$:
      000316 75 A0 00         [24]  906 	mov	_P2,#0x00
                                    907 ;	transmitter.c:164: case 1:P2 =0x80;break;
      000319 80 0F            [24]  908 	sjmp	00151$
      00031B                        909 00139$:
      00031B 75 A0 80         [24]  910 	mov	_P2,#0x80
                                    911 ;	transmitter.c:165: case 6:P2 =0x20;break;
      00031E 80 0A            [24]  912 	sjmp	00151$
      000320                        913 00140$:
      000320 75 A0 20         [24]  914 	mov	_P2,#0x20
                                    915 ;	transmitter.c:166: default:break;}
      000323 80 05            [24]  916 	sjmp	00151$
      000325                        917 00144$:
                                    918 ;	transmitter.c:170: timerCount = 0;
      000325 E4               [12]  919 	clr	a
      000326 F5 0C            [12]  920 	mov	_timerCount,a
      000328 F5 0D            [12]  921 	mov	(_timerCount + 1),a
      00032A                        922 00151$:
                                    923 ;	transmitter.c:172: state_was=state;
      00032A 85 08 0A         [24]  924 	mov	_state_was,_state
      00032D 85 09 0B         [24]  925 	mov	(_state_was + 1),(_state + 1)
                                    926 ;	transmitter.c:173: }
      000330 D0 D0            [24]  927 	pop	psw
      000332 D0 00            [24]  928 	pop	(0+0)
      000334 D0 01            [24]  929 	pop	(0+1)
      000336 D0 02            [24]  930 	pop	(0+2)
      000338 D0 03            [24]  931 	pop	(0+3)
      00033A D0 04            [24]  932 	pop	(0+4)
      00033C D0 05            [24]  933 	pop	(0+5)
      00033E D0 06            [24]  934 	pop	(0+6)
      000340 D0 07            [24]  935 	pop	(0+7)
      000342 D0 83            [24]  936 	pop	dph
      000344 D0 82            [24]  937 	pop	dpl
      000346 D0 F0            [24]  938 	pop	b
      000348 D0 E0            [24]  939 	pop	acc
      00034A D0 21            [24]  940 	pop	bits
      00034C 32               [24]  941 	reti
                                    942 ;------------------------------------------------------------
                                    943 ;Allocation info for local variables in function 'main'
                                    944 ;------------------------------------------------------------
                                    945 ;	transmitter.c:175: void main(void)
                                    946 ;	-----------------------------------------
                                    947 ;	 function main
                                    948 ;	-----------------------------------------
      00034D                        949 _main:
                                    950 ;	transmitter.c:177: startup();
      00034D 12 03 9D         [24]  951 	lcall	_startup
                                    952 ;	transmitter.c:179: UART_Init();
      000350 12 03 E0         [24]  953 	lcall	_UART_Init
                                    954 ;	transmitter.c:180: handshake();
      000353 12 03 EC         [24]  955 	lcall	_handshake
                                    956 ;	transmitter.c:182: InitTimer1();
      000356 12 04 46         [24]  957 	lcall	_InitTimer1
                                    958 ;	transmitter.c:184: EA  = 1;         // Global interrupt enable
                                    959 ;	assignBit
      000359 D2 AF            [12]  960 	setb	_EA
                                    961 ;	transmitter.c:186: while(1)
      00035B                        962 00109$:
                                    963 ;	transmitter.c:188: if(!pushed)
      00035B 20 01 0B         [24]  964 	jb	_pushed,00106$
                                    965 ;	transmitter.c:190: delay();
      00035E 12 03 74         [24]  966 	lcall	_delay
                                    967 ;	transmitter.c:191: if(!pushed)
      000361 20 01 F7         [24]  968 	jb	_pushed,00109$
                                    969 ;	transmitter.c:193: default_and_a_g();
      000364 12 04 54         [24]  970 	lcall	_default_and_a_g
      000367 80 F2            [24]  971 	sjmp	00109$
      000369                        972 00106$:
                                    973 ;	transmitter.c:196: else if(pushed)
      000369 30 01 EF         [24]  974 	jnb	_pushed,00109$
                                    975 ;	transmitter.c:198: delay();
      00036C 12 03 74         [24]  976 	lcall	_delay
                                    977 ;	transmitter.c:199: check_x();
      00036F 12 04 1B         [24]  978 	lcall	_check_x
                                    979 ;	transmitter.c:203: }
      000372 80 E7            [24]  980 	sjmp	00109$
                                    981 ;------------------------------------------------------------
                                    982 ;Allocation info for local variables in function 'delay'
                                    983 ;------------------------------------------------------------
                                    984 ;i                         Allocated to registers r6 r7 
                                    985 ;j                         Allocated to registers r4 r5 
                                    986 ;------------------------------------------------------------
                                    987 ;	transmitter.c:206: void delay(void)
                                    988 ;	-----------------------------------------
                                    989 ;	 function delay
                                    990 ;	-----------------------------------------
      000374                        991 _delay:
                                    992 ;	transmitter.c:209: for(i=0;i<0x33;i++)
      000374 7E 00            [12]  993 	mov	r6,#0x00
      000376 7F 00            [12]  994 	mov	r7,#0x00
      000378                        995 00106$:
                                    996 ;	transmitter.c:210: for(j=0;j<0xff;j++);
      000378 7C FF            [12]  997 	mov	r4,#0xff
      00037A 7D 00            [12]  998 	mov	r5,#0x00
      00037C                        999 00105$:
      00037C EC               [12] 1000 	mov	a,r4
      00037D 24 FF            [12] 1001 	add	a,#0xff
      00037F FA               [12] 1002 	mov	r2,a
      000380 ED               [12] 1003 	mov	a,r5
      000381 34 FF            [12] 1004 	addc	a,#0xff
      000383 FB               [12] 1005 	mov	r3,a
      000384 8A 04            [24] 1006 	mov	ar4,r2
      000386 8B 05            [24] 1007 	mov	ar5,r3
      000388 EA               [12] 1008 	mov	a,r2
      000389 4B               [12] 1009 	orl	a,r3
      00038A 70 F0            [24] 1010 	jnz	00105$
                                   1011 ;	transmitter.c:209: for(i=0;i<0x33;i++)
      00038C 0E               [12] 1012 	inc	r6
      00038D BE 00 01         [24] 1013 	cjne	r6,#0x00,00124$
      000390 0F               [12] 1014 	inc	r7
      000391                       1015 00124$:
      000391 C3               [12] 1016 	clr	c
      000392 EE               [12] 1017 	mov	a,r6
      000393 94 33            [12] 1018 	subb	a,#0x33
      000395 EF               [12] 1019 	mov	a,r7
      000396 64 80            [12] 1020 	xrl	a,#0x80
      000398 94 80            [12] 1021 	subb	a,#0x80
      00039A 40 DC            [24] 1022 	jc	00106$
                                   1023 ;	transmitter.c:211: }
      00039C 22               [24] 1024 	ret
                                   1025 ;------------------------------------------------------------
                                   1026 ;Allocation info for local variables in function 'startup'
                                   1027 ;------------------------------------------------------------
                                   1028 ;	transmitter.c:215: void startup(void)
                                   1029 ;	-----------------------------------------
                                   1030 ;	 function startup
                                   1031 ;	-----------------------------------------
      00039D                       1032 _startup:
                                   1033 ;	transmitter.c:217: P1 = 0xff;
      00039D 75 90 FF         [24] 1034 	mov	_P1,#0xff
                                   1035 ;	transmitter.c:218: P2 = 0x00;
      0003A0 75 A0 00         [24] 1036 	mov	_P2,#0x00
                                   1037 ;	transmitter.c:219: delay();delay();
      0003A3 12 03 74         [24] 1038 	lcall	_delay
      0003A6 12 03 74         [24] 1039 	lcall	_delay
                                   1040 ;	transmitter.c:220: P2 = 0xE0;
      0003A9 75 A0 E0         [24] 1041 	mov	_P2,#0xe0
                                   1042 ;	transmitter.c:221: delay();
      0003AC 12 03 74         [24] 1043 	lcall	_delay
                                   1044 ;	transmitter.c:222: P2 = 0x80;
      0003AF 75 A0 80         [24] 1045 	mov	_P2,#0x80
                                   1046 ;	transmitter.c:223: delay();delay();delay();delay();
      0003B2 12 03 74         [24] 1047 	lcall	_delay
      0003B5 12 03 74         [24] 1048 	lcall	_delay
      0003B8 12 03 74         [24] 1049 	lcall	_delay
      0003BB 12 03 74         [24] 1050 	lcall	_delay
                                   1051 ;	transmitter.c:224: P2 = 0x40;
      0003BE 75 A0 40         [24] 1052 	mov	_P2,#0x40
                                   1053 ;	transmitter.c:225: delay();delay();delay();delay();
      0003C1 12 03 74         [24] 1054 	lcall	_delay
      0003C4 12 03 74         [24] 1055 	lcall	_delay
      0003C7 12 03 74         [24] 1056 	lcall	_delay
      0003CA 12 03 74         [24] 1057 	lcall	_delay
                                   1058 ;	transmitter.c:226: P2 = 0x20;
      0003CD 75 A0 20         [24] 1059 	mov	_P2,#0x20
                                   1060 ;	transmitter.c:227: delay();delay();delay();delay();
      0003D0 12 03 74         [24] 1061 	lcall	_delay
      0003D3 12 03 74         [24] 1062 	lcall	_delay
      0003D6 12 03 74         [24] 1063 	lcall	_delay
      0003D9 12 03 74         [24] 1064 	lcall	_delay
                                   1065 ;	transmitter.c:228: P2 = 0x00;
      0003DC 75 A0 00         [24] 1066 	mov	_P2,#0x00
                                   1067 ;	transmitter.c:229: }
      0003DF 22               [24] 1068 	ret
                                   1069 ;------------------------------------------------------------
                                   1070 ;Allocation info for local variables in function 'UART_Init'
                                   1071 ;------------------------------------------------------------
                                   1072 ;	transmitter.c:232: void UART_Init()
                                   1073 ;	-----------------------------------------
                                   1074 ;	 function UART_Init
                                   1075 ;	-----------------------------------------
      0003E0                       1076 _UART_Init:
                                   1077 ;	transmitter.c:234: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      0003E0 75 89 20         [24] 1078 	mov	_TMOD,#0x20
                                   1079 ;	transmitter.c:235: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      0003E3 75 8D FD         [24] 1080 	mov	_TH1,#0xfd
                                   1081 ;	transmitter.c:236: SCON = 0x50;		/* Mode 1, reception enable */
      0003E6 75 98 50         [24] 1082 	mov	_SCON,#0x50
                                   1083 ;	transmitter.c:237: TR1 = 1;		/* Start timer 1 */
                                   1084 ;	assignBit
      0003E9 D2 8E            [12] 1085 	setb	_TR1
                                   1086 ;	transmitter.c:238: }
      0003EB 22               [24] 1087 	ret
                                   1088 ;------------------------------------------------------------
                                   1089 ;Allocation info for local variables in function 'handshake'
                                   1090 ;------------------------------------------------------------
                                   1091 ;	transmitter.c:241: void handshake()
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function handshake
                                   1094 ;	-----------------------------------------
      0003EC                       1095 _handshake:
                                   1096 ;	transmitter.c:243: start:while(!data_r)
      0003EC                       1097 00102$:
      0003EC E5 11            [12] 1098 	mov	a,_data_r
      0003EE 70 13            [24] 1099 	jnz	00104$
                                   1100 ;	transmitter.c:245: data_r=SBUF;
      0003F0 85 99 11         [24] 1101 	mov	_data_r,_SBUF
                                   1102 ;	transmitter.c:246: RI=0;
                                   1103 ;	assignBit
      0003F3 C2 98            [12] 1104 	clr	_RI
                                   1105 ;	transmitter.c:247: P2 = 0xA0; // Turn ON all LED's connected to Port1
      0003F5 75 A0 A0         [24] 1106 	mov	_P2,#0xa0
                                   1107 ;	transmitter.c:248: delay();
      0003F8 12 03 74         [24] 1108 	lcall	_delay
                                   1109 ;	transmitter.c:249: P2 = 0x00; // Turn OFF all LED's connected to Port1
      0003FB 75 A0 00         [24] 1110 	mov	_P2,#0x00
                                   1111 ;	transmitter.c:250: delay();
      0003FE 12 03 74         [24] 1112 	lcall	_delay
      000401 80 E9            [24] 1113 	sjmp	00102$
      000403                       1114 00104$:
                                   1115 ;	transmitter.c:253: if(data_r=='x')
      000403 74 78            [12] 1116 	mov	a,#0x78
      000405 B5 11 E4         [24] 1117 	cjne	a,_data_r,00102$
                                   1118 ;	transmitter.c:255: Transmit_data('y');
      000408 75 82 79         [24] 1119 	mov	dpl,#0x79
      00040B 12 04 12         [24] 1120 	lcall	_Transmit_data
                                   1121 ;	transmitter.c:256: data_r=0;
      00040E 75 11 00         [24] 1122 	mov	_data_r,#0x00
                                   1123 ;	transmitter.c:259: else goto start;
                                   1124 ;	transmitter.c:260: }
      000411 22               [24] 1125 	ret
                                   1126 ;------------------------------------------------------------
                                   1127 ;Allocation info for local variables in function 'Transmit_data'
                                   1128 ;------------------------------------------------------------
                                   1129 ;tx_data                   Allocated to registers 
                                   1130 ;------------------------------------------------------------
                                   1131 ;	transmitter.c:263: void Transmit_data(char tx_data)
                                   1132 ;	-----------------------------------------
                                   1133 ;	 function Transmit_data
                                   1134 ;	-----------------------------------------
      000412                       1135 _Transmit_data:
      000412 85 82 99         [24] 1136 	mov	_SBUF,dpl
                                   1137 ;	transmitter.c:266: while (TI==0);		/* Wait until stop bit transmit */
      000415                       1138 00101$:
                                   1139 ;	transmitter.c:267: TI = 0;			/* Clear TI flag */
                                   1140 ;	assignBit
      000415 10 99 02         [24] 1141 	jbc	_TI,00114$
      000418 80 FB            [24] 1142 	sjmp	00101$
      00041A                       1143 00114$:
                                   1144 ;	transmitter.c:268: }
      00041A 22               [24] 1145 	ret
                                   1146 ;------------------------------------------------------------
                                   1147 ;Allocation info for local variables in function 'check_x'
                                   1148 ;------------------------------------------------------------
                                   1149 ;	transmitter.c:272: void check_x()
                                   1150 ;	-----------------------------------------
                                   1151 ;	 function check_x
                                   1152 ;	-----------------------------------------
      00041B                       1153 _check_x:
                                   1154 ;	transmitter.c:275: TI=0;
                                   1155 ;	assignBit
      00041B C2 99            [12] 1156 	clr	_TI
                                   1157 ;	transmitter.c:276: data_r = SBUF;		/* Load char in SBUF register */
      00041D 85 99 11         [24] 1158 	mov	_data_r,_SBUF
                                   1159 ;	transmitter.c:277: RI = 0;			/* Clear TI flag */
                                   1160 ;	assignBit
      000420 C2 98            [12] 1161 	clr	_RI
                                   1162 ;	transmitter.c:278: if(data_r=='x')
      000422 74 78            [12] 1163 	mov	a,#0x78
      000424 B5 11 06         [24] 1164 	cjne	a,_data_r,00108$
                                   1165 ;	transmitter.c:279: Transmit_data('y');
      000427 75 82 79         [24] 1166 	mov	dpl,#0x79
      00042A 02 04 12         [24] 1167 	ljmp	_Transmit_data
      00042D                       1168 00108$:
                                   1169 ;	transmitter.c:280: else if((data_r=='m')||(data_r=='h'))
      00042D 74 6D            [12] 1170 	mov	a,#0x6d
      00042F B5 11 02         [24] 1171 	cjne	a,_data_r,00126$
      000432 80 05            [24] 1172 	sjmp	00103$
      000434                       1173 00126$:
      000434 74 68            [12] 1174 	mov	a,#0x68
      000436 B5 11 04         [24] 1175 	cjne	a,_data_r,00104$
      000439                       1176 00103$:
                                   1177 ;	transmitter.c:281: received = 0;
      000439 75 12 00         [24] 1178 	mov	_received,#0x00
      00043C 22               [24] 1179 	ret
      00043D                       1180 00104$:
                                   1181 ;	transmitter.c:282: else if(data_r=='l')
      00043D 74 6C            [12] 1182 	mov	a,#0x6c
      00043F B5 11 03         [24] 1183 	cjne	a,_data_r,00110$
                                   1184 ;	transmitter.c:283: received = 1;
      000442 75 12 01         [24] 1185 	mov	_received,#0x01
      000445                       1186 00110$:
                                   1187 ;	transmitter.c:284: }
      000445 22               [24] 1188 	ret
                                   1189 ;------------------------------------------------------------
                                   1190 ;Allocation info for local variables in function 'InitTimer1'
                                   1191 ;------------------------------------------------------------
                                   1192 ;	transmitter.c:288: void InitTimer1(void)
                                   1193 ;	-----------------------------------------
                                   1194 ;	 function InitTimer1
                                   1195 ;	-----------------------------------------
      000446                       1196 _InitTimer1:
                                   1197 ;	transmitter.c:290: TMOD |= 0x01;    // Set timer0 in mode 1
      000446 43 89 01         [24] 1198 	orl	_TMOD,#0x01
                                   1199 ;	transmitter.c:291: TH0 = 0xee;      // 5 msec reloading time
      000449 75 8C EE         [24] 1200 	mov	_TH0,#0xee
                                   1201 ;	transmitter.c:292: TL0 = 0x00;      // First time value
      00044C 75 8A 00         [24] 1202 	mov	_TL0,#0x00
                                   1203 ;	transmitter.c:293: TR0 = 1;         // Start Timer 1
                                   1204 ;	assignBit
      00044F D2 8C            [12] 1205 	setb	_TR0
                                   1206 ;	transmitter.c:294: ET0 = 1;         // Enable Timer1 interrupts	
                                   1207 ;	assignBit
      000451 D2 A9            [12] 1208 	setb	_ET0
                                   1209 ;	transmitter.c:295: }
      000453 22               [24] 1210 	ret
                                   1211 ;------------------------------------------------------------
                                   1212 ;Allocation info for local variables in function 'default_and_a_g'
                                   1213 ;------------------------------------------------------------
                                   1214 ;	transmitter.c:298: void default_and_a_g()
                                   1215 ;	-----------------------------------------
                                   1216 ;	 function default_and_a_g
                                   1217 ;	-----------------------------------------
      000454                       1218 _default_and_a_g:
                                   1219 ;	transmitter.c:301: if(a_g)
      000454 30 00 61         [24] 1220 	jnb	_a_g,00111$
                                   1221 ;	transmitter.c:303: if(((state_was==1)||(state_was==8))&&(!pushed))
      000457 74 01            [12] 1222 	mov	a,#0x01
      000459 B5 0A 06         [24] 1223 	cjne	a,_state_was,00136$
      00045C 14               [12] 1224 	dec	a
      00045D B5 0B 02         [24] 1225 	cjne	a,(_state_was + 1),00136$
      000460 80 0D            [24] 1226 	sjmp	00109$
      000462                       1227 00136$:
      000462 74 08            [12] 1228 	mov	a,#0x08
      000464 B5 0A 06         [24] 1229 	cjne	a,_state_was,00137$
      000467 E4               [12] 1230 	clr	a
      000468 B5 0B 02         [24] 1231 	cjne	a,(_state_was + 1),00137$
      00046B 80 02            [24] 1232 	sjmp	00138$
      00046D                       1233 00137$:
      00046D 80 19            [24] 1234 	sjmp	00106$
      00046F                       1235 00138$:
      00046F                       1236 00109$:
      00046F 20 01 16         [24] 1237 	jb	_pushed,00106$
                                   1238 ;	transmitter.c:304: {state = 8;		Transmit_data('n');		time_delay=10;
      000472 75 08 08         [24] 1239 	mov	_state,#0x08
      000475 75 09 00         [24] 1240 	mov	(_state + 1),#0x00
      000478 75 82 6E         [24] 1241 	mov	dpl,#0x6e
      00047B 12 04 12         [24] 1242 	lcall	_Transmit_data
      00047E 75 0E 0A         [24] 1243 	mov	_time_delay,#0x0a
      000481 75 0F 00         [24] 1244 	mov	(_time_delay + 1),#0x00
                                   1245 ;	transmitter.c:305: button='n';
      000484 75 10 6E         [24] 1246 	mov	_button,#0x6e
      000487 22               [24] 1247 	ret
      000488                       1248 00106$:
                                   1249 ;	transmitter.c:307: else if(((state_was==6)||(state_was==9))&&(!pushed))
      000488 74 06            [12] 1250 	mov	a,#0x06
      00048A B5 0A 06         [24] 1251 	cjne	a,_state_was,00140$
      00048D E4               [12] 1252 	clr	a
      00048E B5 0B 02         [24] 1253 	cjne	a,(_state_was + 1),00140$
      000491 80 0C            [24] 1254 	sjmp	00104$
      000493                       1255 00140$:
      000493 74 09            [12] 1256 	mov	a,#0x09
      000495 B5 0A 06         [24] 1257 	cjne	a,_state_was,00141$
      000498 E4               [12] 1258 	clr	a
      000499 B5 0B 02         [24] 1259 	cjne	a,(_state_was + 1),00141$
      00049C 80 01            [24] 1260 	sjmp	00142$
      00049E                       1261 00141$:
      00049E 22               [24] 1262 	ret
      00049F                       1263 00142$:
      00049F                       1264 00104$:
      00049F 20 01 38         [24] 1265 	jb	_pushed,00113$
                                   1266 ;	transmitter.c:308: {state = 9;		Transmit_data('u');		time_delay=10;
      0004A2 75 08 09         [24] 1267 	mov	_state,#0x09
      0004A5 75 09 00         [24] 1268 	mov	(_state + 1),#0x00
      0004A8 75 82 75         [24] 1269 	mov	dpl,#0x75
      0004AB 12 04 12         [24] 1270 	lcall	_Transmit_data
      0004AE 75 0E 0A         [24] 1271 	mov	_time_delay,#0x0a
      0004B1 75 0F 00         [24] 1272 	mov	(_time_delay + 1),#0x00
                                   1273 ;	transmitter.c:309: button='u';
      0004B4 75 10 75         [24] 1274 	mov	_button,#0x75
      0004B7 22               [24] 1275 	ret
      0004B8                       1276 00111$:
                                   1277 ;	transmitter.c:314: a_g=0;
                                   1278 ;	assignBit
      0004B8 C2 00            [12] 1279 	clr	_a_g
                                   1280 ;	transmitter.c:315: state=0;
      0004BA E4               [12] 1281 	clr	a
      0004BB F5 08            [12] 1282 	mov	_state,a
      0004BD F5 09            [12] 1283 	mov	(_state + 1),a
                                   1284 ;	transmitter.c:316: button = 'l';	
      0004BF 75 10 6C         [24] 1285 	mov	_button,#0x6c
                                   1286 ;	transmitter.c:318: P2=0xA0;
      0004C2 75 A0 A0         [24] 1287 	mov	_P2,#0xa0
                                   1288 ;	transmitter.c:319: delay();
      0004C5 12 03 74         [24] 1289 	lcall	_delay
                                   1290 ;	transmitter.c:320: delay();
      0004C8 12 03 74         [24] 1291 	lcall	_delay
                                   1292 ;	transmitter.c:321: delay();
      0004CB 12 03 74         [24] 1293 	lcall	_delay
                                   1294 ;	transmitter.c:322: P2=0x00;
      0004CE 75 A0 00         [24] 1295 	mov	_P2,#0x00
                                   1296 ;	transmitter.c:323: delay();
      0004D1 12 03 74         [24] 1297 	lcall	_delay
                                   1298 ;	transmitter.c:324: delay();
      0004D4 12 03 74         [24] 1299 	lcall	_delay
                                   1300 ;	transmitter.c:325: delay();
                                   1301 ;	transmitter.c:327: }
      0004D7 02 03 74         [24] 1302 	ljmp	_delay
      0004DA                       1303 00113$:
      0004DA 22               [24] 1304 	ret
                                   1305 	.area CSEG    (CODE)
                                   1306 	.area CONST   (CODE)
                                   1307 	.area XINIT   (CODE)
                                   1308 	.area CABS    (ABS,CODE)
