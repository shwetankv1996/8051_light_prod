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
                                    142 	.globl _UART_Init
                                    143 	.globl _handshake
                                    144 	.globl _Transmit_data
                                    145 	.globl _check_x
                                    146 	.globl _startup
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
      00000E 02 03 47         [24]  427 	ljmp	_main
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
      0000BD 30 01 03         [24]  478 	jnb	_pushed,00228$
      0000C0 02 01 E3         [24]  479 	ljmp	00118$
      0000C3                        480 00228$:
                                    481 ;	transmitter.c:32: switch(P1)
      0000C3 AF 90            [24]  482 	mov	r7,_P1
      0000C5 BF 1F 03         [24]  483 	cjne	r7,#0x1f,00229$
      0000C8 02 01 AE         [24]  484 	ljmp	00113$
      0000CB                        485 00229$:
      0000CB BF 2F 03         [24]  486 	cjne	r7,#0x2f,00230$
      0000CE 02 01 93         [24]  487 	ljmp	00112$
      0000D1                        488 00230$:
      0000D1 BF 33 03         [24]  489 	cjne	r7,#0x33,00231$
      0000D4 02 01 C6         [24]  490 	ljmp	00114$
      0000D7                        491 00231$:
      0000D7 BF 37 03         [24]  492 	cjne	r7,#0x37,00232$
      0000DA 02 01 61         [24]  493 	ljmp	00108$
      0000DD                        494 00232$:
      0000DD BF 3B 02         [24]  495 	cjne	r7,#0x3b,00233$
      0000E0 80 4C            [24]  496 	sjmp	00104$
      0000E2                        497 00233$:
      0000E2 BF 3D 02         [24]  498 	cjne	r7,#0x3d,00234$
      0000E5 80 2B            [24]  499 	sjmp	00103$
      0000E7                        500 00234$:
      0000E7 BF 3E 02         [24]  501 	cjne	r7,#0x3e,00235$
      0000EA 80 0D            [24]  502 	sjmp	00102$
      0000EC                        503 00235$:
      0000EC BF 3F 02         [24]  504 	cjne	r7,#0x3f,00236$
      0000EF 80 03            [24]  505 	sjmp	00237$
      0000F1                        506 00236$:
      0000F1 02 01 E1         [24]  507 	ljmp	00115$
      0000F4                        508 00237$:
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
      0000FE 12 03 C4         [24]  521 	lcall	_Transmit_data
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
      000117 12 03 C4         [24]  541 	lcall	_Transmit_data
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
      000137 12 03 C4         [24]  565 	lcall	_Transmit_data
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
      00014A 12 03 C4         [24]  578 	lcall	_Transmit_data
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
      00016A 12 03 C4         [24]  603 	lcall	_Transmit_data
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
      00017D 12 03 C4         [24]  616 	lcall	_Transmit_data
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
      000198 12 03 C4         [24]  638 	lcall	_Transmit_data
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
      0001B3 12 03 C4         [24]  659 	lcall	_Transmit_data
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
      0001CB 12 03 C4         [24]  679 	lcall	_Transmit_data
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
                                    699 ;	transmitter.c:125: if(timerCount == 60)
      0001E3 74 3C            [12]  700 	mov	a,#0x3c
      0001E5 B5 0C 06         [24]  701 	cjne	a,_timerCount,00240$
      0001E8 E4               [12]  702 	clr	a
      0001E9 B5 0D 02         [24]  703 	cjne	a,(_timerCount + 1),00240$
      0001EC 80 02            [24]  704 	sjmp	00241$
      0001EE                        705 00240$:
      0001EE 80 08            [24]  706 	sjmp	00120$
      0001F0                        707 00241$:
                                    708 ;	transmitter.c:127: pushed=0;
                                    709 ;	assignBit
      0001F0 C2 01            [12]  710 	clr	_pushed
                                    711 ;	transmitter.c:128: Transmit_data(button);
      0001F2 85 10 82         [24]  712 	mov	dpl,_button
      0001F5 12 03 C4         [24]  713 	lcall	_Transmit_data
      0001F8                        714 00120$:
                                    715 ;	transmitter.c:133: if(timerCount < (time_delay*10)) // count for LED-ON delay
      0001F8 85 0E 13         [24]  716 	mov	__mulint_PARM_2,_time_delay
      0001FB 85 0F 14         [24]  717 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      0001FE 90 00 0A         [24]  718 	mov	dptr,#0x000a
      000201 12 04 D9         [24]  719 	lcall	__mulint
      000204 AE 82            [24]  720 	mov	r6,dpl
      000206 AF 83            [24]  721 	mov	r7,dph
      000208 C3               [12]  722 	clr	c
      000209 E5 0C            [12]  723 	mov	a,_timerCount
      00020B 9E               [12]  724 	subb	a,r6
      00020C E5 0D            [12]  725 	mov	a,(_timerCount + 1)
      00020E 64 80            [12]  726 	xrl	a,#0x80
      000210 8F F0            [24]  727 	mov	b,r7
      000212 63 F0 80         [24]  728 	xrl	b,#0x80
      000215 95 F0            [12]  729 	subb	a,b
      000217 40 03            [24]  730 	jc	00242$
      000219 02 02 94         [24]  731 	ljmp	00148$
      00021C                        732 00242$:
                                    733 ;	transmitter.c:135: switch(state)
      00021C AE 08            [24]  734 	mov	r6,_state
      00021E E5 09            [12]  735 	mov	a,(_state + 1)
      000220 FF               [12]  736 	mov	r7,a
      000221 30 E7 03         [24]  737 	jnb	acc.7,00243$
      000224 02 03 24         [24]  738 	ljmp	00149$
      000227                        739 00243$:
      000227 C3               [12]  740 	clr	c
      000228 74 09            [12]  741 	mov	a,#0x09
      00022A 9E               [12]  742 	subb	a,r6
      00022B 74 80            [12]  743 	mov	a,#(0x00 ^ 0x80)
      00022D 8F F0            [24]  744 	mov	b,r7
      00022F 63 F0 80         [24]  745 	xrl	b,#0x80
      000232 95 F0            [12]  746 	subb	a,b
      000234 50 03            [24]  747 	jnc	00244$
      000236 02 03 24         [24]  748 	ljmp	00149$
      000239                        749 00244$:
      000239 EE               [12]  750 	mov	a,r6
      00023A F5 F0            [12]  751 	mov	b,a
      00023C 24 0B            [12]  752 	add	a,#(00245$-3-.)
      00023E 83               [24]  753 	movc	a,@a+pc
      00023F F5 82            [12]  754 	mov	dpl,a
      000241 E5 F0            [12]  755 	mov	a,b
      000243 24 0E            [12]  756 	add	a,#(00246$-3-.)
      000245 83               [24]  757 	movc	a,@a+pc
      000246 F5 83            [12]  758 	mov	dph,a
      000248 E4               [12]  759 	clr	a
      000249 73               [24]  760 	jmp	@a+dptr
      00024A                        761 00245$:
      00024A 24                     762 	.db	00149$
      00024B 5E                     763 	.db	00121$
      00024C 64                     764 	.db	00122$
      00024D 6A                     765 	.db	00123$
      00024E 70                     766 	.db	00124$
      00024F 76                     767 	.db	00125$
      000250 7C                     768 	.db	00126$
      000251 82                     769 	.db	00127$
      000252 88                     770 	.db	00128$
      000253 8E                     771 	.db	00129$
      000254                        772 00246$:
      000254 03                     773 	.db	00149$>>8
      000255 02                     774 	.db	00121$>>8
      000256 02                     775 	.db	00122$>>8
      000257 02                     776 	.db	00123$>>8
      000258 02                     777 	.db	00124$>>8
      000259 02                     778 	.db	00125$>>8
      00025A 02                     779 	.db	00126$>>8
      00025B 02                     780 	.db	00127$>>8
      00025C 02                     781 	.db	00128$>>8
      00025D 02                     782 	.db	00129$>>8
                                    783 ;	transmitter.c:138: case 1:	P2 =0x80;break;
      00025E                        784 00121$:
      00025E 75 A0 80         [24]  785 	mov	_P2,#0x80
      000261 02 03 24         [24]  786 	ljmp	00149$
                                    787 ;	transmitter.c:139: case 2:	P2 =0x80;break;
      000264                        788 00122$:
      000264 75 A0 80         [24]  789 	mov	_P2,#0x80
      000267 02 03 24         [24]  790 	ljmp	00149$
                                    791 ;	transmitter.c:140: case 3:	P2 =0xc0;break;
      00026A                        792 00123$:
      00026A 75 A0 C0         [24]  793 	mov	_P2,#0xc0
      00026D 02 03 24         [24]  794 	ljmp	00149$
                                    795 ;	transmitter.c:141: case 4:	P2 =0x60;break;
      000270                        796 00124$:
      000270 75 A0 60         [24]  797 	mov	_P2,#0x60
      000273 02 03 24         [24]  798 	ljmp	00149$
                                    799 ;	transmitter.c:142: case 5:	P2 =0x20;break;
      000276                        800 00125$:
      000276 75 A0 20         [24]  801 	mov	_P2,#0x20
      000279 02 03 24         [24]  802 	ljmp	00149$
                                    803 ;	transmitter.c:143: case 6:	P2 =0x20;break;
      00027C                        804 00126$:
      00027C 75 A0 20         [24]  805 	mov	_P2,#0x20
      00027F 02 03 24         [24]  806 	ljmp	00149$
                                    807 ;	transmitter.c:144: case 7:	P2 =0x40;break;
      000282                        808 00127$:
      000282 75 A0 40         [24]  809 	mov	_P2,#0x40
      000285 02 03 24         [24]  810 	ljmp	00149$
                                    811 ;	transmitter.c:145: case 8:	P2 =0x80;break;
      000288                        812 00128$:
      000288 75 A0 80         [24]  813 	mov	_P2,#0x80
      00028B 02 03 24         [24]  814 	ljmp	00149$
                                    815 ;	transmitter.c:146: case 9:	P2 =0x20;break;
      00028E                        816 00129$:
      00028E 75 A0 20         [24]  817 	mov	_P2,#0x20
      000291 02 03 24         [24]  818 	ljmp	00149$
                                    819 ;	transmitter.c:147: default:break;}
      000294                        820 00148$:
                                    821 ;	transmitter.c:151: else if((timerCount > time_delay) &&(timerCount<time_delay*20)) // count for LED-ON delay
      000294 C3               [12]  822 	clr	c
      000295 E5 0E            [12]  823 	mov	a,_time_delay
      000297 95 0C            [12]  824 	subb	a,_timerCount
      000299 E5 0F            [12]  825 	mov	a,(_time_delay + 1)
      00029B 64 80            [12]  826 	xrl	a,#0x80
      00029D 85 0D F0         [24]  827 	mov	b,(_timerCount + 1)
      0002A0 63 F0 80         [24]  828 	xrl	b,#0x80
      0002A3 95 F0            [12]  829 	subb	a,b
      0002A5 40 03            [24]  830 	jc	00247$
      0002A7 02 03 1F         [24]  831 	ljmp	00144$
      0002AA                        832 00247$:
      0002AA 85 0E 13         [24]  833 	mov	__mulint_PARM_2,_time_delay
      0002AD 85 0F 14         [24]  834 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      0002B0 90 00 14         [24]  835 	mov	dptr,#0x0014
      0002B3 12 04 D9         [24]  836 	lcall	__mulint
      0002B6 AE 82            [24]  837 	mov	r6,dpl
      0002B8 AF 83            [24]  838 	mov	r7,dph
      0002BA C3               [12]  839 	clr	c
      0002BB E5 0C            [12]  840 	mov	a,_timerCount
      0002BD 9E               [12]  841 	subb	a,r6
      0002BE E5 0D            [12]  842 	mov	a,(_timerCount + 1)
      0002C0 64 80            [12]  843 	xrl	a,#0x80
      0002C2 8F F0            [24]  844 	mov	b,r7
      0002C4 63 F0 80         [24]  845 	xrl	b,#0x80
      0002C7 95 F0            [12]  846 	subb	a,b
      0002C9 40 03            [24]  847 	jc	00248$
      0002CB 02 03 1F         [24]  848 	ljmp	00144$
      0002CE                        849 00248$:
                                    850 ;	transmitter.c:153: switch(state)
      0002CE AE 08            [24]  851 	mov	r6,_state
      0002D0 E5 09            [12]  852 	mov	a,(_state + 1)
      0002D2 FF               [12]  853 	mov	r7,a
      0002D3 30 E7 03         [24]  854 	jnb	acc.7,00249$
      0002D6 02 03 24         [24]  855 	ljmp	00149$
      0002D9                        856 00249$:
      0002D9 C3               [12]  857 	clr	c
      0002DA 74 09            [12]  858 	mov	a,#0x09
      0002DC 9E               [12]  859 	subb	a,r6
      0002DD 74 80            [12]  860 	mov	a,#(0x00 ^ 0x80)
      0002DF 8F F0            [24]  861 	mov	b,r7
      0002E1 63 F0 80         [24]  862 	xrl	b,#0x80
      0002E4 95 F0            [12]  863 	subb	a,b
      0002E6 50 03            [24]  864 	jnc	00250$
      0002E8 02 03 24         [24]  865 	ljmp	00149$
      0002EB                        866 00250$:
      0002EB EE               [12]  867 	mov	a,r6
      0002EC F5 F0            [12]  868 	mov	b,a
      0002EE 24 0B            [12]  869 	add	a,#(00251$-3-.)
      0002F0 83               [24]  870 	movc	a,@a+pc
      0002F1 F5 82            [12]  871 	mov	dpl,a
      0002F3 E5 F0            [12]  872 	mov	a,b
      0002F5 24 0E            [12]  873 	add	a,#(00252$-3-.)
      0002F7 83               [24]  874 	movc	a,@a+pc
      0002F8 F5 83            [12]  875 	mov	dph,a
      0002FA E4               [12]  876 	clr	a
      0002FB 73               [24]  877 	jmp	@a+dptr
      0002FC                        878 00251$:
      0002FC 24                     879 	.db	00149$
      0002FD 15                     880 	.db	00139$
      0002FE 10                     881 	.db	00138$
      0002FF 10                     882 	.db	00138$
      000300 10                     883 	.db	00138$
      000301 10                     884 	.db	00138$
      000302 1A                     885 	.db	00140$
      000303 10                     886 	.db	00138$
      000304 10                     887 	.db	00138$
      000305 10                     888 	.db	00138$
      000306                        889 00252$:
      000306 03                     890 	.db	00149$>>8
      000307 03                     891 	.db	00139$>>8
      000308 03                     892 	.db	00138$>>8
      000309 03                     893 	.db	00138$>>8
      00030A 03                     894 	.db	00138$>>8
      00030B 03                     895 	.db	00138$>>8
      00030C 03                     896 	.db	00140$>>8
      00030D 03                     897 	.db	00138$>>8
      00030E 03                     898 	.db	00138$>>8
      00030F 03                     899 	.db	00138$>>8
                                    900 ;	transmitter.c:162: case 9:P2 =0x00;break;
      000310                        901 00138$:
      000310 75 A0 00         [24]  902 	mov	_P2,#0x00
                                    903 ;	transmitter.c:163: case 1:P2 =0x80;break;
      000313 80 0F            [24]  904 	sjmp	00149$
      000315                        905 00139$:
      000315 75 A0 80         [24]  906 	mov	_P2,#0x80
                                    907 ;	transmitter.c:164: case 6:P2 =0x20;break;
      000318 80 0A            [24]  908 	sjmp	00149$
      00031A                        909 00140$:
      00031A 75 A0 20         [24]  910 	mov	_P2,#0x20
                                    911 ;	transmitter.c:165: default:break;}
      00031D 80 05            [24]  912 	sjmp	00149$
      00031F                        913 00144$:
                                    914 ;	transmitter.c:169: timerCount = 0;
      00031F E4               [12]  915 	clr	a
      000320 F5 0C            [12]  916 	mov	_timerCount,a
      000322 F5 0D            [12]  917 	mov	(_timerCount + 1),a
      000324                        918 00149$:
                                    919 ;	transmitter.c:171: state_was=state;
      000324 85 08 0A         [24]  920 	mov	_state_was,_state
      000327 85 09 0B         [24]  921 	mov	(_state_was + 1),(_state + 1)
                                    922 ;	transmitter.c:172: }
      00032A D0 D0            [24]  923 	pop	psw
      00032C D0 00            [24]  924 	pop	(0+0)
      00032E D0 01            [24]  925 	pop	(0+1)
      000330 D0 02            [24]  926 	pop	(0+2)
      000332 D0 03            [24]  927 	pop	(0+3)
      000334 D0 04            [24]  928 	pop	(0+4)
      000336 D0 05            [24]  929 	pop	(0+5)
      000338 D0 06            [24]  930 	pop	(0+6)
      00033A D0 07            [24]  931 	pop	(0+7)
      00033C D0 83            [24]  932 	pop	dph
      00033E D0 82            [24]  933 	pop	dpl
      000340 D0 F0            [24]  934 	pop	b
      000342 D0 E0            [24]  935 	pop	acc
      000344 D0 21            [24]  936 	pop	bits
      000346 32               [24]  937 	reti
                                    938 ;------------------------------------------------------------
                                    939 ;Allocation info for local variables in function 'main'
                                    940 ;------------------------------------------------------------
                                    941 ;	transmitter.c:174: void main(void)
                                    942 ;	-----------------------------------------
                                    943 ;	 function main
                                    944 ;	-----------------------------------------
      000347                        945 _main:
                                    946 ;	transmitter.c:176: startup();
      000347 12 03 F8         [24]  947 	lcall	_startup
                                    948 ;	transmitter.c:178: UART_Init();
      00034A 12 03 92         [24]  949 	lcall	_UART_Init
                                    950 ;	transmitter.c:179: handshake();
      00034D 12 03 9E         [24]  951 	lcall	_handshake
                                    952 ;	transmitter.c:181: InitTimer1();
      000350 12 04 3E         [24]  953 	lcall	_InitTimer1
                                    954 ;	transmitter.c:183: EA  = 1;         // Global interrupt enable
                                    955 ;	assignBit
      000353 D2 AF            [12]  956 	setb	_EA
                                    957 ;	transmitter.c:185: while(1)
      000355                        958 00107$:
                                    959 ;	transmitter.c:188: if(!pushed)
      000355 20 01 09         [24]  960 	jb	_pushed,00105$
                                    961 ;	transmitter.c:190: delay();
      000358 12 03 69         [24]  962 	lcall	_delay
                                    963 ;	transmitter.c:191: if(!pushed)
      00035B 20 01 03         [24]  964 	jb	_pushed,00105$
                                    965 ;	transmitter.c:193: default_and_a_g();
      00035E 12 04 4C         [24]  966 	lcall	_default_and_a_g
      000361                        967 00105$:
                                    968 ;	transmitter.c:196: delay();
      000361 12 03 69         [24]  969 	lcall	_delay
                                    970 ;	transmitter.c:197: check_x();
      000364 12 03 CD         [24]  971 	lcall	_check_x
                                    972 ;	transmitter.c:199: }
      000367 80 EC            [24]  973 	sjmp	00107$
                                    974 ;------------------------------------------------------------
                                    975 ;Allocation info for local variables in function 'delay'
                                    976 ;------------------------------------------------------------
                                    977 ;i                         Allocated to registers r6 r7 
                                    978 ;j                         Allocated to registers r4 r5 
                                    979 ;------------------------------------------------------------
                                    980 ;	transmitter.c:202: void delay(void)
                                    981 ;	-----------------------------------------
                                    982 ;	 function delay
                                    983 ;	-----------------------------------------
      000369                        984 _delay:
                                    985 ;	transmitter.c:205: for(i=0;i<0x33;i++)
      000369 7E 00            [12]  986 	mov	r6,#0x00
      00036B 7F 00            [12]  987 	mov	r7,#0x00
      00036D                        988 00106$:
                                    989 ;	transmitter.c:206: for(j=0;j<0xff;j++);
      00036D 7C FF            [12]  990 	mov	r4,#0xff
      00036F 7D 00            [12]  991 	mov	r5,#0x00
      000371                        992 00105$:
      000371 EC               [12]  993 	mov	a,r4
      000372 24 FF            [12]  994 	add	a,#0xff
      000374 FA               [12]  995 	mov	r2,a
      000375 ED               [12]  996 	mov	a,r5
      000376 34 FF            [12]  997 	addc	a,#0xff
      000378 FB               [12]  998 	mov	r3,a
      000379 8A 04            [24]  999 	mov	ar4,r2
      00037B 8B 05            [24] 1000 	mov	ar5,r3
      00037D EA               [12] 1001 	mov	a,r2
      00037E 4B               [12] 1002 	orl	a,r3
      00037F 70 F0            [24] 1003 	jnz	00105$
                                   1004 ;	transmitter.c:205: for(i=0;i<0x33;i++)
      000381 0E               [12] 1005 	inc	r6
      000382 BE 00 01         [24] 1006 	cjne	r6,#0x00,00124$
      000385 0F               [12] 1007 	inc	r7
      000386                       1008 00124$:
      000386 C3               [12] 1009 	clr	c
      000387 EE               [12] 1010 	mov	a,r6
      000388 94 33            [12] 1011 	subb	a,#0x33
      00038A EF               [12] 1012 	mov	a,r7
      00038B 64 80            [12] 1013 	xrl	a,#0x80
      00038D 94 80            [12] 1014 	subb	a,#0x80
      00038F 40 DC            [24] 1015 	jc	00106$
                                   1016 ;	transmitter.c:207: }
      000391 22               [24] 1017 	ret
                                   1018 ;------------------------------------------------------------
                                   1019 ;Allocation info for local variables in function 'UART_Init'
                                   1020 ;------------------------------------------------------------
                                   1021 ;	transmitter.c:210: void UART_Init()
                                   1022 ;	-----------------------------------------
                                   1023 ;	 function UART_Init
                                   1024 ;	-----------------------------------------
      000392                       1025 _UART_Init:
                                   1026 ;	transmitter.c:212: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      000392 75 89 20         [24] 1027 	mov	_TMOD,#0x20
                                   1028 ;	transmitter.c:213: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      000395 75 8D FD         [24] 1029 	mov	_TH1,#0xfd
                                   1030 ;	transmitter.c:214: SCON = 0x50;		/* Mode 1, reception enable */
      000398 75 98 50         [24] 1031 	mov	_SCON,#0x50
                                   1032 ;	transmitter.c:215: TR1 = 1;		/* Start timer 1 */
                                   1033 ;	assignBit
      00039B D2 8E            [12] 1034 	setb	_TR1
                                   1035 ;	transmitter.c:216: }
      00039D 22               [24] 1036 	ret
                                   1037 ;------------------------------------------------------------
                                   1038 ;Allocation info for local variables in function 'handshake'
                                   1039 ;------------------------------------------------------------
                                   1040 ;	transmitter.c:219: void handshake()
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function handshake
                                   1043 ;	-----------------------------------------
      00039E                       1044 _handshake:
                                   1045 ;	transmitter.c:221: start:while(!data_r)
      00039E                       1046 00102$:
      00039E E5 11            [12] 1047 	mov	a,_data_r
      0003A0 70 13            [24] 1048 	jnz	00104$
                                   1049 ;	transmitter.c:223: data_r=SBUF;
      0003A2 85 99 11         [24] 1050 	mov	_data_r,_SBUF
                                   1051 ;	transmitter.c:224: RI=0;
                                   1052 ;	assignBit
      0003A5 C2 98            [12] 1053 	clr	_RI
                                   1054 ;	transmitter.c:225: P2 = 0xA0; // Turn ON all LED's connected to Port1
      0003A7 75 A0 A0         [24] 1055 	mov	_P2,#0xa0
                                   1056 ;	transmitter.c:226: delay();
      0003AA 12 03 69         [24] 1057 	lcall	_delay
                                   1058 ;	transmitter.c:227: P2 = 0x00; // Turn OFF all LED's connected to Port1
      0003AD 75 A0 00         [24] 1059 	mov	_P2,#0x00
                                   1060 ;	transmitter.c:228: delay();
      0003B0 12 03 69         [24] 1061 	lcall	_delay
      0003B3 80 E9            [24] 1062 	sjmp	00102$
      0003B5                       1063 00104$:
                                   1064 ;	transmitter.c:231: if(data_r=='x')
      0003B5 74 78            [12] 1065 	mov	a,#0x78
      0003B7 B5 11 E4         [24] 1066 	cjne	a,_data_r,00102$
                                   1067 ;	transmitter.c:233: Transmit_data('y');
      0003BA 75 82 79         [24] 1068 	mov	dpl,#0x79
      0003BD 12 03 C4         [24] 1069 	lcall	_Transmit_data
                                   1070 ;	transmitter.c:234: data_r=0;
      0003C0 75 11 00         [24] 1071 	mov	_data_r,#0x00
                                   1072 ;	transmitter.c:237: else goto start;
                                   1073 ;	transmitter.c:238: }
      0003C3 22               [24] 1074 	ret
                                   1075 ;------------------------------------------------------------
                                   1076 ;Allocation info for local variables in function 'Transmit_data'
                                   1077 ;------------------------------------------------------------
                                   1078 ;tx_data                   Allocated to registers 
                                   1079 ;------------------------------------------------------------
                                   1080 ;	transmitter.c:241: void Transmit_data(char tx_data)
                                   1081 ;	-----------------------------------------
                                   1082 ;	 function Transmit_data
                                   1083 ;	-----------------------------------------
      0003C4                       1084 _Transmit_data:
      0003C4 85 82 99         [24] 1085 	mov	_SBUF,dpl
                                   1086 ;	transmitter.c:244: while (TI==0);		/* Wait until stop bit transmit */
      0003C7                       1087 00101$:
                                   1088 ;	transmitter.c:245: TI = 0;			/* Clear TI flag */
                                   1089 ;	assignBit
      0003C7 10 99 02         [24] 1090 	jbc	_TI,00114$
      0003CA 80 FB            [24] 1091 	sjmp	00101$
      0003CC                       1092 00114$:
                                   1093 ;	transmitter.c:246: }
      0003CC 22               [24] 1094 	ret
                                   1095 ;------------------------------------------------------------
                                   1096 ;Allocation info for local variables in function 'check_x'
                                   1097 ;------------------------------------------------------------
                                   1098 ;	transmitter.c:250: void check_x()
                                   1099 ;	-----------------------------------------
                                   1100 ;	 function check_x
                                   1101 ;	-----------------------------------------
      0003CD                       1102 _check_x:
                                   1103 ;	transmitter.c:253: TI=0;
                                   1104 ;	assignBit
      0003CD C2 99            [12] 1105 	clr	_TI
                                   1106 ;	transmitter.c:254: data_r = SBUF;		/* Load char in SBUF register */
      0003CF 85 99 11         [24] 1107 	mov	_data_r,_SBUF
                                   1108 ;	transmitter.c:255: RI = 0;			/* Clear TI flag */
                                   1109 ;	assignBit
      0003D2 C2 98            [12] 1110 	clr	_RI
                                   1111 ;	transmitter.c:256: if(data_r=='x')
      0003D4 74 78            [12] 1112 	mov	a,#0x78
      0003D6 B5 11 06         [24] 1113 	cjne	a,_data_r,00108$
                                   1114 ;	transmitter.c:257: Transmit_data('y');
      0003D9 75 82 79         [24] 1115 	mov	dpl,#0x79
      0003DC 02 03 C4         [24] 1116 	ljmp	_Transmit_data
      0003DF                       1117 00108$:
                                   1118 ;	transmitter.c:258: else if((data_r=='m')||(data_r=='h'))
      0003DF 74 6D            [12] 1119 	mov	a,#0x6d
      0003E1 B5 11 02         [24] 1120 	cjne	a,_data_r,00126$
      0003E4 80 05            [24] 1121 	sjmp	00103$
      0003E6                       1122 00126$:
      0003E6 74 68            [12] 1123 	mov	a,#0x68
      0003E8 B5 11 04         [24] 1124 	cjne	a,_data_r,00104$
      0003EB                       1125 00103$:
                                   1126 ;	transmitter.c:259: received = 0;
      0003EB 75 12 00         [24] 1127 	mov	_received,#0x00
      0003EE 22               [24] 1128 	ret
      0003EF                       1129 00104$:
                                   1130 ;	transmitter.c:260: else if(data_r=='l')
      0003EF 74 6C            [12] 1131 	mov	a,#0x6c
      0003F1 B5 11 03         [24] 1132 	cjne	a,_data_r,00110$
                                   1133 ;	transmitter.c:261: received = 1;
      0003F4 75 12 01         [24] 1134 	mov	_received,#0x01
      0003F7                       1135 00110$:
                                   1136 ;	transmitter.c:262: }
      0003F7 22               [24] 1137 	ret
                                   1138 ;------------------------------------------------------------
                                   1139 ;Allocation info for local variables in function 'startup'
                                   1140 ;------------------------------------------------------------
                                   1141 ;	transmitter.c:265: void startup(void)
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function startup
                                   1144 ;	-----------------------------------------
      0003F8                       1145 _startup:
                                   1146 ;	transmitter.c:267: P1 = 0xff;
      0003F8 75 90 FF         [24] 1147 	mov	_P1,#0xff
                                   1148 ;	transmitter.c:268: P2 = 0x00;
      0003FB 75 A0 00         [24] 1149 	mov	_P2,#0x00
                                   1150 ;	transmitter.c:269: P2 = 0x00;
      0003FE 75 A0 00         [24] 1151 	mov	_P2,#0x00
                                   1152 ;	transmitter.c:270: delay();delay();
      000401 12 03 69         [24] 1153 	lcall	_delay
      000404 12 03 69         [24] 1154 	lcall	_delay
                                   1155 ;	transmitter.c:271: P2 = 0xE0;
      000407 75 A0 E0         [24] 1156 	mov	_P2,#0xe0
                                   1157 ;	transmitter.c:272: delay();
      00040A 12 03 69         [24] 1158 	lcall	_delay
                                   1159 ;	transmitter.c:273: P2 = 0x80;
      00040D 75 A0 80         [24] 1160 	mov	_P2,#0x80
                                   1161 ;	transmitter.c:274: delay();delay();delay();delay();
      000410 12 03 69         [24] 1162 	lcall	_delay
      000413 12 03 69         [24] 1163 	lcall	_delay
      000416 12 03 69         [24] 1164 	lcall	_delay
      000419 12 03 69         [24] 1165 	lcall	_delay
                                   1166 ;	transmitter.c:275: P2 = 0x40;
      00041C 75 A0 40         [24] 1167 	mov	_P2,#0x40
                                   1168 ;	transmitter.c:276: delay();delay();delay();delay();
      00041F 12 03 69         [24] 1169 	lcall	_delay
      000422 12 03 69         [24] 1170 	lcall	_delay
      000425 12 03 69         [24] 1171 	lcall	_delay
      000428 12 03 69         [24] 1172 	lcall	_delay
                                   1173 ;	transmitter.c:277: P2 = 0x20;
      00042B 75 A0 20         [24] 1174 	mov	_P2,#0x20
                                   1175 ;	transmitter.c:278: delay();delay();delay();delay();
      00042E 12 03 69         [24] 1176 	lcall	_delay
      000431 12 03 69         [24] 1177 	lcall	_delay
      000434 12 03 69         [24] 1178 	lcall	_delay
      000437 12 03 69         [24] 1179 	lcall	_delay
                                   1180 ;	transmitter.c:279: P2 = 0x00;
      00043A 75 A0 00         [24] 1181 	mov	_P2,#0x00
                                   1182 ;	transmitter.c:280: }
      00043D 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'InitTimer1'
                                   1186 ;------------------------------------------------------------
                                   1187 ;	transmitter.c:284: void InitTimer1(void)
                                   1188 ;	-----------------------------------------
                                   1189 ;	 function InitTimer1
                                   1190 ;	-----------------------------------------
      00043E                       1191 _InitTimer1:
                                   1192 ;	transmitter.c:286: TMOD |= 0x01;    // Set timer0 in mode 1
      00043E 43 89 01         [24] 1193 	orl	_TMOD,#0x01
                                   1194 ;	transmitter.c:287: TH0 = 0xee;      // 5 msec reloading time
      000441 75 8C EE         [24] 1195 	mov	_TH0,#0xee
                                   1196 ;	transmitter.c:288: TL0 = 0x00;      // First time value
      000444 75 8A 00         [24] 1197 	mov	_TL0,#0x00
                                   1198 ;	transmitter.c:289: TR0 = 1;         // Start Timer 1
                                   1199 ;	assignBit
      000447 D2 8C            [12] 1200 	setb	_TR0
                                   1201 ;	transmitter.c:290: ET0 = 1;         // Enable Timer1 interrupts	
                                   1202 ;	assignBit
      000449 D2 A9            [12] 1203 	setb	_ET0
                                   1204 ;	transmitter.c:291: }
      00044B 22               [24] 1205 	ret
                                   1206 ;------------------------------------------------------------
                                   1207 ;Allocation info for local variables in function 'default_and_a_g'
                                   1208 ;------------------------------------------------------------
                                   1209 ;	transmitter.c:294: void default_and_a_g()
                                   1210 ;	-----------------------------------------
                                   1211 ;	 function default_and_a_g
                                   1212 ;	-----------------------------------------
      00044C                       1213 _default_and_a_g:
                                   1214 ;	transmitter.c:297: if(a_g)
      00044C 30 00 61         [24] 1215 	jnb	_a_g,00111$
                                   1216 ;	transmitter.c:299: if(((state_was==1)||(state_was==8))&&(!pushed))
      00044F 74 01            [12] 1217 	mov	a,#0x01
      000451 B5 0A 06         [24] 1218 	cjne	a,_state_was,00136$
      000454 14               [12] 1219 	dec	a
      000455 B5 0B 02         [24] 1220 	cjne	a,(_state_was + 1),00136$
      000458 80 0D            [24] 1221 	sjmp	00109$
      00045A                       1222 00136$:
      00045A 74 08            [12] 1223 	mov	a,#0x08
      00045C B5 0A 06         [24] 1224 	cjne	a,_state_was,00137$
      00045F E4               [12] 1225 	clr	a
      000460 B5 0B 02         [24] 1226 	cjne	a,(_state_was + 1),00137$
      000463 80 02            [24] 1227 	sjmp	00138$
      000465                       1228 00137$:
      000465 80 19            [24] 1229 	sjmp	00106$
      000467                       1230 00138$:
      000467                       1231 00109$:
      000467 20 01 16         [24] 1232 	jb	_pushed,00106$
                                   1233 ;	transmitter.c:300: {state = 8;		Transmit_data('n');		time_delay=10;
      00046A 75 08 08         [24] 1234 	mov	_state,#0x08
      00046D 75 09 00         [24] 1235 	mov	(_state + 1),#0x00
      000470 75 82 6E         [24] 1236 	mov	dpl,#0x6e
      000473 12 03 C4         [24] 1237 	lcall	_Transmit_data
      000476 75 0E 0A         [24] 1238 	mov	_time_delay,#0x0a
      000479 75 0F 00         [24] 1239 	mov	(_time_delay + 1),#0x00
                                   1240 ;	transmitter.c:301: button='n';
      00047C 75 10 6E         [24] 1241 	mov	_button,#0x6e
      00047F 22               [24] 1242 	ret
      000480                       1243 00106$:
                                   1244 ;	transmitter.c:303: else if(((state_was==6)||(state_was==9))&&(!pushed))
      000480 74 06            [12] 1245 	mov	a,#0x06
      000482 B5 0A 06         [24] 1246 	cjne	a,_state_was,00140$
      000485 E4               [12] 1247 	clr	a
      000486 B5 0B 02         [24] 1248 	cjne	a,(_state_was + 1),00140$
      000489 80 0C            [24] 1249 	sjmp	00104$
      00048B                       1250 00140$:
      00048B 74 09            [12] 1251 	mov	a,#0x09
      00048D B5 0A 06         [24] 1252 	cjne	a,_state_was,00141$
      000490 E4               [12] 1253 	clr	a
      000491 B5 0B 02         [24] 1254 	cjne	a,(_state_was + 1),00141$
      000494 80 01            [24] 1255 	sjmp	00142$
      000496                       1256 00141$:
      000496 22               [24] 1257 	ret
      000497                       1258 00142$:
      000497                       1259 00104$:
      000497 20 01 3E         [24] 1260 	jb	_pushed,00113$
                                   1261 ;	transmitter.c:304: {state = 9;		Transmit_data('u');		time_delay=10;
      00049A 75 08 09         [24] 1262 	mov	_state,#0x09
      00049D 75 09 00         [24] 1263 	mov	(_state + 1),#0x00
      0004A0 75 82 75         [24] 1264 	mov	dpl,#0x75
      0004A3 12 03 C4         [24] 1265 	lcall	_Transmit_data
      0004A6 75 0E 0A         [24] 1266 	mov	_time_delay,#0x0a
      0004A9 75 0F 00         [24] 1267 	mov	(_time_delay + 1),#0x00
                                   1268 ;	transmitter.c:305: button='u';
      0004AC 75 10 75         [24] 1269 	mov	_button,#0x75
      0004AF 22               [24] 1270 	ret
      0004B0                       1271 00111$:
                                   1272 ;	transmitter.c:310: a_g=0;
                                   1273 ;	assignBit
      0004B0 C2 00            [12] 1274 	clr	_a_g
                                   1275 ;	transmitter.c:311: state=0;
      0004B2 E4               [12] 1276 	clr	a
      0004B3 F5 08            [12] 1277 	mov	_state,a
      0004B5 F5 09            [12] 1278 	mov	(_state + 1),a
                                   1279 ;	transmitter.c:312: button = 'l';	
      0004B7 75 10 6C         [24] 1280 	mov	_button,#0x6c
                                   1281 ;	transmitter.c:313: Transmit_data('l');
      0004BA 75 82 6C         [24] 1282 	mov	dpl,#0x6c
      0004BD 12 03 C4         [24] 1283 	lcall	_Transmit_data
                                   1284 ;	transmitter.c:314: P2=0xA0;
      0004C0 75 A0 A0         [24] 1285 	mov	_P2,#0xa0
                                   1286 ;	transmitter.c:315: delay();
      0004C3 12 03 69         [24] 1287 	lcall	_delay
                                   1288 ;	transmitter.c:316: delay();
      0004C6 12 03 69         [24] 1289 	lcall	_delay
                                   1290 ;	transmitter.c:317: delay();
      0004C9 12 03 69         [24] 1291 	lcall	_delay
                                   1292 ;	transmitter.c:318: P2=0x00;
      0004CC 75 A0 00         [24] 1293 	mov	_P2,#0x00
                                   1294 ;	transmitter.c:319: delay();
      0004CF 12 03 69         [24] 1295 	lcall	_delay
                                   1296 ;	transmitter.c:320: delay();
      0004D2 12 03 69         [24] 1297 	lcall	_delay
                                   1298 ;	transmitter.c:321: delay();
                                   1299 ;	transmitter.c:323: }
      0004D5 02 03 69         [24] 1300 	ljmp	_delay
      0004D8                       1301 00113$:
      0004D8 22               [24] 1302 	ret
                                   1303 	.area CSEG    (CODE)
                                   1304 	.area CONST   (CODE)
                                   1305 	.area XINIT   (CODE)
                                   1306 	.area CABS    (ABS,CODE)
