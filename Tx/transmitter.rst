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
      0000FE 12 04 0F         [24]  521 	lcall	_Transmit_data
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
      000117 12 04 0F         [24]  541 	lcall	_Transmit_data
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
      000137 12 04 0F         [24]  565 	lcall	_Transmit_data
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
      00014A 12 04 0F         [24]  578 	lcall	_Transmit_data
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
      00016A 12 04 0F         [24]  603 	lcall	_Transmit_data
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
      00017D 12 04 0F         [24]  616 	lcall	_Transmit_data
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
      000198 12 04 0F         [24]  638 	lcall	_Transmit_data
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
      0001B3 12 04 0F         [24]  659 	lcall	_Transmit_data
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
      0001CB 12 04 0F         [24]  679 	lcall	_Transmit_data
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
      0001F5 12 04 0F         [24]  713 	lcall	_Transmit_data
      0001F8                        714 00120$:
                                    715 ;	transmitter.c:132: if(timerCount < (time_delay*10)) // count for LED-ON delay
      0001F8 85 0E 13         [24]  716 	mov	__mulint_PARM_2,_time_delay
      0001FB 85 0F 14         [24]  717 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      0001FE 90 00 0A         [24]  718 	mov	dptr,#0x000a
      000201 12 04 DA         [24]  719 	lcall	__mulint
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
                                    733 ;	transmitter.c:134: switch(state)
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
                                    783 ;	transmitter.c:137: case 1:	P2 =0x80;break;
      00025E                        784 00121$:
      00025E 75 A0 80         [24]  785 	mov	_P2,#0x80
      000261 02 03 24         [24]  786 	ljmp	00149$
                                    787 ;	transmitter.c:138: case 2:	P2 =0x80;break;
      000264                        788 00122$:
      000264 75 A0 80         [24]  789 	mov	_P2,#0x80
      000267 02 03 24         [24]  790 	ljmp	00149$
                                    791 ;	transmitter.c:139: case 3:	P2 =0xc0;break;
      00026A                        792 00123$:
      00026A 75 A0 C0         [24]  793 	mov	_P2,#0xc0
      00026D 02 03 24         [24]  794 	ljmp	00149$
                                    795 ;	transmitter.c:140: case 4:	P2 =0x60;break;
      000270                        796 00124$:
      000270 75 A0 60         [24]  797 	mov	_P2,#0x60
      000273 02 03 24         [24]  798 	ljmp	00149$
                                    799 ;	transmitter.c:141: case 5:	P2 =0x20;break;
      000276                        800 00125$:
      000276 75 A0 20         [24]  801 	mov	_P2,#0x20
      000279 02 03 24         [24]  802 	ljmp	00149$
                                    803 ;	transmitter.c:142: case 6:	P2 =0x20;break;
      00027C                        804 00126$:
      00027C 75 A0 20         [24]  805 	mov	_P2,#0x20
      00027F 02 03 24         [24]  806 	ljmp	00149$
                                    807 ;	transmitter.c:143: case 7:	P2 =0x40;break;
      000282                        808 00127$:
      000282 75 A0 40         [24]  809 	mov	_P2,#0x40
      000285 02 03 24         [24]  810 	ljmp	00149$
                                    811 ;	transmitter.c:144: case 8:	P2 =0x80;break;
      000288                        812 00128$:
      000288 75 A0 80         [24]  813 	mov	_P2,#0x80
      00028B 02 03 24         [24]  814 	ljmp	00149$
                                    815 ;	transmitter.c:145: case 9:	P2 =0x20;break;
      00028E                        816 00129$:
      00028E 75 A0 20         [24]  817 	mov	_P2,#0x20
      000291 02 03 24         [24]  818 	ljmp	00149$
                                    819 ;	transmitter.c:146: default:break;}	
      000294                        820 00148$:
                                    821 ;	transmitter.c:150: else if((timerCount > time_delay) &&(timerCount<time_delay*20)) // count for LED-ON delay
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
      0002B3 12 04 DA         [24]  836 	lcall	__mulint
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
                                    850 ;	transmitter.c:152: switch(state)
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
                                    900 ;	transmitter.c:161: case 9:P2 =0x00;break;
      000310                        901 00138$:
      000310 75 A0 00         [24]  902 	mov	_P2,#0x00
                                    903 ;	transmitter.c:162: case 1:P2 =0x80;break;
      000313 80 0F            [24]  904 	sjmp	00149$
      000315                        905 00139$:
      000315 75 A0 80         [24]  906 	mov	_P2,#0x80
                                    907 ;	transmitter.c:163: case 6:P2 =0x20;break;
      000318 80 0A            [24]  908 	sjmp	00149$
      00031A                        909 00140$:
      00031A 75 A0 20         [24]  910 	mov	_P2,#0x20
                                    911 ;	transmitter.c:164: default:break;}
      00031D 80 05            [24]  912 	sjmp	00149$
      00031F                        913 00144$:
                                    914 ;	transmitter.c:168: timerCount = 0;
      00031F E4               [12]  915 	clr	a
      000320 F5 0C            [12]  916 	mov	_timerCount,a
      000322 F5 0D            [12]  917 	mov	(_timerCount + 1),a
      000324                        918 00149$:
                                    919 ;	transmitter.c:169: state_was=state;
      000324 85 08 0A         [24]  920 	mov	_state_was,_state
      000327 85 09 0B         [24]  921 	mov	(_state_was + 1),(_state + 1)
                                    922 ;	transmitter.c:170: }
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
                                    941 ;	transmitter.c:172: void main(void)
                                    942 ;	-----------------------------------------
                                    943 ;	 function main
                                    944 ;	-----------------------------------------
      000347                        945 _main:
                                    946 ;	transmitter.c:174: startup();
      000347 12 03 9A         [24]  947 	lcall	_startup
                                    948 ;	transmitter.c:176: UART_Init();
      00034A 12 03 DD         [24]  949 	lcall	_UART_Init
                                    950 ;	transmitter.c:177: handshake();
      00034D 12 03 E9         [24]  951 	lcall	_handshake
                                    952 ;	transmitter.c:179: InitTimer1();
      000350 12 04 4C         [24]  953 	lcall	_InitTimer1
                                    954 ;	transmitter.c:181: EA  = 1;         // Global interrupt enable
                                    955 ;	assignBit
      000353 D2 AF            [12]  956 	setb	_EA
                                    957 ;	transmitter.c:183: while(1)
      000355                        958 00109$:
                                    959 ;	transmitter.c:185: if(!pushed)
      000355 20 01 0E         [24]  960 	jb	_pushed,00106$
                                    961 ;	transmitter.c:187: check_x();
      000358 12 04 18         [24]  962 	lcall	_check_x
                                    963 ;	transmitter.c:188: delay();
      00035B 12 03 71         [24]  964 	lcall	_delay
                                    965 ;	transmitter.c:189: if(!pushed)
      00035E 20 01 F4         [24]  966 	jb	_pushed,00109$
                                    967 ;	transmitter.c:191: default_and_a_g();
      000361 12 04 5A         [24]  968 	lcall	_default_and_a_g
      000364 80 EF            [24]  969 	sjmp	00109$
      000366                        970 00106$:
                                    971 ;	transmitter.c:194: else if(pushed)
      000366 30 01 EC         [24]  972 	jnb	_pushed,00109$
                                    973 ;	transmitter.c:196: delay();
      000369 12 03 71         [24]  974 	lcall	_delay
                                    975 ;	transmitter.c:197: check_x();
      00036C 12 04 18         [24]  976 	lcall	_check_x
                                    977 ;	transmitter.c:201: }
      00036F 80 E4            [24]  978 	sjmp	00109$
                                    979 ;------------------------------------------------------------
                                    980 ;Allocation info for local variables in function 'delay'
                                    981 ;------------------------------------------------------------
                                    982 ;i                         Allocated to registers r6 r7 
                                    983 ;j                         Allocated to registers r4 r5 
                                    984 ;------------------------------------------------------------
                                    985 ;	transmitter.c:204: void delay(void)
                                    986 ;	-----------------------------------------
                                    987 ;	 function delay
                                    988 ;	-----------------------------------------
      000371                        989 _delay:
                                    990 ;	transmitter.c:207: for(i=0;i<0x33;i++)
      000371 7E 00            [12]  991 	mov	r6,#0x00
      000373 7F 00            [12]  992 	mov	r7,#0x00
      000375                        993 00106$:
                                    994 ;	transmitter.c:208: for(j=0;j<0xff;j++);
      000375 7C FF            [12]  995 	mov	r4,#0xff
      000377 7D 00            [12]  996 	mov	r5,#0x00
      000379                        997 00105$:
      000379 EC               [12]  998 	mov	a,r4
      00037A 24 FF            [12]  999 	add	a,#0xff
      00037C FA               [12] 1000 	mov	r2,a
      00037D ED               [12] 1001 	mov	a,r5
      00037E 34 FF            [12] 1002 	addc	a,#0xff
      000380 FB               [12] 1003 	mov	r3,a
      000381 8A 04            [24] 1004 	mov	ar4,r2
      000383 8B 05            [24] 1005 	mov	ar5,r3
      000385 EA               [12] 1006 	mov	a,r2
      000386 4B               [12] 1007 	orl	a,r3
      000387 70 F0            [24] 1008 	jnz	00105$
                                   1009 ;	transmitter.c:207: for(i=0;i<0x33;i++)
      000389 0E               [12] 1010 	inc	r6
      00038A BE 00 01         [24] 1011 	cjne	r6,#0x00,00124$
      00038D 0F               [12] 1012 	inc	r7
      00038E                       1013 00124$:
      00038E C3               [12] 1014 	clr	c
      00038F EE               [12] 1015 	mov	a,r6
      000390 94 33            [12] 1016 	subb	a,#0x33
      000392 EF               [12] 1017 	mov	a,r7
      000393 64 80            [12] 1018 	xrl	a,#0x80
      000395 94 80            [12] 1019 	subb	a,#0x80
      000397 40 DC            [24] 1020 	jc	00106$
                                   1021 ;	transmitter.c:209: }
      000399 22               [24] 1022 	ret
                                   1023 ;------------------------------------------------------------
                                   1024 ;Allocation info for local variables in function 'startup'
                                   1025 ;------------------------------------------------------------
                                   1026 ;	transmitter.c:213: void startup(void)
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function startup
                                   1029 ;	-----------------------------------------
      00039A                       1030 _startup:
                                   1031 ;	transmitter.c:215: P1 = 0xff;
      00039A 75 90 FF         [24] 1032 	mov	_P1,#0xff
                                   1033 ;	transmitter.c:216: P2 = 0x00;
      00039D 75 A0 00         [24] 1034 	mov	_P2,#0x00
                                   1035 ;	transmitter.c:217: delay();delay();
      0003A0 12 03 71         [24] 1036 	lcall	_delay
      0003A3 12 03 71         [24] 1037 	lcall	_delay
                                   1038 ;	transmitter.c:218: P2 = 0xE0;
      0003A6 75 A0 E0         [24] 1039 	mov	_P2,#0xe0
                                   1040 ;	transmitter.c:219: delay();
      0003A9 12 03 71         [24] 1041 	lcall	_delay
                                   1042 ;	transmitter.c:220: P2 = 0x80;
      0003AC 75 A0 80         [24] 1043 	mov	_P2,#0x80
                                   1044 ;	transmitter.c:221: delay();delay();delay();delay();
      0003AF 12 03 71         [24] 1045 	lcall	_delay
      0003B2 12 03 71         [24] 1046 	lcall	_delay
      0003B5 12 03 71         [24] 1047 	lcall	_delay
      0003B8 12 03 71         [24] 1048 	lcall	_delay
                                   1049 ;	transmitter.c:222: P2 = 0x40;
      0003BB 75 A0 40         [24] 1050 	mov	_P2,#0x40
                                   1051 ;	transmitter.c:223: delay();delay();delay();delay();
      0003BE 12 03 71         [24] 1052 	lcall	_delay
      0003C1 12 03 71         [24] 1053 	lcall	_delay
      0003C4 12 03 71         [24] 1054 	lcall	_delay
      0003C7 12 03 71         [24] 1055 	lcall	_delay
                                   1056 ;	transmitter.c:224: P2 = 0x20;
      0003CA 75 A0 20         [24] 1057 	mov	_P2,#0x20
                                   1058 ;	transmitter.c:225: delay();delay();delay();delay();
      0003CD 12 03 71         [24] 1059 	lcall	_delay
      0003D0 12 03 71         [24] 1060 	lcall	_delay
      0003D3 12 03 71         [24] 1061 	lcall	_delay
      0003D6 12 03 71         [24] 1062 	lcall	_delay
                                   1063 ;	transmitter.c:226: P2 = 0x00;
      0003D9 75 A0 00         [24] 1064 	mov	_P2,#0x00
                                   1065 ;	transmitter.c:227: }
      0003DC 22               [24] 1066 	ret
                                   1067 ;------------------------------------------------------------
                                   1068 ;Allocation info for local variables in function 'UART_Init'
                                   1069 ;------------------------------------------------------------
                                   1070 ;	transmitter.c:230: void UART_Init()
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function UART_Init
                                   1073 ;	-----------------------------------------
      0003DD                       1074 _UART_Init:
                                   1075 ;	transmitter.c:232: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      0003DD 75 89 20         [24] 1076 	mov	_TMOD,#0x20
                                   1077 ;	transmitter.c:233: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      0003E0 75 8D FD         [24] 1078 	mov	_TH1,#0xfd
                                   1079 ;	transmitter.c:234: SCON = 0x50;		/* Mode 1, reception enable */
      0003E3 75 98 50         [24] 1080 	mov	_SCON,#0x50
                                   1081 ;	transmitter.c:235: TR1 = 1;		/* Start timer 1 */
                                   1082 ;	assignBit
      0003E6 D2 8E            [12] 1083 	setb	_TR1
                                   1084 ;	transmitter.c:236: }
      0003E8 22               [24] 1085 	ret
                                   1086 ;------------------------------------------------------------
                                   1087 ;Allocation info for local variables in function 'handshake'
                                   1088 ;------------------------------------------------------------
                                   1089 ;	transmitter.c:239: void handshake()
                                   1090 ;	-----------------------------------------
                                   1091 ;	 function handshake
                                   1092 ;	-----------------------------------------
      0003E9                       1093 _handshake:
                                   1094 ;	transmitter.c:241: start:while(!data_r)
      0003E9                       1095 00102$:
      0003E9 E5 11            [12] 1096 	mov	a,_data_r
      0003EB 70 13            [24] 1097 	jnz	00104$
                                   1098 ;	transmitter.c:243: data_r=SBUF;
      0003ED 85 99 11         [24] 1099 	mov	_data_r,_SBUF
                                   1100 ;	transmitter.c:244: RI=0;
                                   1101 ;	assignBit
      0003F0 C2 98            [12] 1102 	clr	_RI
                                   1103 ;	transmitter.c:245: P2 = 0xA0; // Turn ON all LED's connected to Port1
      0003F2 75 A0 A0         [24] 1104 	mov	_P2,#0xa0
                                   1105 ;	transmitter.c:246: delay();
      0003F5 12 03 71         [24] 1106 	lcall	_delay
                                   1107 ;	transmitter.c:247: P2 = 0x00; // Turn OFF all LED's connected to Port1
      0003F8 75 A0 00         [24] 1108 	mov	_P2,#0x00
                                   1109 ;	transmitter.c:248: delay();
      0003FB 12 03 71         [24] 1110 	lcall	_delay
      0003FE 80 E9            [24] 1111 	sjmp	00102$
      000400                       1112 00104$:
                                   1113 ;	transmitter.c:251: if(data_r=='x')
      000400 74 78            [12] 1114 	mov	a,#0x78
      000402 B5 11 E4         [24] 1115 	cjne	a,_data_r,00102$
                                   1116 ;	transmitter.c:253: Transmit_data('y');
      000405 75 82 79         [24] 1117 	mov	dpl,#0x79
      000408 12 04 0F         [24] 1118 	lcall	_Transmit_data
                                   1119 ;	transmitter.c:254: data_r=0;
      00040B 75 11 00         [24] 1120 	mov	_data_r,#0x00
                                   1121 ;	transmitter.c:257: else goto start;
                                   1122 ;	transmitter.c:258: }
      00040E 22               [24] 1123 	ret
                                   1124 ;------------------------------------------------------------
                                   1125 ;Allocation info for local variables in function 'Transmit_data'
                                   1126 ;------------------------------------------------------------
                                   1127 ;tx_data                   Allocated to registers 
                                   1128 ;------------------------------------------------------------
                                   1129 ;	transmitter.c:261: void Transmit_data(char tx_data)
                                   1130 ;	-----------------------------------------
                                   1131 ;	 function Transmit_data
                                   1132 ;	-----------------------------------------
      00040F                       1133 _Transmit_data:
      00040F 85 82 99         [24] 1134 	mov	_SBUF,dpl
                                   1135 ;	transmitter.c:264: while (TI==0);		/* Wait until stop bit transmit */
      000412                       1136 00101$:
                                   1137 ;	transmitter.c:265: TI = 0;			/* Clear TI flag */
                                   1138 ;	assignBit
      000412 10 99 02         [24] 1139 	jbc	_TI,00114$
      000415 80 FB            [24] 1140 	sjmp	00101$
      000417                       1141 00114$:
                                   1142 ;	transmitter.c:266: }
      000417 22               [24] 1143 	ret
                                   1144 ;------------------------------------------------------------
                                   1145 ;Allocation info for local variables in function 'check_x'
                                   1146 ;------------------------------------------------------------
                                   1147 ;	transmitter.c:270: void check_x()
                                   1148 ;	-----------------------------------------
                                   1149 ;	 function check_x
                                   1150 ;	-----------------------------------------
      000418                       1151 _check_x:
                                   1152 ;	transmitter.c:272: TI=0;
                                   1153 ;	assignBit
      000418 C2 99            [12] 1154 	clr	_TI
                                   1155 ;	transmitter.c:273: if(RI)data_r = SBUF;		/* Load char in SBUF register */
      00041A 30 98 03         [24] 1156 	jnb	_RI,00102$
      00041D 85 99 11         [24] 1157 	mov	_data_r,_SBUF
      000420                       1158 00102$:
                                   1159 ;	transmitter.c:274: RI = 0;			/* Clear TI flag */
                                   1160 ;	assignBit
      000420 C2 98            [12] 1161 	clr	_RI
                                   1162 ;	transmitter.c:275: if(data_r=='x')
      000422 74 78            [12] 1163 	mov	a,#0x78
      000424 B5 11 08         [24] 1164 	cjne	a,_data_r,00110$
                                   1165 ;	transmitter.c:276: Transmit_data('y');
      000427 75 82 79         [24] 1166 	mov	dpl,#0x79
      00042A 12 04 0F         [24] 1167 	lcall	_Transmit_data
      00042D 80 19            [24] 1168 	sjmp	00111$
      00042F                       1169 00110$:
                                   1170 ;	transmitter.c:277: else if((data_r=='m')||(data_r=='h'))
      00042F 74 6D            [12] 1171 	mov	a,#0x6d
      000431 B5 11 02         [24] 1172 	cjne	a,_data_r,00133$
      000434 80 05            [24] 1173 	sjmp	00105$
      000436                       1174 00133$:
      000436 74 68            [12] 1175 	mov	a,#0x68
      000438 B5 11 05         [24] 1176 	cjne	a,_data_r,00106$
      00043B                       1177 00105$:
                                   1178 ;	transmitter.c:278: received = 0;
      00043B 75 12 00         [24] 1179 	mov	_received,#0x00
      00043E 80 08            [24] 1180 	sjmp	00111$
      000440                       1181 00106$:
                                   1182 ;	transmitter.c:279: else if(data_r=='l')
      000440 74 6C            [12] 1183 	mov	a,#0x6c
      000442 B5 11 03         [24] 1184 	cjne	a,_data_r,00111$
                                   1185 ;	transmitter.c:280: received = 1;
      000445 75 12 01         [24] 1186 	mov	_received,#0x01
      000448                       1187 00111$:
                                   1188 ;	transmitter.c:281: data_r=0;
      000448 75 11 00         [24] 1189 	mov	_data_r,#0x00
                                   1190 ;	transmitter.c:282: }
      00044B 22               [24] 1191 	ret
                                   1192 ;------------------------------------------------------------
                                   1193 ;Allocation info for local variables in function 'InitTimer1'
                                   1194 ;------------------------------------------------------------
                                   1195 ;	transmitter.c:286: void InitTimer1(void)
                                   1196 ;	-----------------------------------------
                                   1197 ;	 function InitTimer1
                                   1198 ;	-----------------------------------------
      00044C                       1199 _InitTimer1:
                                   1200 ;	transmitter.c:288: TMOD |= 0x01;    // Set timer0 in mode 1
      00044C 43 89 01         [24] 1201 	orl	_TMOD,#0x01
                                   1202 ;	transmitter.c:289: TH0 = 0xee;      // 5 msec reloading time
      00044F 75 8C EE         [24] 1203 	mov	_TH0,#0xee
                                   1204 ;	transmitter.c:290: TL0 = 0x00;      // First time value
      000452 75 8A 00         [24] 1205 	mov	_TL0,#0x00
                                   1206 ;	transmitter.c:291: TR0 = 1;         // Start Timer 1
                                   1207 ;	assignBit
      000455 D2 8C            [12] 1208 	setb	_TR0
                                   1209 ;	transmitter.c:292: ET0 = 1;         // Enable Timer1 interrupts	
                                   1210 ;	assignBit
      000457 D2 A9            [12] 1211 	setb	_ET0
                                   1212 ;	transmitter.c:293: }
      000459 22               [24] 1213 	ret
                                   1214 ;------------------------------------------------------------
                                   1215 ;Allocation info for local variables in function 'default_and_a_g'
                                   1216 ;------------------------------------------------------------
                                   1217 ;	transmitter.c:296: void default_and_a_g()
                                   1218 ;	-----------------------------------------
                                   1219 ;	 function default_and_a_g
                                   1220 ;	-----------------------------------------
      00045A                       1221 _default_and_a_g:
                                   1222 ;	transmitter.c:299: if(a_g)
      00045A 30 00 55         [24] 1223 	jnb	_a_g,00111$
                                   1224 ;	transmitter.c:301: if(((state_was==1)||(state_was==8))&&(!pushed))
      00045D 74 01            [12] 1225 	mov	a,#0x01
      00045F B5 0A 06         [24] 1226 	cjne	a,_state_was,00136$
      000462 14               [12] 1227 	dec	a
      000463 B5 0B 02         [24] 1228 	cjne	a,(_state_was + 1),00136$
      000466 80 0D            [24] 1229 	sjmp	00109$
      000468                       1230 00136$:
      000468 74 08            [12] 1231 	mov	a,#0x08
      00046A B5 0A 06         [24] 1232 	cjne	a,_state_was,00137$
      00046D E4               [12] 1233 	clr	a
      00046E B5 0B 02         [24] 1234 	cjne	a,(_state_was + 1),00137$
      000471 80 02            [24] 1235 	sjmp	00138$
      000473                       1236 00137$:
      000473 80 13            [24] 1237 	sjmp	00106$
      000475                       1238 00138$:
      000475                       1239 00109$:
      000475 20 01 10         [24] 1240 	jb	_pushed,00106$
                                   1241 ;	transmitter.c:302: {state = 8;			time_delay=10;
      000478 75 08 08         [24] 1242 	mov	_state,#0x08
      00047B 75 09 00         [24] 1243 	mov	(_state + 1),#0x00
      00047E 75 0E 0A         [24] 1244 	mov	_time_delay,#0x0a
      000481 75 0F 00         [24] 1245 	mov	(_time_delay + 1),#0x00
                                   1246 ;	transmitter.c:303: button='n';
      000484 75 10 6E         [24] 1247 	mov	_button,#0x6e
      000487 22               [24] 1248 	ret
      000488                       1249 00106$:
                                   1250 ;	transmitter.c:305: else if(((state_was==6)||(state_was==9))&&(!pushed))
      000488 74 06            [12] 1251 	mov	a,#0x06
      00048A B5 0A 06         [24] 1252 	cjne	a,_state_was,00140$
      00048D E4               [12] 1253 	clr	a
      00048E B5 0B 02         [24] 1254 	cjne	a,(_state_was + 1),00140$
      000491 80 0C            [24] 1255 	sjmp	00104$
      000493                       1256 00140$:
      000493 74 09            [12] 1257 	mov	a,#0x09
      000495 B5 0A 06         [24] 1258 	cjne	a,_state_was,00141$
      000498 E4               [12] 1259 	clr	a
      000499 B5 0B 02         [24] 1260 	cjne	a,(_state_was + 1),00141$
      00049C 80 01            [24] 1261 	sjmp	00142$
      00049E                       1262 00141$:
      00049E 22               [24] 1263 	ret
      00049F                       1264 00142$:
      00049F                       1265 00104$:
      00049F 20 01 37         [24] 1266 	jb	_pushed,00113$
                                   1267 ;	transmitter.c:306: {state = 9;			time_delay=10;
      0004A2 75 08 09         [24] 1268 	mov	_state,#0x09
      0004A5 75 09 00         [24] 1269 	mov	(_state + 1),#0x00
      0004A8 75 0E 0A         [24] 1270 	mov	_time_delay,#0x0a
      0004AB 75 0F 00         [24] 1271 	mov	(_time_delay + 1),#0x00
                                   1272 ;	transmitter.c:307: button='u';
      0004AE 75 10 75         [24] 1273 	mov	_button,#0x75
      0004B1 22               [24] 1274 	ret
      0004B2                       1275 00111$:
                                   1276 ;	transmitter.c:312: a_g=0;
                                   1277 ;	assignBit
      0004B2 C2 00            [12] 1278 	clr	_a_g
                                   1279 ;	transmitter.c:313: state=0;time_delay=15;
      0004B4 E4               [12] 1280 	clr	a
      0004B5 F5 08            [12] 1281 	mov	_state,a
      0004B7 F5 09            [12] 1282 	mov	(_state + 1),a
      0004B9 75 0E 0F         [24] 1283 	mov	_time_delay,#0x0f
                                   1284 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      0004BC F5 0F            [12] 1285 	mov	(_time_delay + 1),a
                                   1286 ;	transmitter.c:314: button = 'l';	
      0004BE 75 10 6C         [24] 1287 	mov	_button,#0x6c
                                   1288 ;	transmitter.c:316: P2=0xA0;
      0004C1 75 A0 A0         [24] 1289 	mov	_P2,#0xa0
                                   1290 ;	transmitter.c:317: delay();
      0004C4 12 03 71         [24] 1291 	lcall	_delay
                                   1292 ;	transmitter.c:318: delay();
      0004C7 12 03 71         [24] 1293 	lcall	_delay
                                   1294 ;	transmitter.c:319: delay();
      0004CA 12 03 71         [24] 1295 	lcall	_delay
                                   1296 ;	transmitter.c:320: P2=0x00;
      0004CD 75 A0 00         [24] 1297 	mov	_P2,#0x00
                                   1298 ;	transmitter.c:321: delay();
      0004D0 12 03 71         [24] 1299 	lcall	_delay
                                   1300 ;	transmitter.c:322: delay();
      0004D3 12 03 71         [24] 1301 	lcall	_delay
                                   1302 ;	transmitter.c:323: delay();
                                   1303 ;	transmitter.c:325: }
      0004D6 02 03 71         [24] 1304 	ljmp	_delay
      0004D9                       1305 00113$:
      0004D9 22               [24] 1306 	ret
                                   1307 	.area CSEG    (CODE)
                                   1308 	.area CONST   (CODE)
                                   1309 	.area XINIT   (CODE)
                                   1310 	.area CABS    (ABS,CODE)
