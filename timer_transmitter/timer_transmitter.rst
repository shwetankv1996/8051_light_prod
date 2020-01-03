                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11418 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module timer_transmitter
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
                                    132 	.globl _state_l
                                    133 	.globl _pushed
                                    134 	.globl _a_g
                                    135 	.globl _received
                                    136 	.globl _data_r
                                    137 	.globl _count
                                    138 	.globl _button
                                    139 	.globl _time_delay
                                    140 	.globl _timerCount
                                    141 	.globl _state_was
                                    142 	.globl _state
                                    143 	.globl _delay
                                    144 	.globl _UART_Init
                                    145 	.globl _handshake
                                    146 	.globl _Transmit_data
                                    147 	.globl _startup
                                    148 	.globl _InitTimer1
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
      000011                        311 _count::
      000011                        312 	.ds 2
      000013                        313 _data_r::
      000013                        314 	.ds 1
      000014                        315 _received::
      000014                        316 	.ds 1
                                    317 ;--------------------------------------------------------
                                    318 ; overlayable items in internal ram 
                                    319 ;--------------------------------------------------------
                                    320 	.area	OSEG    (OVR,DATA)
                                    321 	.area	OSEG    (OVR,DATA)
                                    322 ;--------------------------------------------------------
                                    323 ; Stack segment in internal ram 
                                    324 ;--------------------------------------------------------
                                    325 	.area	SSEG
      000022                        326 __start__stack:
      000022                        327 	.ds	1
                                    328 
                                    329 ;--------------------------------------------------------
                                    330 ; indirectly addressable internal ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area ISEG    (DATA)
                                    333 ;--------------------------------------------------------
                                    334 ; absolute internal ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area IABS    (ABS,DATA)
                                    337 	.area IABS    (ABS,DATA)
                                    338 ;--------------------------------------------------------
                                    339 ; bit data
                                    340 ;--------------------------------------------------------
                                    341 	.area BSEG    (BIT)
      000000                        342 _a_g::
      000000                        343 	.ds 1
      000001                        344 _pushed::
      000001                        345 	.ds 1
      000002                        346 _state_l::
      000002                        347 	.ds 1
                                    348 ;--------------------------------------------------------
                                    349 ; paged external ram data
                                    350 ;--------------------------------------------------------
                                    351 	.area PSEG    (PAG,XDATA)
                                    352 ;--------------------------------------------------------
                                    353 ; external ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area XSEG    (XDATA)
                                    356 ;--------------------------------------------------------
                                    357 ; absolute external ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area XABS    (ABS,XDATA)
                                    360 ;--------------------------------------------------------
                                    361 ; external initialized ram data
                                    362 ;--------------------------------------------------------
                                    363 	.area XISEG   (XDATA)
                                    364 	.area HOME    (CODE)
                                    365 	.area GSINIT0 (CODE)
                                    366 	.area GSINIT1 (CODE)
                                    367 	.area GSINIT2 (CODE)
                                    368 	.area GSINIT3 (CODE)
                                    369 	.area GSINIT4 (CODE)
                                    370 	.area GSINIT5 (CODE)
                                    371 	.area GSINIT  (CODE)
                                    372 	.area GSFINAL (CODE)
                                    373 	.area CSEG    (CODE)
                                    374 ;--------------------------------------------------------
                                    375 ; interrupt vector 
                                    376 ;--------------------------------------------------------
                                    377 	.area HOME    (CODE)
      000000                        378 __interrupt_vect:
      000000 02 00 11         [24]  379 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  380 	reti
      000004                        381 	.ds	7
      00000B 02 00 92         [24]  382 	ljmp	_isr_timer0
                                    383 ;--------------------------------------------------------
                                    384 ; global & static initialisations
                                    385 ;--------------------------------------------------------
                                    386 	.area HOME    (CODE)
                                    387 	.area GSINIT  (CODE)
                                    388 	.area GSFINAL (CODE)
                                    389 	.area GSINIT  (CODE)
                                    390 	.globl __sdcc_gsinit_startup
                                    391 	.globl __sdcc_program_startup
                                    392 	.globl __start__stack
                                    393 	.globl __mcs51_genXINIT
                                    394 	.globl __mcs51_genXRAMCLEAR
                                    395 	.globl __mcs51_genRAMCLEAR
                                    396 ;	timer_transmitter.c:10: volatile int state = 0;
      00006A E4               [12]  397 	clr	a
      00006B F5 08            [12]  398 	mov	_state,a
      00006D F5 09            [12]  399 	mov	(_state + 1),a
                                    400 ;	timer_transmitter.c:11: volatile int state_was = 0;
      00006F F5 0A            [12]  401 	mov	_state_was,a
      000071 F5 0B            [12]  402 	mov	(_state_was + 1),a
                                    403 ;	timer_transmitter.c:12: volatile int timerCount = 0;
      000073 F5 0C            [12]  404 	mov	_timerCount,a
      000075 F5 0D            [12]  405 	mov	(_timerCount + 1),a
                                    406 ;	timer_transmitter.c:13: volatile int time_delay = 15;
      000077 75 0E 0F         [24]  407 	mov	_time_delay,#0x0f
                                    408 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      00007A F5 0F            [12]  409 	mov	(_time_delay + 1),a
                                    410 ;	timer_transmitter.c:17: volatile char button='l';
      00007C 75 10 6C         [24]  411 	mov	_button,#0x6c
                                    412 ;	timer_transmitter.c:18: volatile int count=15;
      00007F 75 11 0F         [24]  413 	mov	_count,#0x0f
                                    414 ;	1-genFromRTrack replaced	mov	(_count + 1),#0x00
      000082 F5 12            [12]  415 	mov	(_count + 1),a
                                    416 ;	timer_transmitter.c:20: char data_r=0;
                                    417 ;	1-genFromRTrack replaced	mov	_data_r,#0x00
      000084 F5 13            [12]  418 	mov	_data_r,a
                                    419 ;	timer_transmitter.c:21: char received=1;
      000086 75 14 01         [24]  420 	mov	_received,#0x01
                                    421 ;	timer_transmitter.c:14: volatile __bit a_g=0;
                                    422 ;	assignBit
      000089 C2 00            [12]  423 	clr	_a_g
                                    424 ;	timer_transmitter.c:15: volatile __bit pushed=0;
                                    425 ;	assignBit
      00008B C2 01            [12]  426 	clr	_pushed
                                    427 ;	timer_transmitter.c:16: volatile __bit state_l=0;
                                    428 ;	assignBit
      00008D C2 02            [12]  429 	clr	_state_l
                                    430 	.area GSFINAL (CODE)
      00008F 02 00 0E         [24]  431 	ljmp	__sdcc_program_startup
                                    432 ;--------------------------------------------------------
                                    433 ; Home
                                    434 ;--------------------------------------------------------
                                    435 	.area HOME    (CODE)
                                    436 	.area HOME    (CODE)
      00000E                        437 __sdcc_program_startup:
      00000E 02 04 3A         [24]  438 	ljmp	_main
                                    439 ;	return from main will return to caller
                                    440 ;--------------------------------------------------------
                                    441 ; code
                                    442 ;--------------------------------------------------------
                                    443 	.area CSEG    (CODE)
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'isr_timer0'
                                    446 ;------------------------------------------------------------
                                    447 ;	timer_transmitter.c:23: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
                                    448 ;	-----------------------------------------
                                    449 ;	 function isr_timer0
                                    450 ;	-----------------------------------------
      000092                        451 _isr_timer0:
                           000007   452 	ar7 = 0x07
                           000006   453 	ar6 = 0x06
                           000005   454 	ar5 = 0x05
                           000004   455 	ar4 = 0x04
                           000003   456 	ar3 = 0x03
                           000002   457 	ar2 = 0x02
                           000001   458 	ar1 = 0x01
                           000000   459 	ar0 = 0x00
      000092 C0 21            [24]  460 	push	bits
      000094 C0 E0            [24]  461 	push	acc
      000096 C0 F0            [24]  462 	push	b
      000098 C0 82            [24]  463 	push	dpl
      00009A C0 83            [24]  464 	push	dph
      00009C C0 07            [24]  465 	push	(0+7)
      00009E C0 06            [24]  466 	push	(0+6)
      0000A0 C0 05            [24]  467 	push	(0+5)
      0000A2 C0 04            [24]  468 	push	(0+4)
      0000A4 C0 03            [24]  469 	push	(0+3)
      0000A6 C0 02            [24]  470 	push	(0+2)
      0000A8 C0 01            [24]  471 	push	(0+1)
      0000AA C0 00            [24]  472 	push	(0+0)
      0000AC C0 D0            [24]  473 	push	psw
      0000AE 75 D0 00         [24]  474 	mov	psw,#0x00
                                    475 ;	timer_transmitter.c:25: TH0  = 0Xee;         // ReLoad the timer value for 5ms
      0000B1 75 8C EE         [24]  476 	mov	_TH0,#0xee
                                    477 ;	timer_transmitter.c:26: TL0  = 0X00;
      0000B4 75 8A 00         [24]  478 	mov	_TL0,#0x00
                                    479 ;	timer_transmitter.c:27: timerCount++;
      0000B7 AE 0C            [24]  480 	mov	r6,_timerCount
      0000B9 AF 0D            [24]  481 	mov	r7,(_timerCount + 1)
      0000BB 74 01            [12]  482 	mov	a,#0x01
      0000BD 2E               [12]  483 	add	a,r6
      0000BE F5 0C            [12]  484 	mov	_timerCount,a
      0000C0 E4               [12]  485 	clr	a
      0000C1 3F               [12]  486 	addc	a,r7
      0000C2 F5 0D            [12]  487 	mov	(_timerCount + 1),a
                                    488 ;	timer_transmitter.c:29: if(!pushed)
      0000C4 30 01 03         [24]  489 	jnb	_pushed,00306$
      0000C7 02 02 09         [24]  490 	ljmp	00120$
      0000CA                        491 00306$:
                                    492 ;	timer_transmitter.c:31: switch(P1)
      0000CA AF 90            [24]  493 	mov	r7,_P1
      0000CC BF 1F 03         [24]  494 	cjne	r7,#0x1f,00307$
      0000CF 02 01 D4         [24]  495 	ljmp	00115$
      0000D2                        496 00307$:
      0000D2 BF 2F 03         [24]  497 	cjne	r7,#0x2f,00308$
      0000D5 02 01 B9         [24]  498 	ljmp	00114$
      0000D8                        499 00308$:
      0000D8 BF 33 03         [24]  500 	cjne	r7,#0x33,00309$
      0000DB 02 01 EC         [24]  501 	ljmp	00116$
      0000DE                        502 00309$:
      0000DE BF 37 03         [24]  503 	cjne	r7,#0x37,00310$
      0000E1 02 01 87         [24]  504 	ljmp	00110$
      0000E4                        505 00310$:
      0000E4 BF 3B 02         [24]  506 	cjne	r7,#0x3b,00311$
      0000E7 80 6B            [24]  507 	sjmp	00106$
      0000E9                        508 00311$:
      0000E9 BF 3D 02         [24]  509 	cjne	r7,#0x3d,00312$
      0000EC 80 4A            [24]  510 	sjmp	00105$
      0000EE                        511 00312$:
      0000EE BF 3E 02         [24]  512 	cjne	r7,#0x3e,00313$
      0000F1 80 2C            [24]  513 	sjmp	00104$
      0000F3                        514 00313$:
      0000F3 BF 3F 02         [24]  515 	cjne	r7,#0x3f,00314$
      0000F6 80 03            [24]  516 	sjmp	00315$
      0000F8                        517 00314$:
      0000F8 02 02 07         [24]  518 	ljmp	00117$
      0000FB                        519 00315$:
                                    520 ;	timer_transmitter.c:34: count--;
      0000FB AE 11            [24]  521 	mov	r6,_count
      0000FD AF 12            [24]  522 	mov	r7,(_count + 1)
      0000FF EE               [12]  523 	mov	a,r6
      000100 24 FF            [12]  524 	add	a,#0xff
      000102 F5 11            [12]  525 	mov	_count,a
      000104 EF               [12]  526 	mov	a,r7
      000105 34 FF            [12]  527 	addc	a,#0xff
      000107 F5 12            [12]  528 	mov	(_count + 1),a
                                    529 ;	timer_transmitter.c:35: pushed = 0;
                                    530 ;	assignBit
      000109 C2 01            [12]  531 	clr	_pushed
                                    532 ;	timer_transmitter.c:36: if(!count)
      00010B E5 11            [12]  533 	mov	a,_count
      00010D 45 12            [12]  534 	orl	a,(_count + 1)
      00010F 60 03            [24]  535 	jz	00316$
      000111 02 02 09         [24]  536 	ljmp	00120$
      000114                        537 00316$:
                                    538 ;	timer_transmitter.c:38: state_l=1;
                                    539 ;	assignBit
      000114 D2 02            [12]  540 	setb	_state_l
                                    541 ;	timer_transmitter.c:39: count=15;
      000116 75 11 0F         [24]  542 	mov	_count,#0x0f
      000119 75 12 00         [24]  543 	mov	(_count + 1),#0x00
                                    544 ;	timer_transmitter.c:41: break;
      00011C 02 02 09         [24]  545 	ljmp	00120$
                                    546 ;	timer_transmitter.c:43: case 0x3e:
      00011F                        547 00104$:
                                    548 ;	timer_transmitter.c:44: pushed = 1;
                                    549 ;	assignBit
      00011F D2 01            [12]  550 	setb	_pushed
                                    551 ;	timer_transmitter.c:45: Transmit_data('a');
      000121 75 82 61         [24]  552 	mov	dpl,#0x61
      000124 12 04 A5         [24]  553 	lcall	_Transmit_data
                                    554 ;	timer_transmitter.c:46: P2 =0x80;
      000127 75 A0 80         [24]  555 	mov	_P2,#0x80
                                    556 ;	timer_transmitter.c:47: state = 1;
      00012A 75 08 01         [24]  557 	mov	_state,#0x01
      00012D 75 09 00         [24]  558 	mov	(_state + 1),#0x00
                                    559 ;	timer_transmitter.c:48: button = 'a';
      000130 75 10 61         [24]  560 	mov	_button,#0x61
                                    561 ;	timer_transmitter.c:49: a_g=1;
                                    562 ;	assignBit
      000133 D2 00            [12]  563 	setb	_a_g
                                    564 ;	timer_transmitter.c:50: break;
      000135 02 02 09         [24]  565 	ljmp	00120$
                                    566 ;	timer_transmitter.c:52: case 0x3d:
      000138                        567 00105$:
                                    568 ;	timer_transmitter.c:53: pushed = 1;
                                    569 ;	assignBit
      000138 D2 01            [12]  570 	setb	_pushed
                                    571 ;	timer_transmitter.c:54: Transmit_data('b');
      00013A 75 82 62         [24]  572 	mov	dpl,#0x62
      00013D 12 04 A5         [24]  573 	lcall	_Transmit_data
                                    574 ;	timer_transmitter.c:55: time_delay=3;
      000140 75 0E 03         [24]  575 	mov	_time_delay,#0x03
      000143 75 0F 00         [24]  576 	mov	(_time_delay + 1),#0x00
                                    577 ;	timer_transmitter.c:56: state = 2;
      000146 75 08 02         [24]  578 	mov	_state,#0x02
      000149 75 09 00         [24]  579 	mov	(_state + 1),#0x00
                                    580 ;	timer_transmitter.c:57: button = 'b';
      00014C 75 10 62         [24]  581 	mov	_button,#0x62
                                    582 ;	timer_transmitter.c:58: a_g=0;
                                    583 ;	assignBit
      00014F C2 00            [12]  584 	clr	_a_g
                                    585 ;	timer_transmitter.c:59: break;
      000151 02 02 09         [24]  586 	ljmp	00120$
                                    587 ;	timer_transmitter.c:61: case 0x3b:
      000154                        588 00106$:
                                    589 ;	timer_transmitter.c:62: if(received)
      000154 E5 14            [12]  590 	mov	a,_received
      000156 60 13            [24]  591 	jz	00108$
                                    592 ;	timer_transmitter.c:63: {		pushed = 1;
                                    593 ;	assignBit
      000158 D2 01            [12]  594 	setb	_pushed
                                    595 ;	timer_transmitter.c:64: Transmit_data('d');
      00015A 75 82 64         [24]  596 	mov	dpl,#0x64
      00015D 12 04 A5         [24]  597 	lcall	_Transmit_data
                                    598 ;	timer_transmitter.c:65: state = 7;
      000160 75 08 07         [24]  599 	mov	_state,#0x07
      000163 75 09 00         [24]  600 	mov	(_state + 1),#0x00
                                    601 ;	timer_transmitter.c:66: button = 'd';
      000166 75 10 64         [24]  602 	mov	_button,#0x64
      000169 80 11            [24]  603 	sjmp	00109$
      00016B                        604 00108$:
                                    605 ;	timer_transmitter.c:69: {		pushed = 1;
                                    606 ;	assignBit
      00016B D2 01            [12]  607 	setb	_pushed
                                    608 ;	timer_transmitter.c:70: Transmit_data('c');
      00016D 75 82 63         [24]  609 	mov	dpl,#0x63
      000170 12 04 A5         [24]  610 	lcall	_Transmit_data
                                    611 ;	timer_transmitter.c:71: state = 3;
      000173 75 08 03         [24]  612 	mov	_state,#0x03
      000176 75 09 00         [24]  613 	mov	(_state + 1),#0x00
                                    614 ;	timer_transmitter.c:72: button = 'c';
      000179 75 10 63         [24]  615 	mov	_button,#0x63
      00017C                        616 00109$:
                                    617 ;	timer_transmitter.c:74: time_delay=3;
      00017C 75 0E 03         [24]  618 	mov	_time_delay,#0x03
      00017F 75 0F 00         [24]  619 	mov	(_time_delay + 1),#0x00
                                    620 ;	timer_transmitter.c:75: a_g=0;
                                    621 ;	assignBit
      000182 C2 00            [12]  622 	clr	_a_g
                                    623 ;	timer_transmitter.c:76: break;
      000184 02 02 09         [24]  624 	ljmp	00120$
                                    625 ;	timer_transmitter.c:78: case 0x37:
      000187                        626 00110$:
                                    627 ;	timer_transmitter.c:79: if(received)
      000187 E5 14            [12]  628 	mov	a,_received
      000189 60 13            [24]  629 	jz	00112$
                                    630 ;	timer_transmitter.c:80: {		pushed = 1;
                                    631 ;	assignBit
      00018B D2 01            [12]  632 	setb	_pushed
                                    633 ;	timer_transmitter.c:81: Transmit_data('d');
      00018D 75 82 64         [24]  634 	mov	dpl,#0x64
      000190 12 04 A5         [24]  635 	lcall	_Transmit_data
                                    636 ;	timer_transmitter.c:82: state = 7;
      000193 75 08 07         [24]  637 	mov	_state,#0x07
      000196 75 09 00         [24]  638 	mov	(_state + 1),#0x00
                                    639 ;	timer_transmitter.c:83: button = 'd';
      000199 75 10 64         [24]  640 	mov	_button,#0x64
      00019C 80 11            [24]  641 	sjmp	00113$
      00019E                        642 00112$:
                                    643 ;	timer_transmitter.c:87: pushed = 1;
                                    644 ;	assignBit
      00019E D2 01            [12]  645 	setb	_pushed
                                    646 ;	timer_transmitter.c:88: Transmit_data('e');
      0001A0 75 82 65         [24]  647 	mov	dpl,#0x65
      0001A3 12 04 A5         [24]  648 	lcall	_Transmit_data
                                    649 ;	timer_transmitter.c:89: state = 4;
      0001A6 75 08 04         [24]  650 	mov	_state,#0x04
      0001A9 75 09 00         [24]  651 	mov	(_state + 1),#0x00
                                    652 ;	timer_transmitter.c:90: button = 'e';
      0001AC 75 10 65         [24]  653 	mov	_button,#0x65
      0001AF                        654 00113$:
                                    655 ;	timer_transmitter.c:92: time_delay=3;
      0001AF 75 0E 03         [24]  656 	mov	_time_delay,#0x03
      0001B2 75 0F 00         [24]  657 	mov	(_time_delay + 1),#0x00
                                    658 ;	timer_transmitter.c:93: a_g=0;
                                    659 ;	assignBit
      0001B5 C2 00            [12]  660 	clr	_a_g
                                    661 ;	timer_transmitter.c:94: break;
                                    662 ;	timer_transmitter.c:96: case 0x2f:
      0001B7 80 50            [24]  663 	sjmp	00120$
      0001B9                        664 00114$:
                                    665 ;	timer_transmitter.c:97: pushed = 1;
                                    666 ;	assignBit
      0001B9 D2 01            [12]  667 	setb	_pushed
                                    668 ;	timer_transmitter.c:98: Transmit_data('f');
      0001BB 75 82 66         [24]  669 	mov	dpl,#0x66
      0001BE 12 04 A5         [24]  670 	lcall	_Transmit_data
                                    671 ;	timer_transmitter.c:99: state = 5;
      0001C1 75 08 05         [24]  672 	mov	_state,#0x05
      0001C4 75 09 00         [24]  673 	mov	(_state + 1),#0x00
                                    674 ;	timer_transmitter.c:100: button = 'f';
      0001C7 75 10 66         [24]  675 	mov	_button,#0x66
                                    676 ;	timer_transmitter.c:101: time_delay=3;
      0001CA 75 0E 03         [24]  677 	mov	_time_delay,#0x03
      0001CD 75 0F 00         [24]  678 	mov	(_time_delay + 1),#0x00
                                    679 ;	timer_transmitter.c:102: a_g=0;
                                    680 ;	assignBit
      0001D0 C2 00            [12]  681 	clr	_a_g
                                    682 ;	timer_transmitter.c:103: break;
                                    683 ;	timer_transmitter.c:105: case 0x1f:
      0001D2 80 35            [24]  684 	sjmp	00120$
      0001D4                        685 00115$:
                                    686 ;	timer_transmitter.c:106: pushed = 1;
                                    687 ;	assignBit
      0001D4 D2 01            [12]  688 	setb	_pushed
                                    689 ;	timer_transmitter.c:107: Transmit_data('g');
      0001D6 75 82 67         [24]  690 	mov	dpl,#0x67
      0001D9 12 04 A5         [24]  691 	lcall	_Transmit_data
                                    692 ;	timer_transmitter.c:108: P2 =0x20;
      0001DC 75 A0 20         [24]  693 	mov	_P2,#0x20
                                    694 ;	timer_transmitter.c:109: state = 6;
      0001DF 75 08 06         [24]  695 	mov	_state,#0x06
      0001E2 75 09 00         [24]  696 	mov	(_state + 1),#0x00
                                    697 ;	timer_transmitter.c:110: button = 'g';
      0001E5 75 10 67         [24]  698 	mov	_button,#0x67
                                    699 ;	timer_transmitter.c:111: a_g=1;
                                    700 ;	assignBit
      0001E8 D2 00            [12]  701 	setb	_a_g
                                    702 ;	timer_transmitter.c:112: break;
                                    703 ;	timer_transmitter.c:114: case 0x33:
      0001EA 80 1D            [24]  704 	sjmp	00120$
      0001EC                        705 00116$:
                                    706 ;	timer_transmitter.c:115: pushed = 1;
                                    707 ;	assignBit
      0001EC D2 01            [12]  708 	setb	_pushed
                                    709 ;	timer_transmitter.c:116: Transmit_data('d');
      0001EE 75 82 64         [24]  710 	mov	dpl,#0x64
      0001F1 12 04 A5         [24]  711 	lcall	_Transmit_data
                                    712 ;	timer_transmitter.c:117: state = 7;
      0001F4 75 08 07         [24]  713 	mov	_state,#0x07
      0001F7 75 09 00         [24]  714 	mov	(_state + 1),#0x00
                                    715 ;	timer_transmitter.c:118: button = 'd';
      0001FA 75 10 64         [24]  716 	mov	_button,#0x64
                                    717 ;	timer_transmitter.c:119: time_delay=3;
      0001FD 75 0E 03         [24]  718 	mov	_time_delay,#0x03
      000200 75 0F 00         [24]  719 	mov	(_time_delay + 1),#0x00
                                    720 ;	timer_transmitter.c:120: a_g=0;
                                    721 ;	assignBit
      000203 C2 00            [12]  722 	clr	_a_g
                                    723 ;	timer_transmitter.c:121: break;
                                    724 ;	timer_transmitter.c:123: default:pushed = 0;
      000205 80 02            [24]  725 	sjmp	00120$
      000207                        726 00117$:
                                    727 ;	assignBit
      000207 C2 01            [12]  728 	clr	_pushed
                                    729 ;	timer_transmitter.c:125: }
      000209                        730 00120$:
                                    731 ;	timer_transmitter.c:130: if(timerCount == 40)
      000209 74 28            [12]  732 	mov	a,#0x28
      00020B B5 0C 06         [24]  733 	cjne	a,_timerCount,00319$
      00020E E4               [12]  734 	clr	a
      00020F B5 0D 02         [24]  735 	cjne	a,(_timerCount + 1),00319$
      000212 80 02            [24]  736 	sjmp	00320$
      000214                        737 00319$:
      000214 80 08            [24]  738 	sjmp	00122$
      000216                        739 00320$:
                                    740 ;	timer_transmitter.c:132: pushed=0;
                                    741 ;	assignBit
      000216 C2 01            [12]  742 	clr	_pushed
                                    743 ;	timer_transmitter.c:133: Transmit_data(button);
      000218 85 10 82         [24]  744 	mov	dpl,_button
      00021B 12 04 A5         [24]  745 	lcall	_Transmit_data
      00021E                        746 00122$:
                                    747 ;	timer_transmitter.c:138: if(timerCount < (time_delay*10)) // count for LED-ON delay
      00021E 85 0E 15         [24]  748 	mov	__mulint_PARM_2,_time_delay
      000221 85 0F 16         [24]  749 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      000224 90 00 0A         [24]  750 	mov	dptr,#0x000a
      000227 12 05 02         [24]  751 	lcall	__mulint
      00022A AE 82            [24]  752 	mov	r6,dpl
      00022C AF 83            [24]  753 	mov	r7,dph
      00022E C3               [12]  754 	clr	c
      00022F E5 0C            [12]  755 	mov	a,_timerCount
      000231 9E               [12]  756 	subb	a,r6
      000232 E5 0D            [12]  757 	mov	a,(_timerCount + 1)
      000234 64 80            [12]  758 	xrl	a,#0x80
      000236 8F F0            [24]  759 	mov	b,r7
      000238 63 F0 80         [24]  760 	xrl	b,#0x80
      00023B 95 F0            [12]  761 	subb	a,b
      00023D 40 03            [24]  762 	jc	00321$
      00023F 02 02 C0         [24]  763 	ljmp	00152$
      000242                        764 00321$:
                                    765 ;	timer_transmitter.c:140: switch(state)
      000242 AE 08            [24]  766 	mov	r6,_state
      000244 E5 09            [12]  767 	mov	a,(_state + 1)
      000246 FF               [12]  768 	mov	r7,a
      000247 30 E7 03         [24]  769 	jnb	acc.7,00322$
      00024A 02 03 50         [24]  770 	ljmp	00153$
      00024D                        771 00322$:
      00024D C3               [12]  772 	clr	c
      00024E 74 09            [12]  773 	mov	a,#0x09
      000250 9E               [12]  774 	subb	a,r6
      000251 74 80            [12]  775 	mov	a,#(0x00 ^ 0x80)
      000253 8F F0            [24]  776 	mov	b,r7
      000255 63 F0 80         [24]  777 	xrl	b,#0x80
      000258 95 F0            [12]  778 	subb	a,b
      00025A 50 03            [24]  779 	jnc	00323$
      00025C 02 03 50         [24]  780 	ljmp	00153$
      00025F                        781 00323$:
      00025F EE               [12]  782 	mov	a,r6
      000260 F5 F0            [12]  783 	mov	b,a
      000262 24 0B            [12]  784 	add	a,#(00324$-3-.)
      000264 83               [24]  785 	movc	a,@a+pc
      000265 F5 82            [12]  786 	mov	dpl,a
      000267 E5 F0            [12]  787 	mov	a,b
      000269 24 0E            [12]  788 	add	a,#(00325$-3-.)
      00026B 83               [24]  789 	movc	a,@a+pc
      00026C F5 83            [12]  790 	mov	dph,a
      00026E E4               [12]  791 	clr	a
      00026F 73               [24]  792 	jmp	@a+dptr
      000270                        793 00324$:
      000270 84                     794 	.db	00123$
      000271 8A                     795 	.db	00124$
      000272 90                     796 	.db	00125$
      000273 96                     797 	.db	00126$
      000274 9C                     798 	.db	00127$
      000275 A2                     799 	.db	00128$
      000276 A8                     800 	.db	00129$
      000277 AE                     801 	.db	00130$
      000278 B4                     802 	.db	00131$
      000279 BA                     803 	.db	00132$
      00027A                        804 00325$:
      00027A 02                     805 	.db	00123$>>8
      00027B 02                     806 	.db	00124$>>8
      00027C 02                     807 	.db	00125$>>8
      00027D 02                     808 	.db	00126$>>8
      00027E 02                     809 	.db	00127$>>8
      00027F 02                     810 	.db	00128$>>8
      000280 02                     811 	.db	00129$>>8
      000281 02                     812 	.db	00130$>>8
      000282 02                     813 	.db	00131$>>8
      000283 02                     814 	.db	00132$>>8
                                    815 ;	timer_transmitter.c:142: case 0:	P2 =0xA0;break;	
      000284                        816 00123$:
      000284 75 A0 A0         [24]  817 	mov	_P2,#0xa0
      000287 02 03 50         [24]  818 	ljmp	00153$
                                    819 ;	timer_transmitter.c:143: case 1:	P2 =0x80;break;
      00028A                        820 00124$:
      00028A 75 A0 80         [24]  821 	mov	_P2,#0x80
      00028D 02 03 50         [24]  822 	ljmp	00153$
                                    823 ;	timer_transmitter.c:144: case 2:	P2 =0x80;break;
      000290                        824 00125$:
      000290 75 A0 80         [24]  825 	mov	_P2,#0x80
      000293 02 03 50         [24]  826 	ljmp	00153$
                                    827 ;	timer_transmitter.c:145: case 3:	P2 =0xc0;break;
      000296                        828 00126$:
      000296 75 A0 C0         [24]  829 	mov	_P2,#0xc0
      000299 02 03 50         [24]  830 	ljmp	00153$
                                    831 ;	timer_transmitter.c:146: case 4:	P2 =0x60;break;
      00029C                        832 00127$:
      00029C 75 A0 60         [24]  833 	mov	_P2,#0x60
      00029F 02 03 50         [24]  834 	ljmp	00153$
                                    835 ;	timer_transmitter.c:147: case 5:	P2 =0x20;break;
      0002A2                        836 00128$:
      0002A2 75 A0 20         [24]  837 	mov	_P2,#0x20
      0002A5 02 03 50         [24]  838 	ljmp	00153$
                                    839 ;	timer_transmitter.c:148: case 6:	P2 =0x20;break;
      0002A8                        840 00129$:
      0002A8 75 A0 20         [24]  841 	mov	_P2,#0x20
      0002AB 02 03 50         [24]  842 	ljmp	00153$
                                    843 ;	timer_transmitter.c:149: case 7:	P2 =0x40;break;
      0002AE                        844 00130$:
      0002AE 75 A0 40         [24]  845 	mov	_P2,#0x40
      0002B1 02 03 50         [24]  846 	ljmp	00153$
                                    847 ;	timer_transmitter.c:150: case 8:	P2 =0x80;break;
      0002B4                        848 00131$:
      0002B4 75 A0 80         [24]  849 	mov	_P2,#0x80
      0002B7 02 03 50         [24]  850 	ljmp	00153$
                                    851 ;	timer_transmitter.c:151: case 9:	P2 =0x20;break;
      0002BA                        852 00132$:
      0002BA 75 A0 20         [24]  853 	mov	_P2,#0x20
      0002BD 02 03 50         [24]  854 	ljmp	00153$
                                    855 ;	timer_transmitter.c:152: default:break;}
      0002C0                        856 00152$:
                                    857 ;	timer_transmitter.c:156: else if((timerCount > time_delay) &&(timerCount<time_delay*20)) // count for LED-ON delay
      0002C0 C3               [12]  858 	clr	c
      0002C1 E5 0E            [12]  859 	mov	a,_time_delay
      0002C3 95 0C            [12]  860 	subb	a,_timerCount
      0002C5 E5 0F            [12]  861 	mov	a,(_time_delay + 1)
      0002C7 64 80            [12]  862 	xrl	a,#0x80
      0002C9 85 0D F0         [24]  863 	mov	b,(_timerCount + 1)
      0002CC 63 F0 80         [24]  864 	xrl	b,#0x80
      0002CF 95 F0            [12]  865 	subb	a,b
      0002D1 40 03            [24]  866 	jc	00326$
      0002D3 02 03 4B         [24]  867 	ljmp	00148$
      0002D6                        868 00326$:
      0002D6 85 0E 15         [24]  869 	mov	__mulint_PARM_2,_time_delay
      0002D9 85 0F 16         [24]  870 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      0002DC 90 00 14         [24]  871 	mov	dptr,#0x0014
      0002DF 12 05 02         [24]  872 	lcall	__mulint
      0002E2 AE 82            [24]  873 	mov	r6,dpl
      0002E4 AF 83            [24]  874 	mov	r7,dph
      0002E6 C3               [12]  875 	clr	c
      0002E7 E5 0C            [12]  876 	mov	a,_timerCount
      0002E9 9E               [12]  877 	subb	a,r6
      0002EA E5 0D            [12]  878 	mov	a,(_timerCount + 1)
      0002EC 64 80            [12]  879 	xrl	a,#0x80
      0002EE 8F F0            [24]  880 	mov	b,r7
      0002F0 63 F0 80         [24]  881 	xrl	b,#0x80
      0002F3 95 F0            [12]  882 	subb	a,b
      0002F5 40 03            [24]  883 	jc	00327$
      0002F7 02 03 4B         [24]  884 	ljmp	00148$
      0002FA                        885 00327$:
                                    886 ;	timer_transmitter.c:158: switch(state)
      0002FA AE 08            [24]  887 	mov	r6,_state
      0002FC E5 09            [12]  888 	mov	a,(_state + 1)
      0002FE FF               [12]  889 	mov	r7,a
      0002FF 30 E7 03         [24]  890 	jnb	acc.7,00328$
      000302 02 03 50         [24]  891 	ljmp	00153$
      000305                        892 00328$:
      000305 C3               [12]  893 	clr	c
      000306 74 09            [12]  894 	mov	a,#0x09
      000308 9E               [12]  895 	subb	a,r6
      000309 74 80            [12]  896 	mov	a,#(0x00 ^ 0x80)
      00030B 8F F0            [24]  897 	mov	b,r7
      00030D 63 F0 80         [24]  898 	xrl	b,#0x80
      000310 95 F0            [12]  899 	subb	a,b
      000312 50 03            [24]  900 	jnc	00329$
      000314 02 03 50         [24]  901 	ljmp	00153$
      000317                        902 00329$:
      000317 EE               [12]  903 	mov	a,r6
      000318 F5 F0            [12]  904 	mov	b,a
      00031A 24 0B            [12]  905 	add	a,#(00330$-3-.)
      00031C 83               [24]  906 	movc	a,@a+pc
      00031D F5 82            [12]  907 	mov	dpl,a
      00031F E5 F0            [12]  908 	mov	a,b
      000321 24 0E            [12]  909 	add	a,#(00331$-3-.)
      000323 83               [24]  910 	movc	a,@a+pc
      000324 F5 83            [12]  911 	mov	dph,a
      000326 E4               [12]  912 	clr	a
      000327 73               [24]  913 	jmp	@a+dptr
      000328                        914 00330$:
      000328 3C                     915 	.db	00142$
      000329 41                     916 	.db	00143$
      00032A 3C                     917 	.db	00142$
      00032B 3C                     918 	.db	00142$
      00032C 3C                     919 	.db	00142$
      00032D 3C                     920 	.db	00142$
      00032E 46                     921 	.db	00144$
      00032F 3C                     922 	.db	00142$
      000330 3C                     923 	.db	00142$
      000331 3C                     924 	.db	00142$
      000332                        925 00331$:
      000332 03                     926 	.db	00142$>>8
      000333 03                     927 	.db	00143$>>8
      000334 03                     928 	.db	00142$>>8
      000335 03                     929 	.db	00142$>>8
      000336 03                     930 	.db	00142$>>8
      000337 03                     931 	.db	00142$>>8
      000338 03                     932 	.db	00144$>>8
      000339 03                     933 	.db	00142$>>8
      00033A 03                     934 	.db	00142$>>8
      00033B 03                     935 	.db	00142$>>8
                                    936 ;	timer_transmitter.c:167: case 9:P2 =0x00;break;
      00033C                        937 00142$:
      00033C 75 A0 00         [24]  938 	mov	_P2,#0x00
                                    939 ;	timer_transmitter.c:168: case 1:P2 =0x80;break;
      00033F 80 0F            [24]  940 	sjmp	00153$
      000341                        941 00143$:
      000341 75 A0 80         [24]  942 	mov	_P2,#0x80
                                    943 ;	timer_transmitter.c:169: case 6:P2 =0x20;break;
      000344 80 0A            [24]  944 	sjmp	00153$
      000346                        945 00144$:
      000346 75 A0 20         [24]  946 	mov	_P2,#0x20
                                    947 ;	timer_transmitter.c:170: default:break;}
      000349 80 05            [24]  948 	sjmp	00153$
      00034B                        949 00148$:
                                    950 ;	timer_transmitter.c:174: timerCount = 0;
      00034B E4               [12]  951 	clr	a
      00034C F5 0C            [12]  952 	mov	_timerCount,a
      00034E F5 0D            [12]  953 	mov	(_timerCount + 1),a
      000350                        954 00153$:
                                    955 ;	timer_transmitter.c:178: if((state_l)&&(!pushed))
      000350 20 02 03         [24]  956 	jb	_state_l,00332$
      000353 02 03 D2         [24]  957 	ljmp	00167$
      000356                        958 00332$:
      000356 30 01 03         [24]  959 	jnb	_pushed,00333$
      000359 02 03 D2         [24]  960 	ljmp	00167$
      00035C                        961 00333$:
                                    962 ;	timer_transmitter.c:184: if(a_g)
      00035C 30 00 64         [24]  963 	jnb	_a_g,00164$
                                    964 ;	timer_transmitter.c:186: if(((state_was==1)||(state_was==8))&&(!pushed))
      00035F 74 01            [12]  965 	mov	a,#0x01
      000361 B5 0A 06         [24]  966 	cjne	a,_state_was,00335$
      000364 14               [12]  967 	dec	a
      000365 B5 0B 02         [24]  968 	cjne	a,(_state_was + 1),00335$
      000368 80 0D            [24]  969 	sjmp	00162$
      00036A                        970 00335$:
      00036A 74 08            [12]  971 	mov	a,#0x08
      00036C B5 0A 06         [24]  972 	cjne	a,_state_was,00336$
      00036F E4               [12]  973 	clr	a
      000370 B5 0B 02         [24]  974 	cjne	a,(_state_was + 1),00336$
      000373 80 02            [24]  975 	sjmp	00337$
      000375                        976 00336$:
      000375 80 1A            [24]  977 	sjmp	00159$
      000377                        978 00337$:
      000377                        979 00162$:
      000377 20 01 17         [24]  980 	jb	_pushed,00159$
                                    981 ;	timer_transmitter.c:187: {state = 8;		Transmit_data('n');		time_delay=10;
      00037A 75 08 08         [24]  982 	mov	_state,#0x08
      00037D 75 09 00         [24]  983 	mov	(_state + 1),#0x00
      000380 75 82 6E         [24]  984 	mov	dpl,#0x6e
      000383 12 04 A5         [24]  985 	lcall	_Transmit_data
      000386 75 0E 0A         [24]  986 	mov	_time_delay,#0x0a
      000389 75 0F 00         [24]  987 	mov	(_time_delay + 1),#0x00
                                    988 ;	timer_transmitter.c:188: button='n';
      00038C 75 10 6E         [24]  989 	mov	_button,#0x6e
      00038F 80 41            [24]  990 	sjmp	00167$
      000391                        991 00159$:
                                    992 ;	timer_transmitter.c:190: else if(((state_was==6)||(state_was==9))&&(!pushed))
      000391 74 06            [12]  993 	mov	a,#0x06
      000393 B5 0A 06         [24]  994 	cjne	a,_state_was,00339$
      000396 E4               [12]  995 	clr	a
      000397 B5 0B 02         [24]  996 	cjne	a,(_state_was + 1),00339$
      00039A 80 0D            [24]  997 	sjmp	00157$
      00039C                        998 00339$:
      00039C 74 09            [12]  999 	mov	a,#0x09
      00039E B5 0A 06         [24] 1000 	cjne	a,_state_was,00340$
      0003A1 E4               [12] 1001 	clr	a
      0003A2 B5 0B 02         [24] 1002 	cjne	a,(_state_was + 1),00340$
      0003A5 80 02            [24] 1003 	sjmp	00341$
      0003A7                       1004 00340$:
      0003A7 80 29            [24] 1005 	sjmp	00167$
      0003A9                       1006 00341$:
      0003A9                       1007 00157$:
      0003A9 20 01 26         [24] 1008 	jb	_pushed,00167$
                                   1009 ;	timer_transmitter.c:191: {state = 9;		Transmit_data('u');		time_delay=10;
      0003AC 75 08 09         [24] 1010 	mov	_state,#0x09
      0003AF 75 09 00         [24] 1011 	mov	(_state + 1),#0x00
      0003B2 75 82 75         [24] 1012 	mov	dpl,#0x75
      0003B5 12 04 A5         [24] 1013 	lcall	_Transmit_data
      0003B8 75 0E 0A         [24] 1014 	mov	_time_delay,#0x0a
      0003BB 75 0F 00         [24] 1015 	mov	(_time_delay + 1),#0x00
                                   1016 ;	timer_transmitter.c:192: button='u';
      0003BE 75 10 75         [24] 1017 	mov	_button,#0x75
      0003C1 80 0F            [24] 1018 	sjmp	00167$
      0003C3                       1019 00164$:
                                   1020 ;	timer_transmitter.c:197: a_g=0;
                                   1021 ;	assignBit
      0003C3 C2 00            [12] 1022 	clr	_a_g
                                   1023 ;	timer_transmitter.c:198: state=0;
      0003C5 E4               [12] 1024 	clr	a
      0003C6 F5 08            [12] 1025 	mov	_state,a
      0003C8 F5 09            [12] 1026 	mov	(_state + 1),a
                                   1027 ;	timer_transmitter.c:199: button = 'l';
      0003CA 75 10 6C         [24] 1028 	mov	_button,#0x6c
                                   1029 ;	timer_transmitter.c:200: time_delay=15;
      0003CD 75 0E 0F         [24] 1030 	mov	_time_delay,#0x0f
                                   1031 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      0003D0 F5 0F            [12] 1032 	mov	(_time_delay + 1),a
      0003D2                       1033 00167$:
                                   1034 ;	timer_transmitter.c:207: if(timerCount%13==0)
      0003D2 75 15 0D         [24] 1035 	mov	__modsint_PARM_2,#0x0d
      0003D5 75 16 00         [24] 1036 	mov	(__modsint_PARM_2 + 1),#0x00
      0003D8 85 0C 82         [24] 1037 	mov	dpl,_timerCount
      0003DB 85 0D 83         [24] 1038 	mov	dph,(_timerCount + 1)
      0003DE 12 05 6C         [24] 1039 	lcall	__modsint
      0003E1 E5 82            [12] 1040 	mov	a,dpl
      0003E3 85 83 F0         [24] 1041 	mov	b,dph
      0003E6 45 F0            [12] 1042 	orl	a,b
      0003E8 70 2D            [24] 1043 	jnz	00179$
                                   1044 ;	timer_transmitter.c:210: TI=0;
                                   1045 ;	assignBit
      0003EA C2 99            [12] 1046 	clr	_TI
                                   1047 ;	timer_transmitter.c:211: data_r = SBUF;		/* Load char in SBUF register */
      0003EC 85 99 13         [24] 1048 	mov	_data_r,_SBUF
                                   1049 ;	timer_transmitter.c:212: RI = 0;			/* Clear TI flag */
                                   1050 ;	assignBit
      0003EF C2 98            [12] 1051 	clr	_RI
                                   1052 ;	timer_transmitter.c:213: if(data_r=='x')
      0003F1 74 78            [12] 1053 	mov	a,#0x78
      0003F3 B5 13 08         [24] 1054 	cjne	a,_data_r,00176$
                                   1055 ;	timer_transmitter.c:214: Transmit_data('y');
      0003F6 75 82 79         [24] 1056 	mov	dpl,#0x79
      0003F9 12 04 A5         [24] 1057 	lcall	_Transmit_data
      0003FC 80 19            [24] 1058 	sjmp	00179$
      0003FE                       1059 00176$:
                                   1060 ;	timer_transmitter.c:215: else if((data_r=='m')||(data_r=='h'))
      0003FE 74 6D            [12] 1061 	mov	a,#0x6d
      000400 B5 13 02         [24] 1062 	cjne	a,_data_r,00346$
      000403 80 05            [24] 1063 	sjmp	00171$
      000405                       1064 00346$:
      000405 74 68            [12] 1065 	mov	a,#0x68
      000407 B5 13 05         [24] 1066 	cjne	a,_data_r,00172$
      00040A                       1067 00171$:
                                   1068 ;	timer_transmitter.c:216: received = 0;
      00040A 75 14 00         [24] 1069 	mov	_received,#0x00
      00040D 80 08            [24] 1070 	sjmp	00179$
      00040F                       1071 00172$:
                                   1072 ;	timer_transmitter.c:217: else if(data_r=='l')
      00040F 74 6C            [12] 1073 	mov	a,#0x6c
      000411 B5 13 03         [24] 1074 	cjne	a,_data_r,00179$
                                   1075 ;	timer_transmitter.c:218: received = 1;
      000414 75 14 01         [24] 1076 	mov	_received,#0x01
      000417                       1077 00179$:
                                   1078 ;	timer_transmitter.c:221: state_was=state;
      000417 85 08 0A         [24] 1079 	mov	_state_was,_state
      00041A 85 09 0B         [24] 1080 	mov	(_state_was + 1),(_state + 1)
                                   1081 ;	timer_transmitter.c:222: }
      00041D D0 D0            [24] 1082 	pop	psw
      00041F D0 00            [24] 1083 	pop	(0+0)
      000421 D0 01            [24] 1084 	pop	(0+1)
      000423 D0 02            [24] 1085 	pop	(0+2)
      000425 D0 03            [24] 1086 	pop	(0+3)
      000427 D0 04            [24] 1087 	pop	(0+4)
      000429 D0 05            [24] 1088 	pop	(0+5)
      00042B D0 06            [24] 1089 	pop	(0+6)
      00042D D0 07            [24] 1090 	pop	(0+7)
      00042F D0 83            [24] 1091 	pop	dph
      000431 D0 82            [24] 1092 	pop	dpl
      000433 D0 F0            [24] 1093 	pop	b
      000435 D0 E0            [24] 1094 	pop	acc
      000437 D0 21            [24] 1095 	pop	bits
      000439 32               [24] 1096 	reti
                                   1097 ;------------------------------------------------------------
                                   1098 ;Allocation info for local variables in function 'main'
                                   1099 ;------------------------------------------------------------
                                   1100 ;	timer_transmitter.c:224: void main(void)
                                   1101 ;	-----------------------------------------
                                   1102 ;	 function main
                                   1103 ;	-----------------------------------------
      00043A                       1104 _main:
                                   1105 ;	timer_transmitter.c:226: startup();
      00043A 12 04 AE         [24] 1106 	lcall	_startup
                                   1107 ;	timer_transmitter.c:228: UART_Init();
      00043D 12 04 73         [24] 1108 	lcall	_UART_Init
                                   1109 ;	timer_transmitter.c:229: handshake();
      000440 12 04 7F         [24] 1110 	lcall	_handshake
                                   1111 ;	timer_transmitter.c:231: InitTimer1();
      000443 12 04 F4         [24] 1112 	lcall	_InitTimer1
                                   1113 ;	timer_transmitter.c:233: EA  = 1;         // Global interrupt enable
                                   1114 ;	assignBit
      000446 D2 AF            [12] 1115 	setb	_EA
                                   1116 ;	timer_transmitter.c:235: while(1)
      000448                       1117 00102$:
                                   1118 ;	timer_transmitter.c:239: }
      000448 80 FE            [24] 1119 	sjmp	00102$
                                   1120 ;------------------------------------------------------------
                                   1121 ;Allocation info for local variables in function 'delay'
                                   1122 ;------------------------------------------------------------
                                   1123 ;i                         Allocated to registers r6 r7 
                                   1124 ;j                         Allocated to registers r4 r5 
                                   1125 ;------------------------------------------------------------
                                   1126 ;	timer_transmitter.c:242: void delay(void)
                                   1127 ;	-----------------------------------------
                                   1128 ;	 function delay
                                   1129 ;	-----------------------------------------
      00044A                       1130 _delay:
                                   1131 ;	timer_transmitter.c:245: for(i=0;i<0x33;i++)
      00044A 7E 00            [12] 1132 	mov	r6,#0x00
      00044C 7F 00            [12] 1133 	mov	r7,#0x00
      00044E                       1134 00106$:
                                   1135 ;	timer_transmitter.c:246: for(j=0;j<0xff;j++);
      00044E 7C FF            [12] 1136 	mov	r4,#0xff
      000450 7D 00            [12] 1137 	mov	r5,#0x00
      000452                       1138 00105$:
      000452 EC               [12] 1139 	mov	a,r4
      000453 24 FF            [12] 1140 	add	a,#0xff
      000455 FA               [12] 1141 	mov	r2,a
      000456 ED               [12] 1142 	mov	a,r5
      000457 34 FF            [12] 1143 	addc	a,#0xff
      000459 FB               [12] 1144 	mov	r3,a
      00045A 8A 04            [24] 1145 	mov	ar4,r2
      00045C 8B 05            [24] 1146 	mov	ar5,r3
      00045E EA               [12] 1147 	mov	a,r2
      00045F 4B               [12] 1148 	orl	a,r3
      000460 70 F0            [24] 1149 	jnz	00105$
                                   1150 ;	timer_transmitter.c:245: for(i=0;i<0x33;i++)
      000462 0E               [12] 1151 	inc	r6
      000463 BE 00 01         [24] 1152 	cjne	r6,#0x00,00124$
      000466 0F               [12] 1153 	inc	r7
      000467                       1154 00124$:
      000467 C3               [12] 1155 	clr	c
      000468 EE               [12] 1156 	mov	a,r6
      000469 94 33            [12] 1157 	subb	a,#0x33
      00046B EF               [12] 1158 	mov	a,r7
      00046C 64 80            [12] 1159 	xrl	a,#0x80
      00046E 94 80            [12] 1160 	subb	a,#0x80
      000470 40 DC            [24] 1161 	jc	00106$
                                   1162 ;	timer_transmitter.c:247: }
      000472 22               [24] 1163 	ret
                                   1164 ;------------------------------------------------------------
                                   1165 ;Allocation info for local variables in function 'UART_Init'
                                   1166 ;------------------------------------------------------------
                                   1167 ;	timer_transmitter.c:250: void UART_Init()
                                   1168 ;	-----------------------------------------
                                   1169 ;	 function UART_Init
                                   1170 ;	-----------------------------------------
      000473                       1171 _UART_Init:
                                   1172 ;	timer_transmitter.c:252: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      000473 75 89 20         [24] 1173 	mov	_TMOD,#0x20
                                   1174 ;	timer_transmitter.c:253: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      000476 75 8D FD         [24] 1175 	mov	_TH1,#0xfd
                                   1176 ;	timer_transmitter.c:254: SCON = 0x50;		/* Mode 1, reception enable */
      000479 75 98 50         [24] 1177 	mov	_SCON,#0x50
                                   1178 ;	timer_transmitter.c:255: TR1 = 1;		/* Start timer 1 */
                                   1179 ;	assignBit
      00047C D2 8E            [12] 1180 	setb	_TR1
                                   1181 ;	timer_transmitter.c:256: }
      00047E 22               [24] 1182 	ret
                                   1183 ;------------------------------------------------------------
                                   1184 ;Allocation info for local variables in function 'handshake'
                                   1185 ;------------------------------------------------------------
                                   1186 ;	timer_transmitter.c:259: void handshake()
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function handshake
                                   1189 ;	-----------------------------------------
      00047F                       1190 _handshake:
                                   1191 ;	timer_transmitter.c:261: start:while(!data_r)
      00047F                       1192 00102$:
      00047F E5 13            [12] 1193 	mov	a,_data_r
      000481 70 13            [24] 1194 	jnz	00104$
                                   1195 ;	timer_transmitter.c:263: data_r=SBUF;
      000483 85 99 13         [24] 1196 	mov	_data_r,_SBUF
                                   1197 ;	timer_transmitter.c:264: RI=0;
                                   1198 ;	assignBit
      000486 C2 98            [12] 1199 	clr	_RI
                                   1200 ;	timer_transmitter.c:265: P2 = 0xA0; // Turn ON all LED's connected to Port1
      000488 75 A0 A0         [24] 1201 	mov	_P2,#0xa0
                                   1202 ;	timer_transmitter.c:266: delay();
      00048B 12 04 4A         [24] 1203 	lcall	_delay
                                   1204 ;	timer_transmitter.c:267: P2 = 0x00; // Turn OFF all LED's connected to Port1
      00048E 75 A0 00         [24] 1205 	mov	_P2,#0x00
                                   1206 ;	timer_transmitter.c:268: delay();
      000491 12 04 4A         [24] 1207 	lcall	_delay
      000494 80 E9            [24] 1208 	sjmp	00102$
      000496                       1209 00104$:
                                   1210 ;	timer_transmitter.c:271: if(data_r=='x')
      000496 74 78            [12] 1211 	mov	a,#0x78
      000498 B5 13 E4         [24] 1212 	cjne	a,_data_r,00102$
                                   1213 ;	timer_transmitter.c:273: Transmit_data('y');
      00049B 75 82 79         [24] 1214 	mov	dpl,#0x79
      00049E 12 04 A5         [24] 1215 	lcall	_Transmit_data
                                   1216 ;	timer_transmitter.c:274: data_r=0;
      0004A1 75 13 00         [24] 1217 	mov	_data_r,#0x00
                                   1218 ;	timer_transmitter.c:277: else goto start;
                                   1219 ;	timer_transmitter.c:278: }
      0004A4 22               [24] 1220 	ret
                                   1221 ;------------------------------------------------------------
                                   1222 ;Allocation info for local variables in function 'Transmit_data'
                                   1223 ;------------------------------------------------------------
                                   1224 ;tx_data                   Allocated to registers 
                                   1225 ;------------------------------------------------------------
                                   1226 ;	timer_transmitter.c:281: void Transmit_data(char tx_data)
                                   1227 ;	-----------------------------------------
                                   1228 ;	 function Transmit_data
                                   1229 ;	-----------------------------------------
      0004A5                       1230 _Transmit_data:
      0004A5 85 82 99         [24] 1231 	mov	_SBUF,dpl
                                   1232 ;	timer_transmitter.c:284: while (TI==0);		/* Wait until stop bit transmit */
      0004A8                       1233 00101$:
                                   1234 ;	timer_transmitter.c:285: TI = 0;			/* Clear TI flag */
                                   1235 ;	assignBit
      0004A8 10 99 02         [24] 1236 	jbc	_TI,00114$
      0004AB 80 FB            [24] 1237 	sjmp	00101$
      0004AD                       1238 00114$:
                                   1239 ;	timer_transmitter.c:286: }
      0004AD 22               [24] 1240 	ret
                                   1241 ;------------------------------------------------------------
                                   1242 ;Allocation info for local variables in function 'startup'
                                   1243 ;------------------------------------------------------------
                                   1244 ;	timer_transmitter.c:290: void startup(void)
                                   1245 ;	-----------------------------------------
                                   1246 ;	 function startup
                                   1247 ;	-----------------------------------------
      0004AE                       1248 _startup:
                                   1249 ;	timer_transmitter.c:292: P1 = 0xff;
      0004AE 75 90 FF         [24] 1250 	mov	_P1,#0xff
                                   1251 ;	timer_transmitter.c:293: P2 = 0x00;
      0004B1 75 A0 00         [24] 1252 	mov	_P2,#0x00
                                   1253 ;	timer_transmitter.c:294: P2 = 0x00;
      0004B4 75 A0 00         [24] 1254 	mov	_P2,#0x00
                                   1255 ;	timer_transmitter.c:295: delay();delay();
      0004B7 12 04 4A         [24] 1256 	lcall	_delay
      0004BA 12 04 4A         [24] 1257 	lcall	_delay
                                   1258 ;	timer_transmitter.c:296: P2 = 0xE0;
      0004BD 75 A0 E0         [24] 1259 	mov	_P2,#0xe0
                                   1260 ;	timer_transmitter.c:297: delay();
      0004C0 12 04 4A         [24] 1261 	lcall	_delay
                                   1262 ;	timer_transmitter.c:298: P2 = 0x80;
      0004C3 75 A0 80         [24] 1263 	mov	_P2,#0x80
                                   1264 ;	timer_transmitter.c:299: delay();delay();delay();delay();
      0004C6 12 04 4A         [24] 1265 	lcall	_delay
      0004C9 12 04 4A         [24] 1266 	lcall	_delay
      0004CC 12 04 4A         [24] 1267 	lcall	_delay
      0004CF 12 04 4A         [24] 1268 	lcall	_delay
                                   1269 ;	timer_transmitter.c:300: P2 = 0x40;
      0004D2 75 A0 40         [24] 1270 	mov	_P2,#0x40
                                   1271 ;	timer_transmitter.c:301: delay();delay();delay();delay();
      0004D5 12 04 4A         [24] 1272 	lcall	_delay
      0004D8 12 04 4A         [24] 1273 	lcall	_delay
      0004DB 12 04 4A         [24] 1274 	lcall	_delay
      0004DE 12 04 4A         [24] 1275 	lcall	_delay
                                   1276 ;	timer_transmitter.c:302: P2 = 0x20;
      0004E1 75 A0 20         [24] 1277 	mov	_P2,#0x20
                                   1278 ;	timer_transmitter.c:303: delay();delay();delay();delay();
      0004E4 12 04 4A         [24] 1279 	lcall	_delay
      0004E7 12 04 4A         [24] 1280 	lcall	_delay
      0004EA 12 04 4A         [24] 1281 	lcall	_delay
      0004ED 12 04 4A         [24] 1282 	lcall	_delay
                                   1283 ;	timer_transmitter.c:304: P2 = 0x00;
      0004F0 75 A0 00         [24] 1284 	mov	_P2,#0x00
                                   1285 ;	timer_transmitter.c:305: }
      0004F3 22               [24] 1286 	ret
                                   1287 ;------------------------------------------------------------
                                   1288 ;Allocation info for local variables in function 'InitTimer1'
                                   1289 ;------------------------------------------------------------
                                   1290 ;	timer_transmitter.c:309: void InitTimer1(void)
                                   1291 ;	-----------------------------------------
                                   1292 ;	 function InitTimer1
                                   1293 ;	-----------------------------------------
      0004F4                       1294 _InitTimer1:
                                   1295 ;	timer_transmitter.c:311: TMOD |= 0x01;    // Set timer0 in mode 1
      0004F4 43 89 01         [24] 1296 	orl	_TMOD,#0x01
                                   1297 ;	timer_transmitter.c:312: TH0 = 0xee;      // 5 msec reloading time
      0004F7 75 8C EE         [24] 1298 	mov	_TH0,#0xee
                                   1299 ;	timer_transmitter.c:313: TL0 = 0x00;      // First time value
      0004FA 75 8A 00         [24] 1300 	mov	_TL0,#0x00
                                   1301 ;	timer_transmitter.c:314: TR0 = 1;         // Start Timer 1
                                   1302 ;	assignBit
      0004FD D2 8C            [12] 1303 	setb	_TR0
                                   1304 ;	timer_transmitter.c:315: ET0 = 1;         // Enable Timer1 interrupts	
                                   1305 ;	assignBit
      0004FF D2 A9            [12] 1306 	setb	_ET0
                                   1307 ;	timer_transmitter.c:316: }
      000501 22               [24] 1308 	ret
                                   1309 	.area CSEG    (CODE)
                                   1310 	.area CONST   (CODE)
                                   1311 	.area XINIT   (CODE)
                                   1312 	.area CABS    (ABS,CODE)
