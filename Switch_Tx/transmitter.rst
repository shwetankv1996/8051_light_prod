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
                                    132 	.globl _button
                                    133 	.globl _time_delay
                                    134 	.globl _timerCount
                                    135 	.globl _received
                                    136 	.globl _data_r
                                    137 	.globl _state_was
                                    138 	.globl _state
                                    139 	.globl _delay
                                    140 	.globl _UART_Init
                                    141 	.globl _handshake
                                    142 	.globl _Transmit_data
                                    143 	.globl _check_x
                                    144 	.globl _startup
                                    145 	.globl _InitTimer1
                                    146 ;--------------------------------------------------------
                                    147 ; special function registers
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0	=	0x0080
                           000081   152 _SP	=	0x0081
                           000082   153 _DPL	=	0x0082
                           000083   154 _DPH	=	0x0083
                           000087   155 _PCON	=	0x0087
                           000088   156 _TCON	=	0x0088
                           000089   157 _TMOD	=	0x0089
                           00008A   158 _TL0	=	0x008a
                           00008B   159 _TL1	=	0x008b
                           00008C   160 _TH0	=	0x008c
                           00008D   161 _TH1	=	0x008d
                           000090   162 _P1	=	0x0090
                           000098   163 _SCON	=	0x0098
                           000099   164 _SBUF	=	0x0099
                           0000A0   165 _P2	=	0x00a0
                           0000A8   166 _IE	=	0x00a8
                           0000B0   167 _P3	=	0x00b0
                           0000B8   168 _IP	=	0x00b8
                           0000D0   169 _PSW	=	0x00d0
                           0000E0   170 _ACC	=	0x00e0
                           0000F0   171 _B	=	0x00f0
                           0000C8   172 _T2CON	=	0x00c8
                           0000CA   173 _RCAP2L	=	0x00ca
                           0000CB   174 _RCAP2H	=	0x00cb
                           0000CC   175 _TL2	=	0x00cc
                           0000CD   176 _TH2	=	0x00cd
                                    177 ;--------------------------------------------------------
                                    178 ; special function bits
                                    179 ;--------------------------------------------------------
                                    180 	.area RSEG    (ABS,DATA)
      000000                        181 	.org 0x0000
                           000080   182 _P0_0	=	0x0080
                           000081   183 _P0_1	=	0x0081
                           000082   184 _P0_2	=	0x0082
                           000083   185 _P0_3	=	0x0083
                           000084   186 _P0_4	=	0x0084
                           000085   187 _P0_5	=	0x0085
                           000086   188 _P0_6	=	0x0086
                           000087   189 _P0_7	=	0x0087
                           000088   190 _IT0	=	0x0088
                           000089   191 _IE0	=	0x0089
                           00008A   192 _IT1	=	0x008a
                           00008B   193 _IE1	=	0x008b
                           00008C   194 _TR0	=	0x008c
                           00008D   195 _TF0	=	0x008d
                           00008E   196 _TR1	=	0x008e
                           00008F   197 _TF1	=	0x008f
                           000090   198 _P1_0	=	0x0090
                           000091   199 _P1_1	=	0x0091
                           000092   200 _P1_2	=	0x0092
                           000093   201 _P1_3	=	0x0093
                           000094   202 _P1_4	=	0x0094
                           000095   203 _P1_5	=	0x0095
                           000096   204 _P1_6	=	0x0096
                           000097   205 _P1_7	=	0x0097
                           000098   206 _RI	=	0x0098
                           000099   207 _TI	=	0x0099
                           00009A   208 _RB8	=	0x009a
                           00009B   209 _TB8	=	0x009b
                           00009C   210 _REN	=	0x009c
                           00009D   211 _SM2	=	0x009d
                           00009E   212 _SM1	=	0x009e
                           00009F   213 _SM0	=	0x009f
                           0000A0   214 _P2_0	=	0x00a0
                           0000A1   215 _P2_1	=	0x00a1
                           0000A2   216 _P2_2	=	0x00a2
                           0000A3   217 _P2_3	=	0x00a3
                           0000A4   218 _P2_4	=	0x00a4
                           0000A5   219 _P2_5	=	0x00a5
                           0000A6   220 _P2_6	=	0x00a6
                           0000A7   221 _P2_7	=	0x00a7
                           0000A8   222 _EX0	=	0x00a8
                           0000A9   223 _ET0	=	0x00a9
                           0000AA   224 _EX1	=	0x00aa
                           0000AB   225 _ET1	=	0x00ab
                           0000AC   226 _ES	=	0x00ac
                           0000AF   227 _EA	=	0x00af
                           0000B0   228 _P3_0	=	0x00b0
                           0000B1   229 _P3_1	=	0x00b1
                           0000B2   230 _P3_2	=	0x00b2
                           0000B3   231 _P3_3	=	0x00b3
                           0000B4   232 _P3_4	=	0x00b4
                           0000B5   233 _P3_5	=	0x00b5
                           0000B6   234 _P3_6	=	0x00b6
                           0000B7   235 _P3_7	=	0x00b7
                           0000B0   236 _RXD	=	0x00b0
                           0000B1   237 _TXD	=	0x00b1
                           0000B2   238 _INT0	=	0x00b2
                           0000B3   239 _INT1	=	0x00b3
                           0000B4   240 _T0	=	0x00b4
                           0000B5   241 _T1	=	0x00b5
                           0000B6   242 _WR	=	0x00b6
                           0000B7   243 _RD	=	0x00b7
                           0000B8   244 _PX0	=	0x00b8
                           0000B9   245 _PT0	=	0x00b9
                           0000BA   246 _PX1	=	0x00ba
                           0000BB   247 _PT1	=	0x00bb
                           0000BC   248 _PS	=	0x00bc
                           0000D0   249 _P	=	0x00d0
                           0000D1   250 _F1	=	0x00d1
                           0000D2   251 _OV	=	0x00d2
                           0000D3   252 _RS0	=	0x00d3
                           0000D4   253 _RS1	=	0x00d4
                           0000D5   254 _F0	=	0x00d5
                           0000D6   255 _AC	=	0x00d6
                           0000D7   256 _CY	=	0x00d7
                           0000AD   257 _ET2	=	0x00ad
                           0000BD   258 _PT2	=	0x00bd
                           0000C8   259 _T2CON_0	=	0x00c8
                           0000C9   260 _T2CON_1	=	0x00c9
                           0000CA   261 _T2CON_2	=	0x00ca
                           0000CB   262 _T2CON_3	=	0x00cb
                           0000CC   263 _T2CON_4	=	0x00cc
                           0000CD   264 _T2CON_5	=	0x00cd
                           0000CE   265 _T2CON_6	=	0x00ce
                           0000CF   266 _T2CON_7	=	0x00cf
                           0000C8   267 _CP_RL2	=	0x00c8
                           0000C9   268 _C_T2	=	0x00c9
                           0000CA   269 _TR2	=	0x00ca
                           0000CB   270 _EXEN2	=	0x00cb
                           0000CC   271 _TCLK	=	0x00cc
                           0000CD   272 _RCLK	=	0x00cd
                           0000CE   273 _EXF2	=	0x00ce
                           0000CF   274 _TF2	=	0x00cf
                                    275 ;--------------------------------------------------------
                                    276 ; overlayable register banks
                                    277 ;--------------------------------------------------------
                                    278 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        279 	.ds 8
                                    280 ;--------------------------------------------------------
                                    281 ; overlayable bit register bank
                                    282 ;--------------------------------------------------------
                                    283 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        284 bits:
      000020                        285 	.ds 1
                           008000   286 	b0 = bits[0]
                           008100   287 	b1 = bits[1]
                           008200   288 	b2 = bits[2]
                           008300   289 	b3 = bits[3]
                           008400   290 	b4 = bits[4]
                           008500   291 	b5 = bits[5]
                           008600   292 	b6 = bits[6]
                           008700   293 	b7 = bits[7]
                                    294 ;--------------------------------------------------------
                                    295 ; internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area DSEG    (DATA)
      000008                        298 _state::
      000008                        299 	.ds 2
      00000A                        300 _state_was::
      00000A                        301 	.ds 2
      00000C                        302 _data_r::
      00000C                        303 	.ds 1
      00000D                        304 _received::
      00000D                        305 	.ds 1
      00000E                        306 _timerCount::
      00000E                        307 	.ds 2
      000010                        308 _time_delay::
      000010                        309 	.ds 2
      000012                        310 _button::
      000012                        311 	.ds 1
                                    312 ;--------------------------------------------------------
                                    313 ; overlayable items in internal ram 
                                    314 ;--------------------------------------------------------
                                    315 	.area	OSEG    (OVR,DATA)
                                    316 	.area	OSEG    (OVR,DATA)
                                    317 ;--------------------------------------------------------
                                    318 ; Stack segment in internal ram 
                                    319 ;--------------------------------------------------------
                                    320 	.area	SSEG
      000021                        321 __start__stack:
      000021                        322 	.ds	1
                                    323 
                                    324 ;--------------------------------------------------------
                                    325 ; indirectly addressable internal ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area ISEG    (DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; absolute internal ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area IABS    (ABS,DATA)
                                    332 	.area IABS    (ABS,DATA)
                                    333 ;--------------------------------------------------------
                                    334 ; bit data
                                    335 ;--------------------------------------------------------
                                    336 	.area BSEG    (BIT)
                                    337 ;--------------------------------------------------------
                                    338 ; paged external ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area PSEG    (PAG,XDATA)
                                    341 ;--------------------------------------------------------
                                    342 ; external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area XSEG    (XDATA)
                                    345 ;--------------------------------------------------------
                                    346 ; absolute external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area XABS    (ABS,XDATA)
                                    349 ;--------------------------------------------------------
                                    350 ; external initialized ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area XISEG   (XDATA)
                                    353 	.area HOME    (CODE)
                                    354 	.area GSINIT0 (CODE)
                                    355 	.area GSINIT1 (CODE)
                                    356 	.area GSINIT2 (CODE)
                                    357 	.area GSINIT3 (CODE)
                                    358 	.area GSINIT4 (CODE)
                                    359 	.area GSINIT5 (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area CSEG    (CODE)
                                    363 ;--------------------------------------------------------
                                    364 ; interrupt vector 
                                    365 ;--------------------------------------------------------
                                    366 	.area HOME    (CODE)
      000000                        367 __interrupt_vect:
      000000 02 00 11         [24]  368 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  369 	reti
      000004                        370 	.ds	7
      00000B 02 00 87         [24]  371 	ljmp	_isr_timer0
                                    372 ;--------------------------------------------------------
                                    373 ; global & static initialisations
                                    374 ;--------------------------------------------------------
                                    375 	.area HOME    (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 	.area GSFINAL (CODE)
                                    378 	.area GSINIT  (CODE)
                                    379 	.globl __sdcc_gsinit_startup
                                    380 	.globl __sdcc_program_startup
                                    381 	.globl __start__stack
                                    382 	.globl __mcs51_genXINIT
                                    383 	.globl __mcs51_genXRAMCLEAR
                                    384 	.globl __mcs51_genRAMCLEAR
                                    385 ;	transmitter.c:3: volatile int state = 0;
      00006A E4               [12]  386 	clr	a
      00006B F5 08            [12]  387 	mov	_state,a
      00006D F5 09            [12]  388 	mov	(_state + 1),a
                                    389 ;	transmitter.c:4: volatile int state_was = 0;
      00006F F5 0A            [12]  390 	mov	_state_was,a
      000071 F5 0B            [12]  391 	mov	(_state_was + 1),a
                                    392 ;	transmitter.c:15: char data_r=0;
                                    393 ;	1-genFromRTrack replaced	mov	_data_r,#0x00
      000073 F5 0C            [12]  394 	mov	_data_r,a
                                    395 ;	transmitter.c:16: char received=1;
      000075 75 0D 01         [24]  396 	mov	_received,#0x01
                                    397 ;	transmitter.c:17: volatile int timerCount = 0;
      000078 F5 0E            [12]  398 	mov	_timerCount,a
      00007A F5 0F            [12]  399 	mov	(_timerCount + 1),a
                                    400 ;	transmitter.c:18: volatile int time_delay = 15;
      00007C 75 10 0F         [24]  401 	mov	_time_delay,#0x0f
                                    402 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      00007F F5 11            [12]  403 	mov	(_time_delay + 1),a
                                    404 ;	transmitter.c:19: char button='l';
      000081 75 12 6C         [24]  405 	mov	_button,#0x6c
                                    406 	.area GSFINAL (CODE)
      000084 02 00 0E         [24]  407 	ljmp	__sdcc_program_startup
                                    408 ;--------------------------------------------------------
                                    409 ; Home
                                    410 ;--------------------------------------------------------
                                    411 	.area HOME    (CODE)
                                    412 	.area HOME    (CODE)
      00000E                        413 __sdcc_program_startup:
      00000E 02 03 17         [24]  414 	ljmp	_main
                                    415 ;	return from main will return to caller
                                    416 ;--------------------------------------------------------
                                    417 ; code
                                    418 ;--------------------------------------------------------
                                    419 	.area CSEG    (CODE)
                                    420 ;------------------------------------------------------------
                                    421 ;Allocation info for local variables in function 'isr_timer0'
                                    422 ;------------------------------------------------------------
                                    423 ;	transmitter.c:21: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
                                    424 ;	-----------------------------------------
                                    425 ;	 function isr_timer0
                                    426 ;	-----------------------------------------
      000087                        427 _isr_timer0:
                           000007   428 	ar7 = 0x07
                           000006   429 	ar6 = 0x06
                           000005   430 	ar5 = 0x05
                           000004   431 	ar4 = 0x04
                           000003   432 	ar3 = 0x03
                           000002   433 	ar2 = 0x02
                           000001   434 	ar1 = 0x01
                           000000   435 	ar0 = 0x00
      000087 C0 20            [24]  436 	push	bits
      000089 C0 E0            [24]  437 	push	acc
      00008B C0 F0            [24]  438 	push	b
      00008D C0 82            [24]  439 	push	dpl
      00008F C0 83            [24]  440 	push	dph
      000091 C0 07            [24]  441 	push	(0+7)
      000093 C0 06            [24]  442 	push	(0+6)
      000095 C0 05            [24]  443 	push	(0+5)
      000097 C0 04            [24]  444 	push	(0+4)
      000099 C0 03            [24]  445 	push	(0+3)
      00009B C0 02            [24]  446 	push	(0+2)
      00009D C0 01            [24]  447 	push	(0+1)
      00009F C0 00            [24]  448 	push	(0+0)
      0000A1 C0 D0            [24]  449 	push	psw
      0000A3 75 D0 00         [24]  450 	mov	psw,#0x00
                                    451 ;	transmitter.c:23: TH0  = 0Xee;         // ReLoad the timer value for 5ms
      0000A6 75 8C EE         [24]  452 	mov	_TH0,#0xee
                                    453 ;	transmitter.c:24: TL0  = 0X00;
      0000A9 75 8A 00         [24]  454 	mov	_TL0,#0x00
                                    455 ;	transmitter.c:25: timerCount++;
      0000AC AE 0E            [24]  456 	mov	r6,_timerCount
      0000AE AF 0F            [24]  457 	mov	r7,(_timerCount + 1)
      0000B0 74 01            [12]  458 	mov	a,#0x01
      0000B2 2E               [12]  459 	add	a,r6
      0000B3 F5 0E            [12]  460 	mov	_timerCount,a
      0000B5 E4               [12]  461 	clr	a
      0000B6 3F               [12]  462 	addc	a,r7
      0000B7 F5 0F            [12]  463 	mov	(_timerCount + 1),a
                                    464 ;	transmitter.c:26: switch(P1)
      0000B9 AF 90            [24]  465 	mov	r7,_P1
      0000BB BF 1F 03         [24]  466 	cjne	r7,#0x1f,00225$
      0000BE 02 01 8D         [24]  467 	ljmp	00113$
      0000C1                        468 00225$:
      0000C1 BF 2F 03         [24]  469 	cjne	r7,#0x2f,00226$
      0000C4 02 01 79         [24]  470 	ljmp	00112$
      0000C7                        471 00226$:
      0000C7 BF 37 03         [24]  472 	cjne	r7,#0x37,00227$
      0000CA 02 01 4D         [24]  473 	ljmp	00108$
      0000CD                        474 00227$:
      0000CD BF 3B 02         [24]  475 	cjne	r7,#0x3b,00228$
      0000D0 80 4F            [24]  476 	sjmp	00104$
      0000D2                        477 00228$:
      0000D2 BF 3D 02         [24]  478 	cjne	r7,#0x3d,00229$
      0000D5 80 35            [24]  479 	sjmp	00103$
      0000D7                        480 00229$:
      0000D7 BF 3E 02         [24]  481 	cjne	r7,#0x3e,00230$
      0000DA 80 18            [24]  482 	sjmp	00102$
      0000DC                        483 00230$:
      0000DC BF 3F 02         [24]  484 	cjne	r7,#0x3f,00231$
      0000DF 80 03            [24]  485 	sjmp	00232$
      0000E1                        486 00231$:
      0000E1 02 01 A2         [24]  487 	ljmp	00115$
      0000E4                        488 00232$:
                                    489 ;	transmitter.c:30: time_delay=15;
      0000E4 75 10 0F         [24]  490 	mov	_time_delay,#0x0f
                                    491 ;	transmitter.c:31: state = 0;
      0000E7 E4               [12]  492 	clr	a
      0000E8 F5 11            [12]  493 	mov	(_time_delay + 1),a
      0000EA F5 08            [12]  494 	mov	_state,a
      0000EC F5 09            [12]  495 	mov	(_state + 1),a
                                    496 ;	transmitter.c:32: button = 'l';
      0000EE 75 12 6C         [24]  497 	mov	_button,#0x6c
                                    498 ;	transmitter.c:33: break;
      0000F1 02 01 A2         [24]  499 	ljmp	00115$
                                    500 ;	transmitter.c:35: case 0x3e:
      0000F4                        501 00102$:
                                    502 ;	transmitter.c:36: Transmit_data('a');
      0000F4 75 82 61         [24]  503 	mov	dpl,#0x61
      0000F7 12 03 85         [24]  504 	lcall	_Transmit_data
                                    505 ;	transmitter.c:37: time_delay=120;
      0000FA 75 10 78         [24]  506 	mov	_time_delay,#0x78
      0000FD 75 11 00         [24]  507 	mov	(_time_delay + 1),#0x00
                                    508 ;	transmitter.c:38: state = 1;
      000100 75 08 01         [24]  509 	mov	_state,#0x01
      000103 75 09 00         [24]  510 	mov	(_state + 1),#0x00
                                    511 ;	transmitter.c:39: button = 'a';
      000106 75 12 61         [24]  512 	mov	_button,#0x61
                                    513 ;	transmitter.c:40: break;
      000109 02 01 A2         [24]  514 	ljmp	00115$
                                    515 ;	transmitter.c:42: case 0x3d:
      00010C                        516 00103$:
                                    517 ;	transmitter.c:43: Transmit_data('b');
      00010C 75 82 62         [24]  518 	mov	dpl,#0x62
      00010F 12 03 85         [24]  519 	lcall	_Transmit_data
                                    520 ;	transmitter.c:44: state = 2;
      000112 75 08 02         [24]  521 	mov	_state,#0x02
      000115 75 09 00         [24]  522 	mov	(_state + 1),#0x00
                                    523 ;	transmitter.c:45: P2 =0x80;
      000118 75 A0 80         [24]  524 	mov	_P2,#0x80
                                    525 ;	transmitter.c:46: button = 'b';
      00011B 75 12 62         [24]  526 	mov	_button,#0x62
                                    527 ;	transmitter.c:47: break;
      00011E 02 01 A2         [24]  528 	ljmp	00115$
                                    529 ;	transmitter.c:49: case 0x3b:
      000121                        530 00104$:
                                    531 ;	transmitter.c:50: if(received)
      000121 E5 0D            [12]  532 	mov	a,_received
      000123 60 11            [24]  533 	jz	00106$
                                    534 ;	transmitter.c:51: {Transmit_data('d');
      000125 75 82 64         [24]  535 	mov	dpl,#0x64
      000128 12 03 85         [24]  536 	lcall	_Transmit_data
                                    537 ;	transmitter.c:52: state = 7;
      00012B 75 08 07         [24]  538 	mov	_state,#0x07
      00012E 75 09 00         [24]  539 	mov	(_state + 1),#0x00
                                    540 ;	transmitter.c:53: button = 'd';
      000131 75 12 64         [24]  541 	mov	_button,#0x64
      000134 80 0F            [24]  542 	sjmp	00107$
      000136                        543 00106$:
                                    544 ;	transmitter.c:56: {Transmit_data('c');
      000136 75 82 63         [24]  545 	mov	dpl,#0x63
      000139 12 03 85         [24]  546 	lcall	_Transmit_data
                                    547 ;	transmitter.c:57: state = 3;
      00013C 75 08 03         [24]  548 	mov	_state,#0x03
      00013F 75 09 00         [24]  549 	mov	(_state + 1),#0x00
                                    550 ;	transmitter.c:58: button = 'c';
      000142 75 12 63         [24]  551 	mov	_button,#0x63
      000145                        552 00107$:
                                    553 ;	transmitter.c:60: time_delay=7;
      000145 75 10 07         [24]  554 	mov	_time_delay,#0x07
      000148 75 11 00         [24]  555 	mov	(_time_delay + 1),#0x00
                                    556 ;	transmitter.c:61: break;
                                    557 ;	transmitter.c:63: case 0x37:
      00014B 80 55            [24]  558 	sjmp	00115$
      00014D                        559 00108$:
                                    560 ;	transmitter.c:64: if(received)
      00014D E5 0D            [12]  561 	mov	a,_received
      00014F 60 11            [24]  562 	jz	00110$
                                    563 ;	transmitter.c:65: {Transmit_data('d');
      000151 75 82 64         [24]  564 	mov	dpl,#0x64
      000154 12 03 85         [24]  565 	lcall	_Transmit_data
                                    566 ;	transmitter.c:66: state = 7;
      000157 75 08 07         [24]  567 	mov	_state,#0x07
      00015A 75 09 00         [24]  568 	mov	(_state + 1),#0x00
                                    569 ;	transmitter.c:67: button = 'd';
      00015D 75 12 64         [24]  570 	mov	_button,#0x64
      000160 80 0F            [24]  571 	sjmp	00111$
      000162                        572 00110$:
                                    573 ;	transmitter.c:70: {Transmit_data('e');
      000162 75 82 65         [24]  574 	mov	dpl,#0x65
      000165 12 03 85         [24]  575 	lcall	_Transmit_data
                                    576 ;	transmitter.c:71: state = 4;
      000168 75 08 04         [24]  577 	mov	_state,#0x04
      00016B 75 09 00         [24]  578 	mov	(_state + 1),#0x00
                                    579 ;	transmitter.c:72: button = 'e';
      00016E 75 12 65         [24]  580 	mov	_button,#0x65
      000171                        581 00111$:
                                    582 ;	transmitter.c:74: time_delay=7;
      000171 75 10 07         [24]  583 	mov	_time_delay,#0x07
      000174 75 11 00         [24]  584 	mov	(_time_delay + 1),#0x00
                                    585 ;	transmitter.c:75: break;
                                    586 ;	transmitter.c:77: case 0x2f:
      000177 80 29            [24]  587 	sjmp	00115$
      000179                        588 00112$:
                                    589 ;	transmitter.c:78: Transmit_data('f');
      000179 75 82 66         [24]  590 	mov	dpl,#0x66
      00017C 12 03 85         [24]  591 	lcall	_Transmit_data
                                    592 ;	transmitter.c:79: state = 5;
      00017F 75 08 05         [24]  593 	mov	_state,#0x05
      000182 75 09 00         [24]  594 	mov	(_state + 1),#0x00
                                    595 ;	transmitter.c:80: P2 =0x20;
      000185 75 A0 20         [24]  596 	mov	_P2,#0x20
                                    597 ;	transmitter.c:81: button = 'f';
      000188 75 12 66         [24]  598 	mov	_button,#0x66
                                    599 ;	transmitter.c:82: break;
                                    600 ;	transmitter.c:84: case 0x1f:
      00018B 80 15            [24]  601 	sjmp	00115$
      00018D                        602 00113$:
                                    603 ;	transmitter.c:85: Transmit_data('g');
      00018D 75 82 67         [24]  604 	mov	dpl,#0x67
      000190 12 03 85         [24]  605 	lcall	_Transmit_data
                                    606 ;	transmitter.c:86: state = 6;
      000193 75 08 06         [24]  607 	mov	_state,#0x06
      000196 75 09 00         [24]  608 	mov	(_state + 1),#0x00
                                    609 ;	transmitter.c:87: button = 'g';
      000199 75 12 67         [24]  610 	mov	_button,#0x67
                                    611 ;	transmitter.c:88: time_delay=120;
      00019C 75 10 78         [24]  612 	mov	_time_delay,#0x78
      00019F 75 11 00         [24]  613 	mov	(_time_delay + 1),#0x00
                                    614 ;	transmitter.c:92: }
      0001A2                        615 00115$:
                                    616 ;	transmitter.c:94: if(timerCount == 60)
      0001A2 74 3C            [12]  617 	mov	a,#0x3c
      0001A4 B5 0E 06         [24]  618 	cjne	a,_timerCount,00235$
      0001A7 E4               [12]  619 	clr	a
      0001A8 B5 0F 02         [24]  620 	cjne	a,(_timerCount + 1),00235$
      0001AB 80 02            [24]  621 	sjmp	00236$
      0001AD                        622 00235$:
      0001AD 80 06            [24]  623 	sjmp	00117$
      0001AF                        624 00236$:
                                    625 ;	transmitter.c:95: Transmit_data(button);
      0001AF 85 12 82         [24]  626 	mov	dpl,_button
      0001B2 12 03 85         [24]  627 	lcall	_Transmit_data
      0001B5                        628 00117$:
                                    629 ;	transmitter.c:97: if(((state_was==2)||(state_was==5))&&(state_was!=state))
      0001B5 74 02            [12]  630 	mov	a,#0x02
      0001B7 B5 0A 06         [24]  631 	cjne	a,_state_was,00237$
      0001BA E4               [12]  632 	clr	a
      0001BB B5 0B 02         [24]  633 	cjne	a,(_state_was + 1),00237$
      0001BE 80 0D            [24]  634 	sjmp	00121$
      0001C0                        635 00237$:
      0001C0 74 05            [12]  636 	mov	a,#0x05
      0001C2 B5 0A 06         [24]  637 	cjne	a,_state_was,00238$
      0001C5 E4               [12]  638 	clr	a
      0001C6 B5 0B 02         [24]  639 	cjne	a,(_state_was + 1),00238$
      0001C9 80 02            [24]  640 	sjmp	00239$
      0001CB                        641 00238$:
      0001CB 80 15            [24]  642 	sjmp	00119$
      0001CD                        643 00239$:
      0001CD                        644 00121$:
      0001CD E5 08            [12]  645 	mov	a,_state
      0001CF B5 0A 07         [24]  646 	cjne	a,_state_was,00240$
      0001D2 E5 09            [12]  647 	mov	a,(_state + 1)
      0001D4 B5 0B 02         [24]  648 	cjne	a,(_state_was + 1),00240$
      0001D7 80 09            [24]  649 	sjmp	00119$
      0001D9                        650 00240$:
                                    651 ;	transmitter.c:98: {state = 8;button='u';}
      0001D9 75 08 08         [24]  652 	mov	_state,#0x08
      0001DC 75 09 00         [24]  653 	mov	(_state + 1),#0x00
      0001DF 75 12 75         [24]  654 	mov	_button,#0x75
      0001E2                        655 00119$:
                                    656 ;	transmitter.c:99: if(timerCount < (time_delay*10)) // count for LED-ON delay
      0001E2 85 10 13         [24]  657 	mov	__mulint_PARM_2,_time_delay
      0001E5 85 11 14         [24]  658 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      0001E8 90 00 0A         [24]  659 	mov	dptr,#0x000a
      0001EB 12 04 0D         [24]  660 	lcall	__mulint
      0001EE AE 82            [24]  661 	mov	r6,dpl
      0001F0 AF 83            [24]  662 	mov	r7,dph
      0001F2 C3               [12]  663 	clr	c
      0001F3 E5 0E            [12]  664 	mov	a,_timerCount
      0001F5 9E               [12]  665 	subb	a,r6
      0001F6 E5 0F            [12]  666 	mov	a,(_timerCount + 1)
      0001F8 64 80            [12]  667 	xrl	a,#0x80
      0001FA 8F F0            [24]  668 	mov	b,r7
      0001FC 63 F0 80         [24]  669 	xrl	b,#0x80
      0001FF 95 F0            [12]  670 	subb	a,b
      000201 40 03            [24]  671 	jc	00241$
      000203 02 02 70         [24]  672 	ljmp	00145$
      000206                        673 00241$:
                                    674 ;	transmitter.c:101: switch(state)
      000206 AE 08            [24]  675 	mov	r6,_state
      000208 E5 09            [12]  676 	mov	a,(_state + 1)
      00020A FF               [12]  677 	mov	r7,a
      00020B 30 E7 03         [24]  678 	jnb	acc.7,00242$
      00020E 02 02 F4         [24]  679 	ljmp	00146$
      000211                        680 00242$:
      000211 C3               [12]  681 	clr	c
      000212 74 08            [12]  682 	mov	a,#0x08
      000214 9E               [12]  683 	subb	a,r6
      000215 74 80            [12]  684 	mov	a,#(0x00 ^ 0x80)
      000217 8F F0            [24]  685 	mov	b,r7
      000219 63 F0 80         [24]  686 	xrl	b,#0x80
      00021C 95 F0            [12]  687 	subb	a,b
      00021E 50 03            [24]  688 	jnc	00243$
      000220 02 02 F4         [24]  689 	ljmp	00146$
      000223                        690 00243$:
      000223 EE               [12]  691 	mov	a,r6
      000224 F5 F0            [12]  692 	mov	b,a
      000226 24 0B            [12]  693 	add	a,#(00244$-3-.)
      000228 83               [24]  694 	movc	a,@a+pc
      000229 F5 82            [12]  695 	mov	dpl,a
      00022B E5 F0            [12]  696 	mov	a,b
      00022D 24 0D            [12]  697 	add	a,#(00245$-3-.)
      00022F 83               [24]  698 	movc	a,@a+pc
      000230 F5 83            [12]  699 	mov	dph,a
      000232 E4               [12]  700 	clr	a
      000233 73               [24]  701 	jmp	@a+dptr
      000234                        702 00244$:
      000234 46                     703 	.db	00122$
      000235 4C                     704 	.db	00123$
      000236 F4                     705 	.db	00146$
      000237 52                     706 	.db	00124$
      000238 58                     707 	.db	00125$
      000239 F4                     708 	.db	00146$
      00023A 5E                     709 	.db	00126$
      00023B 64                     710 	.db	00127$
      00023C 6A                     711 	.db	00128$
      00023D                        712 00245$:
      00023D 02                     713 	.db	00122$>>8
      00023E 02                     714 	.db	00123$>>8
      00023F 02                     715 	.db	00146$>>8
      000240 02                     716 	.db	00124$>>8
      000241 02                     717 	.db	00125$>>8
      000242 02                     718 	.db	00146$>>8
      000243 02                     719 	.db	00126$>>8
      000244 02                     720 	.db	00127$>>8
      000245 02                     721 	.db	00128$>>8
                                    722 ;	transmitter.c:103: case 0:	P2 =0xA0;break;	
      000246                        723 00122$:
      000246 75 A0 A0         [24]  724 	mov	_P2,#0xa0
      000249 02 02 F4         [24]  725 	ljmp	00146$
                                    726 ;	transmitter.c:104: case 1:	P2 =0x80;break;
      00024C                        727 00123$:
      00024C 75 A0 80         [24]  728 	mov	_P2,#0x80
      00024F 02 02 F4         [24]  729 	ljmp	00146$
                                    730 ;	transmitter.c:106: case 3:	P2 =0xc0;break;
      000252                        731 00124$:
      000252 75 A0 C0         [24]  732 	mov	_P2,#0xc0
      000255 02 02 F4         [24]  733 	ljmp	00146$
                                    734 ;	transmitter.c:107: case 4:	P2 =0x60;break;
      000258                        735 00125$:
      000258 75 A0 60         [24]  736 	mov	_P2,#0x60
      00025B 02 02 F4         [24]  737 	ljmp	00146$
                                    738 ;	transmitter.c:109: case 6:	P2 =0x20;break;
      00025E                        739 00126$:
      00025E 75 A0 20         [24]  740 	mov	_P2,#0x20
      000261 02 02 F4         [24]  741 	ljmp	00146$
                                    742 ;	transmitter.c:110: case 7:	P2 =0x40;break;
      000264                        743 00127$:
      000264 75 A0 40         [24]  744 	mov	_P2,#0x40
      000267 02 02 F4         [24]  745 	ljmp	00146$
                                    746 ;	transmitter.c:111: case 8:	P2 =0x80;break;
      00026A                        747 00128$:
      00026A 75 A0 80         [24]  748 	mov	_P2,#0x80
      00026D 02 02 F4         [24]  749 	ljmp	00146$
                                    750 ;	transmitter.c:112: default:break;}
      000270                        751 00145$:
                                    752 ;	transmitter.c:118: else if((timerCount > time_delay) &&(timerCount<time_delay*20)) // count for LED-ON delay
      000270 C3               [12]  753 	clr	c
      000271 E5 10            [12]  754 	mov	a,_time_delay
      000273 95 0E            [12]  755 	subb	a,_timerCount
      000275 E5 11            [12]  756 	mov	a,(_time_delay + 1)
      000277 64 80            [12]  757 	xrl	a,#0x80
      000279 85 0F F0         [24]  758 	mov	b,(_timerCount + 1)
      00027C 63 F0 80         [24]  759 	xrl	b,#0x80
      00027F 95 F0            [12]  760 	subb	a,b
      000281 40 03            [24]  761 	jc	00246$
      000283 02 02 EF         [24]  762 	ljmp	00141$
      000286                        763 00246$:
      000286 85 10 13         [24]  764 	mov	__mulint_PARM_2,_time_delay
      000289 85 11 14         [24]  765 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      00028C 90 00 14         [24]  766 	mov	dptr,#0x0014
      00028F 12 04 0D         [24]  767 	lcall	__mulint
      000292 AE 82            [24]  768 	mov	r6,dpl
      000294 AF 83            [24]  769 	mov	r7,dph
      000296 C3               [12]  770 	clr	c
      000297 E5 0E            [12]  771 	mov	a,_timerCount
      000299 9E               [12]  772 	subb	a,r6
      00029A E5 0F            [12]  773 	mov	a,(_timerCount + 1)
      00029C 64 80            [12]  774 	xrl	a,#0x80
      00029E 8F F0            [24]  775 	mov	b,r7
      0002A0 63 F0 80         [24]  776 	xrl	b,#0x80
      0002A3 95 F0            [12]  777 	subb	a,b
      0002A5 40 03            [24]  778 	jc	00247$
      0002A7 02 02 EF         [24]  779 	ljmp	00141$
      0002AA                        780 00247$:
                                    781 ;	transmitter.c:120: switch(state)
      0002AA AE 08            [24]  782 	mov	r6,_state
      0002AC E5 09            [12]  783 	mov	a,(_state + 1)
      0002AE FF               [12]  784 	mov	r7,a
      0002AF 30 E7 03         [24]  785 	jnb	acc.7,00248$
      0002B2 02 02 F4         [24]  786 	ljmp	00146$
      0002B5                        787 00248$:
      0002B5 C3               [12]  788 	clr	c
      0002B6 74 08            [12]  789 	mov	a,#0x08
      0002B8 9E               [12]  790 	subb	a,r6
      0002B9 74 80            [12]  791 	mov	a,#(0x00 ^ 0x80)
      0002BB 8F F0            [24]  792 	mov	b,r7
      0002BD 63 F0 80         [24]  793 	xrl	b,#0x80
      0002C0 95 F0            [12]  794 	subb	a,b
      0002C2 50 03            [24]  795 	jnc	00249$
      0002C4 02 02 F4         [24]  796 	ljmp	00146$
      0002C7                        797 00249$:
      0002C7 EE               [12]  798 	mov	a,r6
      0002C8 F5 F0            [12]  799 	mov	b,a
      0002CA 24 0B            [12]  800 	add	a,#(00250$-3-.)
      0002CC 83               [24]  801 	movc	a,@a+pc
      0002CD F5 82            [12]  802 	mov	dpl,a
      0002CF E5 F0            [12]  803 	mov	a,b
      0002D1 24 0D            [12]  804 	add	a,#(00251$-3-.)
      0002D3 83               [24]  805 	movc	a,@a+pc
      0002D4 F5 83            [12]  806 	mov	dph,a
      0002D6 E4               [12]  807 	clr	a
      0002D7 73               [24]  808 	jmp	@a+dptr
      0002D8                        809 00250$:
      0002D8 EA                     810 	.db	00137$
      0002D9 EA                     811 	.db	00137$
      0002DA F4                     812 	.db	00146$
      0002DB EA                     813 	.db	00137$
      0002DC EA                     814 	.db	00137$
      0002DD F4                     815 	.db	00146$
      0002DE EA                     816 	.db	00137$
      0002DF EA                     817 	.db	00137$
      0002E0 EA                     818 	.db	00137$
      0002E1                        819 00251$:
      0002E1 02                     820 	.db	00137$>>8
      0002E2 02                     821 	.db	00137$>>8
      0002E3 02                     822 	.db	00146$>>8
      0002E4 02                     823 	.db	00137$>>8
      0002E5 02                     824 	.db	00137$>>8
      0002E6 02                     825 	.db	00146$>>8
      0002E7 02                     826 	.db	00137$>>8
      0002E8 02                     827 	.db	00137$>>8
      0002E9 02                     828 	.db	00137$>>8
                                    829 ;	transmitter.c:128: case 8:P2 =0x00;break;
      0002EA                        830 00137$:
      0002EA 75 A0 00         [24]  831 	mov	_P2,#0x00
                                    832 ;	transmitter.c:131: default:break;}
      0002ED 80 05            [24]  833 	sjmp	00146$
      0002EF                        834 00141$:
                                    835 ;	transmitter.c:135: timerCount = 0;
      0002EF E4               [12]  836 	clr	a
      0002F0 F5 0E            [12]  837 	mov	_timerCount,a
      0002F2 F5 0F            [12]  838 	mov	(_timerCount + 1),a
      0002F4                        839 00146$:
                                    840 ;	transmitter.c:138: state_was=state;
      0002F4 85 08 0A         [24]  841 	mov	_state_was,_state
      0002F7 85 09 0B         [24]  842 	mov	(_state_was + 1),(_state + 1)
                                    843 ;	transmitter.c:139: }
      0002FA D0 D0            [24]  844 	pop	psw
      0002FC D0 00            [24]  845 	pop	(0+0)
      0002FE D0 01            [24]  846 	pop	(0+1)
      000300 D0 02            [24]  847 	pop	(0+2)
      000302 D0 03            [24]  848 	pop	(0+3)
      000304 D0 04            [24]  849 	pop	(0+4)
      000306 D0 05            [24]  850 	pop	(0+5)
      000308 D0 06            [24]  851 	pop	(0+6)
      00030A D0 07            [24]  852 	pop	(0+7)
      00030C D0 83            [24]  853 	pop	dph
      00030E D0 82            [24]  854 	pop	dpl
      000310 D0 F0            [24]  855 	pop	b
      000312 D0 E0            [24]  856 	pop	acc
      000314 D0 20            [24]  857 	pop	bits
      000316 32               [24]  858 	reti
                                    859 ;------------------------------------------------------------
                                    860 ;Allocation info for local variables in function 'main'
                                    861 ;------------------------------------------------------------
                                    862 ;	transmitter.c:141: void main(void)
                                    863 ;	-----------------------------------------
                                    864 ;	 function main
                                    865 ;	-----------------------------------------
      000317                        866 _main:
                                    867 ;	transmitter.c:143: startup();
      000317 12 03 B9         [24]  868 	lcall	_startup
                                    869 ;	transmitter.c:145: UART_Init();
      00031A 12 03 53         [24]  870 	lcall	_UART_Init
                                    871 ;	transmitter.c:146: handshake();
      00031D 12 03 5F         [24]  872 	lcall	_handshake
                                    873 ;	transmitter.c:148: InitTimer1();
      000320 12 03 FF         [24]  874 	lcall	_InitTimer1
                                    875 ;	transmitter.c:150: EA  = 1;         // Global interrupt enable
                                    876 ;	assignBit
      000323 D2 AF            [12]  877 	setb	_EA
                                    878 ;	transmitter.c:152: while(1)
      000325                        879 00102$:
                                    880 ;	transmitter.c:155: check_x();
      000325 12 03 8E         [24]  881 	lcall	_check_x
                                    882 ;	transmitter.c:157: }
      000328 80 FB            [24]  883 	sjmp	00102$
                                    884 ;------------------------------------------------------------
                                    885 ;Allocation info for local variables in function 'delay'
                                    886 ;------------------------------------------------------------
                                    887 ;i                         Allocated to registers r6 r7 
                                    888 ;j                         Allocated to registers r4 r5 
                                    889 ;------------------------------------------------------------
                                    890 ;	transmitter.c:160: void delay(void)
                                    891 ;	-----------------------------------------
                                    892 ;	 function delay
                                    893 ;	-----------------------------------------
      00032A                        894 _delay:
                                    895 ;	transmitter.c:163: for(i=0;i<0x33;i++)
      00032A 7E 00            [12]  896 	mov	r6,#0x00
      00032C 7F 00            [12]  897 	mov	r7,#0x00
      00032E                        898 00106$:
                                    899 ;	transmitter.c:164: for(j=0;j<0xff;j++);
      00032E 7C FF            [12]  900 	mov	r4,#0xff
      000330 7D 00            [12]  901 	mov	r5,#0x00
      000332                        902 00105$:
      000332 EC               [12]  903 	mov	a,r4
      000333 24 FF            [12]  904 	add	a,#0xff
      000335 FA               [12]  905 	mov	r2,a
      000336 ED               [12]  906 	mov	a,r5
      000337 34 FF            [12]  907 	addc	a,#0xff
      000339 FB               [12]  908 	mov	r3,a
      00033A 8A 04            [24]  909 	mov	ar4,r2
      00033C 8B 05            [24]  910 	mov	ar5,r3
      00033E EA               [12]  911 	mov	a,r2
      00033F 4B               [12]  912 	orl	a,r3
      000340 70 F0            [24]  913 	jnz	00105$
                                    914 ;	transmitter.c:163: for(i=0;i<0x33;i++)
      000342 0E               [12]  915 	inc	r6
      000343 BE 00 01         [24]  916 	cjne	r6,#0x00,00124$
      000346 0F               [12]  917 	inc	r7
      000347                        918 00124$:
      000347 C3               [12]  919 	clr	c
      000348 EE               [12]  920 	mov	a,r6
      000349 94 33            [12]  921 	subb	a,#0x33
      00034B EF               [12]  922 	mov	a,r7
      00034C 64 80            [12]  923 	xrl	a,#0x80
      00034E 94 80            [12]  924 	subb	a,#0x80
      000350 40 DC            [24]  925 	jc	00106$
                                    926 ;	transmitter.c:165: }
      000352 22               [24]  927 	ret
                                    928 ;------------------------------------------------------------
                                    929 ;Allocation info for local variables in function 'UART_Init'
                                    930 ;------------------------------------------------------------
                                    931 ;	transmitter.c:168: void UART_Init()
                                    932 ;	-----------------------------------------
                                    933 ;	 function UART_Init
                                    934 ;	-----------------------------------------
      000353                        935 _UART_Init:
                                    936 ;	transmitter.c:170: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      000353 75 89 20         [24]  937 	mov	_TMOD,#0x20
                                    938 ;	transmitter.c:171: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      000356 75 8D FD         [24]  939 	mov	_TH1,#0xfd
                                    940 ;	transmitter.c:172: SCON = 0x50;		/* Mode 1, reception enable */
      000359 75 98 50         [24]  941 	mov	_SCON,#0x50
                                    942 ;	transmitter.c:173: TR1 = 1;		/* Start timer 1 */
                                    943 ;	assignBit
      00035C D2 8E            [12]  944 	setb	_TR1
                                    945 ;	transmitter.c:174: }
      00035E 22               [24]  946 	ret
                                    947 ;------------------------------------------------------------
                                    948 ;Allocation info for local variables in function 'handshake'
                                    949 ;------------------------------------------------------------
                                    950 ;	transmitter.c:177: void handshake()
                                    951 ;	-----------------------------------------
                                    952 ;	 function handshake
                                    953 ;	-----------------------------------------
      00035F                        954 _handshake:
                                    955 ;	transmitter.c:179: start:while(!data_r)
      00035F                        956 00102$:
      00035F E5 0C            [12]  957 	mov	a,_data_r
      000361 70 13            [24]  958 	jnz	00104$
                                    959 ;	transmitter.c:181: data_r=SBUF;
      000363 85 99 0C         [24]  960 	mov	_data_r,_SBUF
                                    961 ;	transmitter.c:182: RI=0;
                                    962 ;	assignBit
      000366 C2 98            [12]  963 	clr	_RI
                                    964 ;	transmitter.c:183: P2 = 0xA0; // Turn ON all LED's connected to Port1
      000368 75 A0 A0         [24]  965 	mov	_P2,#0xa0
                                    966 ;	transmitter.c:184: delay();
      00036B 12 03 2A         [24]  967 	lcall	_delay
                                    968 ;	transmitter.c:185: P2 = 0x00; // Turn OFF all LED's connected to Port1
      00036E 75 A0 00         [24]  969 	mov	_P2,#0x00
                                    970 ;	transmitter.c:186: delay();
      000371 12 03 2A         [24]  971 	lcall	_delay
      000374 80 E9            [24]  972 	sjmp	00102$
      000376                        973 00104$:
                                    974 ;	transmitter.c:189: if(data_r=='x')
      000376 74 78            [12]  975 	mov	a,#0x78
      000378 B5 0C E4         [24]  976 	cjne	a,_data_r,00102$
                                    977 ;	transmitter.c:191: Transmit_data('y');
      00037B 75 82 79         [24]  978 	mov	dpl,#0x79
      00037E 12 03 85         [24]  979 	lcall	_Transmit_data
                                    980 ;	transmitter.c:192: data_r=0;
      000381 75 0C 00         [24]  981 	mov	_data_r,#0x00
                                    982 ;	transmitter.c:195: else goto start;
                                    983 ;	transmitter.c:196: }
      000384 22               [24]  984 	ret
                                    985 ;------------------------------------------------------------
                                    986 ;Allocation info for local variables in function 'Transmit_data'
                                    987 ;------------------------------------------------------------
                                    988 ;tx_data                   Allocated to registers 
                                    989 ;------------------------------------------------------------
                                    990 ;	transmitter.c:199: void Transmit_data(char tx_data)
                                    991 ;	-----------------------------------------
                                    992 ;	 function Transmit_data
                                    993 ;	-----------------------------------------
      000385                        994 _Transmit_data:
      000385 85 82 99         [24]  995 	mov	_SBUF,dpl
                                    996 ;	transmitter.c:202: while (TI==0);		/* Wait until stop bit transmit */
      000388                        997 00101$:
                                    998 ;	transmitter.c:203: TI = 0;			/* Clear TI flag */
                                    999 ;	assignBit
      000388 10 99 02         [24] 1000 	jbc	_TI,00114$
      00038B 80 FB            [24] 1001 	sjmp	00101$
      00038D                       1002 00114$:
                                   1003 ;	transmitter.c:204: }
      00038D 22               [24] 1004 	ret
                                   1005 ;------------------------------------------------------------
                                   1006 ;Allocation info for local variables in function 'check_x'
                                   1007 ;------------------------------------------------------------
                                   1008 ;	transmitter.c:208: void check_x()
                                   1009 ;	-----------------------------------------
                                   1010 ;	 function check_x
                                   1011 ;	-----------------------------------------
      00038E                       1012 _check_x:
                                   1013 ;	transmitter.c:211: TI=0;
                                   1014 ;	assignBit
      00038E C2 99            [12] 1015 	clr	_TI
                                   1016 ;	transmitter.c:212: data_r = SBUF;		/* Load char in SBUF register */
      000390 85 99 0C         [24] 1017 	mov	_data_r,_SBUF
                                   1018 ;	transmitter.c:213: RI = 0;			/* Clear TI flag */
                                   1019 ;	assignBit
      000393 C2 98            [12] 1020 	clr	_RI
                                   1021 ;	transmitter.c:214: if(data_r=='x')
      000395 74 78            [12] 1022 	mov	a,#0x78
      000397 B5 0C 06         [24] 1023 	cjne	a,_data_r,00108$
                                   1024 ;	transmitter.c:215: Transmit_data('y');
      00039A 75 82 79         [24] 1025 	mov	dpl,#0x79
      00039D 02 03 85         [24] 1026 	ljmp	_Transmit_data
      0003A0                       1027 00108$:
                                   1028 ;	transmitter.c:216: else if((data_r=='m')||(data_r=='h'))
      0003A0 74 6D            [12] 1029 	mov	a,#0x6d
      0003A2 B5 0C 02         [24] 1030 	cjne	a,_data_r,00126$
      0003A5 80 05            [24] 1031 	sjmp	00103$
      0003A7                       1032 00126$:
      0003A7 74 68            [12] 1033 	mov	a,#0x68
      0003A9 B5 0C 04         [24] 1034 	cjne	a,_data_r,00104$
      0003AC                       1035 00103$:
                                   1036 ;	transmitter.c:217: received = 0;
      0003AC 75 0D 00         [24] 1037 	mov	_received,#0x00
      0003AF 22               [24] 1038 	ret
      0003B0                       1039 00104$:
                                   1040 ;	transmitter.c:218: else if(data_r=='l')
      0003B0 74 6C            [12] 1041 	mov	a,#0x6c
      0003B2 B5 0C 03         [24] 1042 	cjne	a,_data_r,00110$
                                   1043 ;	transmitter.c:219: received = 1;
      0003B5 75 0D 01         [24] 1044 	mov	_received,#0x01
      0003B8                       1045 00110$:
                                   1046 ;	transmitter.c:220: }
      0003B8 22               [24] 1047 	ret
                                   1048 ;------------------------------------------------------------
                                   1049 ;Allocation info for local variables in function 'startup'
                                   1050 ;------------------------------------------------------------
                                   1051 ;	transmitter.c:223: void startup(void)
                                   1052 ;	-----------------------------------------
                                   1053 ;	 function startup
                                   1054 ;	-----------------------------------------
      0003B9                       1055 _startup:
                                   1056 ;	transmitter.c:225: P1 = 0xff;
      0003B9 75 90 FF         [24] 1057 	mov	_P1,#0xff
                                   1058 ;	transmitter.c:226: P2 = 0x00;
      0003BC 75 A0 00         [24] 1059 	mov	_P2,#0x00
                                   1060 ;	transmitter.c:227: P2 = 0x00;
      0003BF 75 A0 00         [24] 1061 	mov	_P2,#0x00
                                   1062 ;	transmitter.c:228: delay();delay();
      0003C2 12 03 2A         [24] 1063 	lcall	_delay
      0003C5 12 03 2A         [24] 1064 	lcall	_delay
                                   1065 ;	transmitter.c:229: P2 = 0xE0;
      0003C8 75 A0 E0         [24] 1066 	mov	_P2,#0xe0
                                   1067 ;	transmitter.c:230: delay();
      0003CB 12 03 2A         [24] 1068 	lcall	_delay
                                   1069 ;	transmitter.c:231: P2 = 0x80;
      0003CE 75 A0 80         [24] 1070 	mov	_P2,#0x80
                                   1071 ;	transmitter.c:232: delay();delay();delay();delay();
      0003D1 12 03 2A         [24] 1072 	lcall	_delay
      0003D4 12 03 2A         [24] 1073 	lcall	_delay
      0003D7 12 03 2A         [24] 1074 	lcall	_delay
      0003DA 12 03 2A         [24] 1075 	lcall	_delay
                                   1076 ;	transmitter.c:233: P2 = 0x40;
      0003DD 75 A0 40         [24] 1077 	mov	_P2,#0x40
                                   1078 ;	transmitter.c:234: delay();delay();delay();delay();
      0003E0 12 03 2A         [24] 1079 	lcall	_delay
      0003E3 12 03 2A         [24] 1080 	lcall	_delay
      0003E6 12 03 2A         [24] 1081 	lcall	_delay
      0003E9 12 03 2A         [24] 1082 	lcall	_delay
                                   1083 ;	transmitter.c:235: P2 = 0x20;
      0003EC 75 A0 20         [24] 1084 	mov	_P2,#0x20
                                   1085 ;	transmitter.c:236: delay();delay();delay();delay();
      0003EF 12 03 2A         [24] 1086 	lcall	_delay
      0003F2 12 03 2A         [24] 1087 	lcall	_delay
      0003F5 12 03 2A         [24] 1088 	lcall	_delay
      0003F8 12 03 2A         [24] 1089 	lcall	_delay
                                   1090 ;	transmitter.c:237: P2 = 0x00;
      0003FB 75 A0 00         [24] 1091 	mov	_P2,#0x00
                                   1092 ;	transmitter.c:238: }
      0003FE 22               [24] 1093 	ret
                                   1094 ;------------------------------------------------------------
                                   1095 ;Allocation info for local variables in function 'InitTimer1'
                                   1096 ;------------------------------------------------------------
                                   1097 ;	transmitter.c:283: void InitTimer1(void)
                                   1098 ;	-----------------------------------------
                                   1099 ;	 function InitTimer1
                                   1100 ;	-----------------------------------------
      0003FF                       1101 _InitTimer1:
                                   1102 ;	transmitter.c:285: TMOD |= 0x01;    // Set timer0 in mode 1
      0003FF 43 89 01         [24] 1103 	orl	_TMOD,#0x01
                                   1104 ;	transmitter.c:286: TH0 = 0xee;      // 5 msec reloading time
      000402 75 8C EE         [24] 1105 	mov	_TH0,#0xee
                                   1106 ;	transmitter.c:287: TL0 = 0x00;      // First time value
      000405 75 8A 00         [24] 1107 	mov	_TL0,#0x00
                                   1108 ;	transmitter.c:288: TR0 = 1;         // Start Timer 1
                                   1109 ;	assignBit
      000408 D2 8C            [12] 1110 	setb	_TR0
                                   1111 ;	transmitter.c:289: ET0 = 1;         // Enable Timer1 interrupts	
                                   1112 ;	assignBit
      00040A D2 A9            [12] 1113 	setb	_ET0
                                   1114 ;	transmitter.c:290: }
      00040C 22               [24] 1115 	ret
                                   1116 	.area CSEG    (CODE)
                                   1117 	.area CONST   (CODE)
                                   1118 	.area XINIT   (CODE)
                                   1119 	.area CABS    (ABS,CODE)
