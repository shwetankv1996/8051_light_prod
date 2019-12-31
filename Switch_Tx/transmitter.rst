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
      00000E 02 02 E9         [24]  414 	ljmp	_main
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
      0000BB BF 1F 03         [24]  466 	cjne	r7,#0x1f,00251$
      0000BE 02 01 85         [24]  467 	ljmp	00113$
      0000C1                        468 00251$:
      0000C1 BF 2F 03         [24]  469 	cjne	r7,#0x2f,00252$
      0000C4 02 01 71         [24]  470 	ljmp	00112$
      0000C7                        471 00252$:
      0000C7 BF 37 03         [24]  472 	cjne	r7,#0x37,00253$
      0000CA 02 01 45         [24]  473 	ljmp	00108$
      0000CD                        474 00253$:
      0000CD BF 3B 02         [24]  475 	cjne	r7,#0x3b,00254$
      0000D0 80 47            [24]  476 	sjmp	00104$
      0000D2                        477 00254$:
      0000D2 BF 3D 02         [24]  478 	cjne	r7,#0x3d,00255$
      0000D5 80 2D            [24]  479 	sjmp	00103$
      0000D7                        480 00255$:
      0000D7 BF 3E 02         [24]  481 	cjne	r7,#0x3e,00256$
      0000DA 80 10            [24]  482 	sjmp	00102$
      0000DC                        483 00256$:
      0000DC BF 3F 02         [24]  484 	cjne	r7,#0x3f,00257$
      0000DF 80 03            [24]  485 	sjmp	00258$
      0000E1                        486 00257$:
      0000E1 02 01 9A         [24]  487 	ljmp	00115$
      0000E4                        488 00258$:
                                    489 ;	transmitter.c:31: state = 0;
      0000E4 E4               [12]  490 	clr	a
      0000E5 F5 08            [12]  491 	mov	_state,a
      0000E7 F5 09            [12]  492 	mov	(_state + 1),a
                                    493 ;	transmitter.c:33: break;
      0000E9 02 01 9A         [24]  494 	ljmp	00115$
                                    495 ;	transmitter.c:35: case 0x3e:
      0000EC                        496 00102$:
                                    497 ;	transmitter.c:36: Transmit_data('a');
      0000EC 75 82 61         [24]  498 	mov	dpl,#0x61
      0000EF 12 03 80         [24]  499 	lcall	_Transmit_data
                                    500 ;	transmitter.c:37: time_delay=10;
      0000F2 75 10 0A         [24]  501 	mov	_time_delay,#0x0a
      0000F5 75 11 00         [24]  502 	mov	(_time_delay + 1),#0x00
                                    503 ;	transmitter.c:38: state = 1;
      0000F8 75 08 01         [24]  504 	mov	_state,#0x01
      0000FB 75 09 00         [24]  505 	mov	(_state + 1),#0x00
                                    506 ;	transmitter.c:39: button = 'a';
      0000FE 75 12 61         [24]  507 	mov	_button,#0x61
                                    508 ;	transmitter.c:40: break;
      000101 02 01 9A         [24]  509 	ljmp	00115$
                                    510 ;	transmitter.c:42: case 0x3d:
      000104                        511 00103$:
                                    512 ;	transmitter.c:43: Transmit_data('b');
      000104 75 82 62         [24]  513 	mov	dpl,#0x62
      000107 12 03 80         [24]  514 	lcall	_Transmit_data
                                    515 ;	transmitter.c:44: state = 2;
      00010A 75 08 02         [24]  516 	mov	_state,#0x02
      00010D 75 09 00         [24]  517 	mov	(_state + 1),#0x00
                                    518 ;	transmitter.c:45: P2 =0x80;
      000110 75 A0 80         [24]  519 	mov	_P2,#0x80
                                    520 ;	transmitter.c:46: button = 'b';
      000113 75 12 62         [24]  521 	mov	_button,#0x62
                                    522 ;	transmitter.c:47: break;
      000116 02 01 9A         [24]  523 	ljmp	00115$
                                    524 ;	transmitter.c:49: case 0x3b:
      000119                        525 00104$:
                                    526 ;	transmitter.c:50: if(received)
      000119 E5 0D            [12]  527 	mov	a,_received
      00011B 60 11            [24]  528 	jz	00106$
                                    529 ;	transmitter.c:51: {Transmit_data('d');
      00011D 75 82 64         [24]  530 	mov	dpl,#0x64
      000120 12 03 80         [24]  531 	lcall	_Transmit_data
                                    532 ;	transmitter.c:52: state = 7;
      000123 75 08 07         [24]  533 	mov	_state,#0x07
      000126 75 09 00         [24]  534 	mov	(_state + 1),#0x00
                                    535 ;	transmitter.c:53: button = 'd';
      000129 75 12 64         [24]  536 	mov	_button,#0x64
      00012C 80 0F            [24]  537 	sjmp	00107$
      00012E                        538 00106$:
                                    539 ;	transmitter.c:56: {Transmit_data('c');
      00012E 75 82 63         [24]  540 	mov	dpl,#0x63
      000131 12 03 80         [24]  541 	lcall	_Transmit_data
                                    542 ;	transmitter.c:57: state = 3;
      000134 75 08 03         [24]  543 	mov	_state,#0x03
      000137 75 09 00         [24]  544 	mov	(_state + 1),#0x00
                                    545 ;	transmitter.c:58: button = 'c';
      00013A 75 12 63         [24]  546 	mov	_button,#0x63
      00013D                        547 00107$:
                                    548 ;	transmitter.c:60: time_delay=10;
      00013D 75 10 0A         [24]  549 	mov	_time_delay,#0x0a
      000140 75 11 00         [24]  550 	mov	(_time_delay + 1),#0x00
                                    551 ;	transmitter.c:61: break;
                                    552 ;	transmitter.c:63: case 0x37:
      000143 80 55            [24]  553 	sjmp	00115$
      000145                        554 00108$:
                                    555 ;	transmitter.c:64: if(received)
      000145 E5 0D            [12]  556 	mov	a,_received
      000147 60 11            [24]  557 	jz	00110$
                                    558 ;	transmitter.c:65: {Transmit_data('d');
      000149 75 82 64         [24]  559 	mov	dpl,#0x64
      00014C 12 03 80         [24]  560 	lcall	_Transmit_data
                                    561 ;	transmitter.c:66: state = 7;
      00014F 75 08 07         [24]  562 	mov	_state,#0x07
      000152 75 09 00         [24]  563 	mov	(_state + 1),#0x00
                                    564 ;	transmitter.c:67: button = 'd';
      000155 75 12 64         [24]  565 	mov	_button,#0x64
      000158 80 0F            [24]  566 	sjmp	00111$
      00015A                        567 00110$:
                                    568 ;	transmitter.c:70: {Transmit_data('e');
      00015A 75 82 65         [24]  569 	mov	dpl,#0x65
      00015D 12 03 80         [24]  570 	lcall	_Transmit_data
                                    571 ;	transmitter.c:71: state = 4;
      000160 75 08 04         [24]  572 	mov	_state,#0x04
      000163 75 09 00         [24]  573 	mov	(_state + 1),#0x00
                                    574 ;	transmitter.c:72: button = 'e';
      000166 75 12 65         [24]  575 	mov	_button,#0x65
      000169                        576 00111$:
                                    577 ;	transmitter.c:74: time_delay=10;
      000169 75 10 0A         [24]  578 	mov	_time_delay,#0x0a
      00016C 75 11 00         [24]  579 	mov	(_time_delay + 1),#0x00
                                    580 ;	transmitter.c:75: break;
                                    581 ;	transmitter.c:77: case 0x2f:
      00016F 80 29            [24]  582 	sjmp	00115$
      000171                        583 00112$:
                                    584 ;	transmitter.c:78: Transmit_data('f');
      000171 75 82 66         [24]  585 	mov	dpl,#0x66
      000174 12 03 80         [24]  586 	lcall	_Transmit_data
                                    587 ;	transmitter.c:79: state = 5;
      000177 75 08 05         [24]  588 	mov	_state,#0x05
      00017A 75 09 00         [24]  589 	mov	(_state + 1),#0x00
                                    590 ;	transmitter.c:80: P2 =0x20;
      00017D 75 A0 20         [24]  591 	mov	_P2,#0x20
                                    592 ;	transmitter.c:81: button = 'f';
      000180 75 12 66         [24]  593 	mov	_button,#0x66
                                    594 ;	transmitter.c:82: break;
                                    595 ;	transmitter.c:84: case 0x1f:
      000183 80 15            [24]  596 	sjmp	00115$
      000185                        597 00113$:
                                    598 ;	transmitter.c:85: Transmit_data('g');
      000185 75 82 67         [24]  599 	mov	dpl,#0x67
      000188 12 03 80         [24]  600 	lcall	_Transmit_data
                                    601 ;	transmitter.c:86: state = 6;
      00018B 75 08 06         [24]  602 	mov	_state,#0x06
      00018E 75 09 00         [24]  603 	mov	(_state + 1),#0x00
                                    604 ;	transmitter.c:87: button = 'g';
      000191 75 12 67         [24]  605 	mov	_button,#0x67
                                    606 ;	transmitter.c:88: time_delay=10;
      000194 75 10 0A         [24]  607 	mov	_time_delay,#0x0a
      000197 75 11 00         [24]  608 	mov	(_time_delay + 1),#0x00
                                    609 ;	transmitter.c:92: }
      00019A                        610 00115$:
                                    611 ;	transmitter.c:94: if(timerCount == 60)
      00019A 74 3C            [12]  612 	mov	a,#0x3c
      00019C B5 0E 06         [24]  613 	cjne	a,_timerCount,00261$
      00019F E4               [12]  614 	clr	a
      0001A0 B5 0F 02         [24]  615 	cjne	a,(_timerCount + 1),00261$
      0001A3 80 02            [24]  616 	sjmp	00262$
      0001A5                        617 00261$:
      0001A5 80 06            [24]  618 	sjmp	00117$
      0001A7                        619 00262$:
                                    620 ;	transmitter.c:95: Transmit_data(button);
      0001A7 85 12 82         [24]  621 	mov	dpl,_button
      0001AA 12 03 80         [24]  622 	lcall	_Transmit_data
      0001AD                        623 00117$:
                                    624 ;	transmitter.c:97: if(((state_was==2)||(state_was==5))&&(state_was!=state))
      0001AD 74 02            [12]  625 	mov	a,#0x02
      0001AF B5 0A 06         [24]  626 	cjne	a,_state_was,00263$
      0001B2 E4               [12]  627 	clr	a
      0001B3 B5 0B 02         [24]  628 	cjne	a,(_state_was + 1),00263$
      0001B6 80 0D            [24]  629 	sjmp	00121$
      0001B8                        630 00263$:
      0001B8 74 05            [12]  631 	mov	a,#0x05
      0001BA B5 0A 06         [24]  632 	cjne	a,_state_was,00264$
      0001BD E4               [12]  633 	clr	a
      0001BE B5 0B 02         [24]  634 	cjne	a,(_state_was + 1),00264$
      0001C1 80 02            [24]  635 	sjmp	00265$
      0001C3                        636 00264$:
      0001C3 80 15            [24]  637 	sjmp	00119$
      0001C5                        638 00265$:
      0001C5                        639 00121$:
      0001C5 E5 08            [12]  640 	mov	a,_state
      0001C7 B5 0A 07         [24]  641 	cjne	a,_state_was,00266$
      0001CA E5 09            [12]  642 	mov	a,(_state + 1)
      0001CC B5 0B 02         [24]  643 	cjne	a,(_state_was + 1),00266$
      0001CF 80 09            [24]  644 	sjmp	00119$
      0001D1                        645 00266$:
                                    646 ;	transmitter.c:98: {state = 8;button='u';}
      0001D1 75 08 08         [24]  647 	mov	_state,#0x08
      0001D4 75 09 00         [24]  648 	mov	(_state + 1),#0x00
      0001D7 75 12 75         [24]  649 	mov	_button,#0x75
      0001DA                        650 00119$:
                                    651 ;	transmitter.c:99: if(timerCount < (time_delay*10)) // count for LED-ON delay
      0001DA 85 10 13         [24]  652 	mov	__mulint_PARM_2,_time_delay
      0001DD 85 11 14         [24]  653 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      0001E0 90 00 0A         [24]  654 	mov	dptr,#0x000a
      0001E3 12 04 08         [24]  655 	lcall	__mulint
      0001E6 AE 82            [24]  656 	mov	r6,dpl
      0001E8 AF 83            [24]  657 	mov	r7,dph
      0001EA C3               [12]  658 	clr	c
      0001EB E5 0E            [12]  659 	mov	a,_timerCount
      0001ED 9E               [12]  660 	subb	a,r6
      0001EE E5 0F            [12]  661 	mov	a,(_timerCount + 1)
      0001F0 64 80            [12]  662 	xrl	a,#0x80
      0001F2 8F F0            [24]  663 	mov	b,r7
      0001F4 63 F0 80         [24]  664 	xrl	b,#0x80
      0001F7 95 F0            [12]  665 	subb	a,b
      0001F9 50 5B            [24]  666 	jnc	00143$
                                    667 ;	transmitter.c:101: switch(state)
      0001FB AE 08            [24]  668 	mov	r6,_state
      0001FD AF 09            [24]  669 	mov	r7,(_state + 1)
      0001FF BE 01 05         [24]  670 	cjne	r6,#0x01,00268$
      000202 BF 00 02         [24]  671 	cjne	r7,#0x00,00268$
      000205 80 2B            [24]  672 	sjmp	00122$
      000207                        673 00268$:
      000207 BE 03 05         [24]  674 	cjne	r6,#0x03,00269$
      00020A BF 00 02         [24]  675 	cjne	r7,#0x00,00269$
      00020D 80 29            [24]  676 	sjmp	00123$
      00020F                        677 00269$:
      00020F BE 04 05         [24]  678 	cjne	r6,#0x04,00270$
      000212 BF 00 02         [24]  679 	cjne	r7,#0x00,00270$
      000215 80 27            [24]  680 	sjmp	00124$
      000217                        681 00270$:
      000217 BE 06 05         [24]  682 	cjne	r6,#0x06,00271$
      00021A BF 00 02         [24]  683 	cjne	r7,#0x00,00271$
      00021D 80 25            [24]  684 	sjmp	00125$
      00021F                        685 00271$:
      00021F BE 07 05         [24]  686 	cjne	r6,#0x07,00272$
      000222 BF 00 02         [24]  687 	cjne	r7,#0x00,00272$
      000225 80 23            [24]  688 	sjmp	00126$
      000227                        689 00272$:
      000227 BE 08 05         [24]  690 	cjne	r6,#0x08,00273$
      00022A BF 00 02         [24]  691 	cjne	r7,#0x00,00273$
      00022D 80 21            [24]  692 	sjmp	00127$
      00022F                        693 00273$:
      00022F 02 02 C6         [24]  694 	ljmp	00144$
                                    695 ;	transmitter.c:104: case 1:	P2 =0x80;break;
      000232                        696 00122$:
      000232 75 A0 80         [24]  697 	mov	_P2,#0x80
      000235 02 02 C6         [24]  698 	ljmp	00144$
                                    699 ;	transmitter.c:106: case 3:	P2 =0xc0;break;
      000238                        700 00123$:
      000238 75 A0 C0         [24]  701 	mov	_P2,#0xc0
      00023B 02 02 C6         [24]  702 	ljmp	00144$
                                    703 ;	transmitter.c:107: case 4:	P2 =0x60;break;
      00023E                        704 00124$:
      00023E 75 A0 60         [24]  705 	mov	_P2,#0x60
      000241 02 02 C6         [24]  706 	ljmp	00144$
                                    707 ;	transmitter.c:109: case 6:	P2 =0x20;break;
      000244                        708 00125$:
      000244 75 A0 20         [24]  709 	mov	_P2,#0x20
      000247 02 02 C6         [24]  710 	ljmp	00144$
                                    711 ;	transmitter.c:110: case 7:	P2 =0x40;break;
      00024A                        712 00126$:
      00024A 75 A0 40         [24]  713 	mov	_P2,#0x40
      00024D 02 02 C6         [24]  714 	ljmp	00144$
                                    715 ;	transmitter.c:111: case 8:	P2 =0x80;break;
      000250                        716 00127$:
      000250 75 A0 80         [24]  717 	mov	_P2,#0x80
      000253 02 02 C6         [24]  718 	ljmp	00144$
                                    719 ;	transmitter.c:112: default:break;}
      000256                        720 00143$:
                                    721 ;	transmitter.c:116: else if((timerCount > time_delay) &&(timerCount<time_delay*20)) // count for LED-ON delay
      000256 C3               [12]  722 	clr	c
      000257 E5 10            [12]  723 	mov	a,_time_delay
      000259 95 0E            [12]  724 	subb	a,_timerCount
      00025B E5 11            [12]  725 	mov	a,(_time_delay + 1)
      00025D 64 80            [12]  726 	xrl	a,#0x80
      00025F 85 0F F0         [24]  727 	mov	b,(_timerCount + 1)
      000262 63 F0 80         [24]  728 	xrl	b,#0x80
      000265 95 F0            [12]  729 	subb	a,b
      000267 50 58            [24]  730 	jnc	00139$
      000269 85 10 13         [24]  731 	mov	__mulint_PARM_2,_time_delay
      00026C 85 11 14         [24]  732 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      00026F 90 00 14         [24]  733 	mov	dptr,#0x0014
      000272 12 04 08         [24]  734 	lcall	__mulint
      000275 AE 82            [24]  735 	mov	r6,dpl
      000277 AF 83            [24]  736 	mov	r7,dph
      000279 C3               [12]  737 	clr	c
      00027A E5 0E            [12]  738 	mov	a,_timerCount
      00027C 9E               [12]  739 	subb	a,r6
      00027D E5 0F            [12]  740 	mov	a,(_timerCount + 1)
      00027F 64 80            [12]  741 	xrl	a,#0x80
      000281 8F F0            [24]  742 	mov	b,r7
      000283 63 F0 80         [24]  743 	xrl	b,#0x80
      000286 95 F0            [12]  744 	subb	a,b
      000288 50 37            [24]  745 	jnc	00139$
                                    746 ;	transmitter.c:118: switch(state)
      00028A AE 08            [24]  747 	mov	r6,_state
      00028C AF 09            [24]  748 	mov	r7,(_state + 1)
      00028E BE 01 05         [24]  749 	cjne	r6,#0x01,00276$
      000291 BF 00 02         [24]  750 	cjne	r7,#0x00,00276$
      000294 80 26            [24]  751 	sjmp	00135$
      000296                        752 00276$:
      000296 BE 03 05         [24]  753 	cjne	r6,#0x03,00277$
      000299 BF 00 02         [24]  754 	cjne	r7,#0x00,00277$
      00029C 80 1E            [24]  755 	sjmp	00135$
      00029E                        756 00277$:
      00029E BE 04 05         [24]  757 	cjne	r6,#0x04,00278$
      0002A1 BF 00 02         [24]  758 	cjne	r7,#0x00,00278$
      0002A4 80 16            [24]  759 	sjmp	00135$
      0002A6                        760 00278$:
      0002A6 BE 06 05         [24]  761 	cjne	r6,#0x06,00279$
      0002A9 BF 00 02         [24]  762 	cjne	r7,#0x00,00279$
      0002AC 80 0E            [24]  763 	sjmp	00135$
      0002AE                        764 00279$:
      0002AE BE 07 05         [24]  765 	cjne	r6,#0x07,00280$
      0002B1 BF 00 02         [24]  766 	cjne	r7,#0x00,00280$
      0002B4 80 06            [24]  767 	sjmp	00135$
      0002B6                        768 00280$:
      0002B6 BE 08 0D         [24]  769 	cjne	r6,#0x08,00144$
      0002B9 BF 00 0A         [24]  770 	cjne	r7,#0x00,00144$
                                    771 ;	transmitter.c:126: case 8:P2 =0x00;break;
      0002BC                        772 00135$:
      0002BC 75 A0 00         [24]  773 	mov	_P2,#0x00
                                    774 ;	transmitter.c:129: default:break;}
      0002BF 80 05            [24]  775 	sjmp	00144$
      0002C1                        776 00139$:
                                    777 ;	transmitter.c:133: timerCount = 0;
      0002C1 E4               [12]  778 	clr	a
      0002C2 F5 0E            [12]  779 	mov	_timerCount,a
      0002C4 F5 0F            [12]  780 	mov	(_timerCount + 1),a
      0002C6                        781 00144$:
                                    782 ;	transmitter.c:136: state_was=state;
      0002C6 85 08 0A         [24]  783 	mov	_state_was,_state
      0002C9 85 09 0B         [24]  784 	mov	(_state_was + 1),(_state + 1)
                                    785 ;	transmitter.c:137: }
      0002CC D0 D0            [24]  786 	pop	psw
      0002CE D0 00            [24]  787 	pop	(0+0)
      0002D0 D0 01            [24]  788 	pop	(0+1)
      0002D2 D0 02            [24]  789 	pop	(0+2)
      0002D4 D0 03            [24]  790 	pop	(0+3)
      0002D6 D0 04            [24]  791 	pop	(0+4)
      0002D8 D0 05            [24]  792 	pop	(0+5)
      0002DA D0 06            [24]  793 	pop	(0+6)
      0002DC D0 07            [24]  794 	pop	(0+7)
      0002DE D0 83            [24]  795 	pop	dph
      0002E0 D0 82            [24]  796 	pop	dpl
      0002E2 D0 F0            [24]  797 	pop	b
      0002E4 D0 E0            [24]  798 	pop	acc
      0002E6 D0 20            [24]  799 	pop	bits
      0002E8 32               [24]  800 	reti
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function 'main'
                                    803 ;------------------------------------------------------------
                                    804 ;	transmitter.c:139: void main(void)
                                    805 ;	-----------------------------------------
                                    806 ;	 function main
                                    807 ;	-----------------------------------------
      0002E9                        808 _main:
                                    809 ;	transmitter.c:141: startup();
      0002E9 12 03 B4         [24]  810 	lcall	_startup
                                    811 ;	transmitter.c:143: UART_Init();
      0002EC 12 03 4E         [24]  812 	lcall	_UART_Init
                                    813 ;	transmitter.c:144: handshake();
      0002EF 12 03 5A         [24]  814 	lcall	_handshake
                                    815 ;	transmitter.c:146: InitTimer1();
      0002F2 12 03 FA         [24]  816 	lcall	_InitTimer1
                                    817 ;	transmitter.c:148: EA  = 1;         // Global interrupt enable
                                    818 ;	assignBit
      0002F5 D2 AF            [12]  819 	setb	_EA
                                    820 ;	transmitter.c:150: while(1)
      0002F7                        821 00105$:
                                    822 ;	transmitter.c:152: if(state)
      0002F7 E5 08            [12]  823 	mov	a,_state
      0002F9 45 09            [12]  824 	orl	a,(_state + 1)
      0002FB 60 05            [24]  825 	jz	00102$
                                    826 ;	transmitter.c:153: delay();
      0002FD 12 03 25         [24]  827 	lcall	_delay
      000300 80 1E            [24]  828 	sjmp	00103$
      000302                        829 00102$:
                                    830 ;	transmitter.c:156: button = 'l';
      000302 75 12 6C         [24]  831 	mov	_button,#0x6c
                                    832 ;	transmitter.c:157: delay();
      000305 12 03 25         [24]  833 	lcall	_delay
                                    834 ;	transmitter.c:158: P2=0x00;
      000308 75 A0 00         [24]  835 	mov	_P2,#0x00
                                    836 ;	transmitter.c:159: delay();
      00030B 12 03 25         [24]  837 	lcall	_delay
                                    838 ;	transmitter.c:160: delay();
      00030E 12 03 25         [24]  839 	lcall	_delay
                                    840 ;	transmitter.c:161: delay();
      000311 12 03 25         [24]  841 	lcall	_delay
                                    842 ;	transmitter.c:162: P2=0xA0;
      000314 75 A0 A0         [24]  843 	mov	_P2,#0xa0
                                    844 ;	transmitter.c:163: delay();
      000317 12 03 25         [24]  845 	lcall	_delay
                                    846 ;	transmitter.c:164: delay();
      00031A 12 03 25         [24]  847 	lcall	_delay
                                    848 ;	transmitter.c:165: delay();
      00031D 12 03 25         [24]  849 	lcall	_delay
      000320                        850 00103$:
                                    851 ;	transmitter.c:167: check_x();
      000320 12 03 89         [24]  852 	lcall	_check_x
                                    853 ;	transmitter.c:169: }
      000323 80 D2            [24]  854 	sjmp	00105$
                                    855 ;------------------------------------------------------------
                                    856 ;Allocation info for local variables in function 'delay'
                                    857 ;------------------------------------------------------------
                                    858 ;i                         Allocated to registers r6 r7 
                                    859 ;j                         Allocated to registers r4 r5 
                                    860 ;------------------------------------------------------------
                                    861 ;	transmitter.c:172: void delay(void)
                                    862 ;	-----------------------------------------
                                    863 ;	 function delay
                                    864 ;	-----------------------------------------
      000325                        865 _delay:
                                    866 ;	transmitter.c:175: for(i=0;i<0x33;i++)
      000325 7E 00            [12]  867 	mov	r6,#0x00
      000327 7F 00            [12]  868 	mov	r7,#0x00
      000329                        869 00106$:
                                    870 ;	transmitter.c:176: for(j=0;j<0xff;j++);
      000329 7C FF            [12]  871 	mov	r4,#0xff
      00032B 7D 00            [12]  872 	mov	r5,#0x00
      00032D                        873 00105$:
      00032D EC               [12]  874 	mov	a,r4
      00032E 24 FF            [12]  875 	add	a,#0xff
      000330 FA               [12]  876 	mov	r2,a
      000331 ED               [12]  877 	mov	a,r5
      000332 34 FF            [12]  878 	addc	a,#0xff
      000334 FB               [12]  879 	mov	r3,a
      000335 8A 04            [24]  880 	mov	ar4,r2
      000337 8B 05            [24]  881 	mov	ar5,r3
      000339 EA               [12]  882 	mov	a,r2
      00033A 4B               [12]  883 	orl	a,r3
      00033B 70 F0            [24]  884 	jnz	00105$
                                    885 ;	transmitter.c:175: for(i=0;i<0x33;i++)
      00033D 0E               [12]  886 	inc	r6
      00033E BE 00 01         [24]  887 	cjne	r6,#0x00,00124$
      000341 0F               [12]  888 	inc	r7
      000342                        889 00124$:
      000342 C3               [12]  890 	clr	c
      000343 EE               [12]  891 	mov	a,r6
      000344 94 33            [12]  892 	subb	a,#0x33
      000346 EF               [12]  893 	mov	a,r7
      000347 64 80            [12]  894 	xrl	a,#0x80
      000349 94 80            [12]  895 	subb	a,#0x80
      00034B 40 DC            [24]  896 	jc	00106$
                                    897 ;	transmitter.c:177: }
      00034D 22               [24]  898 	ret
                                    899 ;------------------------------------------------------------
                                    900 ;Allocation info for local variables in function 'UART_Init'
                                    901 ;------------------------------------------------------------
                                    902 ;	transmitter.c:180: void UART_Init()
                                    903 ;	-----------------------------------------
                                    904 ;	 function UART_Init
                                    905 ;	-----------------------------------------
      00034E                        906 _UART_Init:
                                    907 ;	transmitter.c:182: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      00034E 75 89 20         [24]  908 	mov	_TMOD,#0x20
                                    909 ;	transmitter.c:183: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      000351 75 8D FD         [24]  910 	mov	_TH1,#0xfd
                                    911 ;	transmitter.c:184: SCON = 0x50;		/* Mode 1, reception enable */
      000354 75 98 50         [24]  912 	mov	_SCON,#0x50
                                    913 ;	transmitter.c:185: TR1 = 1;		/* Start timer 1 */
                                    914 ;	assignBit
      000357 D2 8E            [12]  915 	setb	_TR1
                                    916 ;	transmitter.c:186: }
      000359 22               [24]  917 	ret
                                    918 ;------------------------------------------------------------
                                    919 ;Allocation info for local variables in function 'handshake'
                                    920 ;------------------------------------------------------------
                                    921 ;	transmitter.c:189: void handshake()
                                    922 ;	-----------------------------------------
                                    923 ;	 function handshake
                                    924 ;	-----------------------------------------
      00035A                        925 _handshake:
                                    926 ;	transmitter.c:191: start:while(!data_r)
      00035A                        927 00102$:
      00035A E5 0C            [12]  928 	mov	a,_data_r
      00035C 70 13            [24]  929 	jnz	00104$
                                    930 ;	transmitter.c:193: data_r=SBUF;
      00035E 85 99 0C         [24]  931 	mov	_data_r,_SBUF
                                    932 ;	transmitter.c:194: RI=0;
                                    933 ;	assignBit
      000361 C2 98            [12]  934 	clr	_RI
                                    935 ;	transmitter.c:195: P2 = 0xA0; // Turn ON all LED's connected to Port1
      000363 75 A0 A0         [24]  936 	mov	_P2,#0xa0
                                    937 ;	transmitter.c:196: delay();
      000366 12 03 25         [24]  938 	lcall	_delay
                                    939 ;	transmitter.c:197: P2 = 0x00; // Turn OFF all LED's connected to Port1
      000369 75 A0 00         [24]  940 	mov	_P2,#0x00
                                    941 ;	transmitter.c:198: delay();
      00036C 12 03 25         [24]  942 	lcall	_delay
      00036F 80 E9            [24]  943 	sjmp	00102$
      000371                        944 00104$:
                                    945 ;	transmitter.c:201: if(data_r=='x')
      000371 74 78            [12]  946 	mov	a,#0x78
      000373 B5 0C E4         [24]  947 	cjne	a,_data_r,00102$
                                    948 ;	transmitter.c:203: Transmit_data('y');
      000376 75 82 79         [24]  949 	mov	dpl,#0x79
      000379 12 03 80         [24]  950 	lcall	_Transmit_data
                                    951 ;	transmitter.c:204: data_r=0;
      00037C 75 0C 00         [24]  952 	mov	_data_r,#0x00
                                    953 ;	transmitter.c:207: else goto start;
                                    954 ;	transmitter.c:208: }
      00037F 22               [24]  955 	ret
                                    956 ;------------------------------------------------------------
                                    957 ;Allocation info for local variables in function 'Transmit_data'
                                    958 ;------------------------------------------------------------
                                    959 ;tx_data                   Allocated to registers 
                                    960 ;------------------------------------------------------------
                                    961 ;	transmitter.c:211: void Transmit_data(char tx_data)
                                    962 ;	-----------------------------------------
                                    963 ;	 function Transmit_data
                                    964 ;	-----------------------------------------
      000380                        965 _Transmit_data:
      000380 85 82 99         [24]  966 	mov	_SBUF,dpl
                                    967 ;	transmitter.c:214: while (TI==0);		/* Wait until stop bit transmit */
      000383                        968 00101$:
                                    969 ;	transmitter.c:215: TI = 0;			/* Clear TI flag */
                                    970 ;	assignBit
      000383 10 99 02         [24]  971 	jbc	_TI,00114$
      000386 80 FB            [24]  972 	sjmp	00101$
      000388                        973 00114$:
                                    974 ;	transmitter.c:216: }
      000388 22               [24]  975 	ret
                                    976 ;------------------------------------------------------------
                                    977 ;Allocation info for local variables in function 'check_x'
                                    978 ;------------------------------------------------------------
                                    979 ;	transmitter.c:220: void check_x()
                                    980 ;	-----------------------------------------
                                    981 ;	 function check_x
                                    982 ;	-----------------------------------------
      000389                        983 _check_x:
                                    984 ;	transmitter.c:223: TI=0;
                                    985 ;	assignBit
      000389 C2 99            [12]  986 	clr	_TI
                                    987 ;	transmitter.c:224: data_r = SBUF;		/* Load char in SBUF register */
      00038B 85 99 0C         [24]  988 	mov	_data_r,_SBUF
                                    989 ;	transmitter.c:225: RI = 0;			/* Clear TI flag */
                                    990 ;	assignBit
      00038E C2 98            [12]  991 	clr	_RI
                                    992 ;	transmitter.c:226: if(data_r=='x')
      000390 74 78            [12]  993 	mov	a,#0x78
      000392 B5 0C 06         [24]  994 	cjne	a,_data_r,00108$
                                    995 ;	transmitter.c:227: Transmit_data('y');
      000395 75 82 79         [24]  996 	mov	dpl,#0x79
      000398 02 03 80         [24]  997 	ljmp	_Transmit_data
      00039B                        998 00108$:
                                    999 ;	transmitter.c:228: else if((data_r=='m')||(data_r=='h'))
      00039B 74 6D            [12] 1000 	mov	a,#0x6d
      00039D B5 0C 02         [24] 1001 	cjne	a,_data_r,00126$
      0003A0 80 05            [24] 1002 	sjmp	00103$
      0003A2                       1003 00126$:
      0003A2 74 68            [12] 1004 	mov	a,#0x68
      0003A4 B5 0C 04         [24] 1005 	cjne	a,_data_r,00104$
      0003A7                       1006 00103$:
                                   1007 ;	transmitter.c:229: received = 0;
      0003A7 75 0D 00         [24] 1008 	mov	_received,#0x00
      0003AA 22               [24] 1009 	ret
      0003AB                       1010 00104$:
                                   1011 ;	transmitter.c:230: else if(data_r=='l')
      0003AB 74 6C            [12] 1012 	mov	a,#0x6c
      0003AD B5 0C 03         [24] 1013 	cjne	a,_data_r,00110$
                                   1014 ;	transmitter.c:231: received = 1;
      0003B0 75 0D 01         [24] 1015 	mov	_received,#0x01
      0003B3                       1016 00110$:
                                   1017 ;	transmitter.c:232: }
      0003B3 22               [24] 1018 	ret
                                   1019 ;------------------------------------------------------------
                                   1020 ;Allocation info for local variables in function 'startup'
                                   1021 ;------------------------------------------------------------
                                   1022 ;	transmitter.c:235: void startup(void)
                                   1023 ;	-----------------------------------------
                                   1024 ;	 function startup
                                   1025 ;	-----------------------------------------
      0003B4                       1026 _startup:
                                   1027 ;	transmitter.c:237: P1 = 0xff;
      0003B4 75 90 FF         [24] 1028 	mov	_P1,#0xff
                                   1029 ;	transmitter.c:238: P2 = 0x00;
      0003B7 75 A0 00         [24] 1030 	mov	_P2,#0x00
                                   1031 ;	transmitter.c:239: P2 = 0x00;
      0003BA 75 A0 00         [24] 1032 	mov	_P2,#0x00
                                   1033 ;	transmitter.c:240: delay();delay();
      0003BD 12 03 25         [24] 1034 	lcall	_delay
      0003C0 12 03 25         [24] 1035 	lcall	_delay
                                   1036 ;	transmitter.c:241: P2 = 0xE0;
      0003C3 75 A0 E0         [24] 1037 	mov	_P2,#0xe0
                                   1038 ;	transmitter.c:242: delay();
      0003C6 12 03 25         [24] 1039 	lcall	_delay
                                   1040 ;	transmitter.c:243: P2 = 0x80;
      0003C9 75 A0 80         [24] 1041 	mov	_P2,#0x80
                                   1042 ;	transmitter.c:244: delay();delay();delay();delay();
      0003CC 12 03 25         [24] 1043 	lcall	_delay
      0003CF 12 03 25         [24] 1044 	lcall	_delay
      0003D2 12 03 25         [24] 1045 	lcall	_delay
      0003D5 12 03 25         [24] 1046 	lcall	_delay
                                   1047 ;	transmitter.c:245: P2 = 0x40;
      0003D8 75 A0 40         [24] 1048 	mov	_P2,#0x40
                                   1049 ;	transmitter.c:246: delay();delay();delay();delay();
      0003DB 12 03 25         [24] 1050 	lcall	_delay
      0003DE 12 03 25         [24] 1051 	lcall	_delay
      0003E1 12 03 25         [24] 1052 	lcall	_delay
      0003E4 12 03 25         [24] 1053 	lcall	_delay
                                   1054 ;	transmitter.c:247: P2 = 0x20;
      0003E7 75 A0 20         [24] 1055 	mov	_P2,#0x20
                                   1056 ;	transmitter.c:248: delay();delay();delay();delay();
      0003EA 12 03 25         [24] 1057 	lcall	_delay
      0003ED 12 03 25         [24] 1058 	lcall	_delay
      0003F0 12 03 25         [24] 1059 	lcall	_delay
      0003F3 12 03 25         [24] 1060 	lcall	_delay
                                   1061 ;	transmitter.c:249: P2 = 0x00;
      0003F6 75 A0 00         [24] 1062 	mov	_P2,#0x00
                                   1063 ;	transmitter.c:250: }
      0003F9 22               [24] 1064 	ret
                                   1065 ;------------------------------------------------------------
                                   1066 ;Allocation info for local variables in function 'InitTimer1'
                                   1067 ;------------------------------------------------------------
                                   1068 ;	transmitter.c:254: void InitTimer1(void)
                                   1069 ;	-----------------------------------------
                                   1070 ;	 function InitTimer1
                                   1071 ;	-----------------------------------------
      0003FA                       1072 _InitTimer1:
                                   1073 ;	transmitter.c:256: TMOD |= 0x01;    // Set timer0 in mode 1
      0003FA 43 89 01         [24] 1074 	orl	_TMOD,#0x01
                                   1075 ;	transmitter.c:257: TH0 = 0xee;      // 5 msec reloading time
      0003FD 75 8C EE         [24] 1076 	mov	_TH0,#0xee
                                   1077 ;	transmitter.c:258: TL0 = 0x00;      // First time value
      000400 75 8A 00         [24] 1078 	mov	_TL0,#0x00
                                   1079 ;	transmitter.c:259: TR0 = 1;         // Start Timer 1
                                   1080 ;	assignBit
      000403 D2 8C            [12] 1081 	setb	_TR0
                                   1082 ;	transmitter.c:260: ET0 = 1;         // Enable Timer1 interrupts	
                                   1083 ;	assignBit
      000405 D2 A9            [12] 1084 	setb	_ET0
                                   1085 ;	transmitter.c:261: }
      000407 22               [24] 1086 	ret
                                   1087 	.area CSEG    (CODE)
                                   1088 	.area CONST   (CODE)
                                   1089 	.area XINIT   (CODE)
                                   1090 	.area CABS    (ABS,CODE)
