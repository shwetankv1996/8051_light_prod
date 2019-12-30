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
                                    137 	.globl _state
                                    138 	.globl _delay
                                    139 	.globl _UART_Init
                                    140 	.globl _Transmit_data
                                    141 	.globl _check_x
                                    142 	.globl _startup
                                    143 	.globl _touch
                                    144 	.globl _InitTimer1
                                    145 ;--------------------------------------------------------
                                    146 ; special function registers
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0	=	0x0080
                           000081   151 _SP	=	0x0081
                           000082   152 _DPL	=	0x0082
                           000083   153 _DPH	=	0x0083
                           000087   154 _PCON	=	0x0087
                           000088   155 _TCON	=	0x0088
                           000089   156 _TMOD	=	0x0089
                           00008A   157 _TL0	=	0x008a
                           00008B   158 _TL1	=	0x008b
                           00008C   159 _TH0	=	0x008c
                           00008D   160 _TH1	=	0x008d
                           000090   161 _P1	=	0x0090
                           000098   162 _SCON	=	0x0098
                           000099   163 _SBUF	=	0x0099
                           0000A0   164 _P2	=	0x00a0
                           0000A8   165 _IE	=	0x00a8
                           0000B0   166 _P3	=	0x00b0
                           0000B8   167 _IP	=	0x00b8
                           0000D0   168 _PSW	=	0x00d0
                           0000E0   169 _ACC	=	0x00e0
                           0000F0   170 _B	=	0x00f0
                           0000C8   171 _T2CON	=	0x00c8
                           0000CA   172 _RCAP2L	=	0x00ca
                           0000CB   173 _RCAP2H	=	0x00cb
                           0000CC   174 _TL2	=	0x00cc
                           0000CD   175 _TH2	=	0x00cd
                                    176 ;--------------------------------------------------------
                                    177 ; special function bits
                                    178 ;--------------------------------------------------------
                                    179 	.area RSEG    (ABS,DATA)
      000000                        180 	.org 0x0000
                           000080   181 _P0_0	=	0x0080
                           000081   182 _P0_1	=	0x0081
                           000082   183 _P0_2	=	0x0082
                           000083   184 _P0_3	=	0x0083
                           000084   185 _P0_4	=	0x0084
                           000085   186 _P0_5	=	0x0085
                           000086   187 _P0_6	=	0x0086
                           000087   188 _P0_7	=	0x0087
                           000088   189 _IT0	=	0x0088
                           000089   190 _IE0	=	0x0089
                           00008A   191 _IT1	=	0x008a
                           00008B   192 _IE1	=	0x008b
                           00008C   193 _TR0	=	0x008c
                           00008D   194 _TF0	=	0x008d
                           00008E   195 _TR1	=	0x008e
                           00008F   196 _TF1	=	0x008f
                           000090   197 _P1_0	=	0x0090
                           000091   198 _P1_1	=	0x0091
                           000092   199 _P1_2	=	0x0092
                           000093   200 _P1_3	=	0x0093
                           000094   201 _P1_4	=	0x0094
                           000095   202 _P1_5	=	0x0095
                           000096   203 _P1_6	=	0x0096
                           000097   204 _P1_7	=	0x0097
                           000098   205 _RI	=	0x0098
                           000099   206 _TI	=	0x0099
                           00009A   207 _RB8	=	0x009a
                           00009B   208 _TB8	=	0x009b
                           00009C   209 _REN	=	0x009c
                           00009D   210 _SM2	=	0x009d
                           00009E   211 _SM1	=	0x009e
                           00009F   212 _SM0	=	0x009f
                           0000A0   213 _P2_0	=	0x00a0
                           0000A1   214 _P2_1	=	0x00a1
                           0000A2   215 _P2_2	=	0x00a2
                           0000A3   216 _P2_3	=	0x00a3
                           0000A4   217 _P2_4	=	0x00a4
                           0000A5   218 _P2_5	=	0x00a5
                           0000A6   219 _P2_6	=	0x00a6
                           0000A7   220 _P2_7	=	0x00a7
                           0000A8   221 _EX0	=	0x00a8
                           0000A9   222 _ET0	=	0x00a9
                           0000AA   223 _EX1	=	0x00aa
                           0000AB   224 _ET1	=	0x00ab
                           0000AC   225 _ES	=	0x00ac
                           0000AF   226 _EA	=	0x00af
                           0000B0   227 _P3_0	=	0x00b0
                           0000B1   228 _P3_1	=	0x00b1
                           0000B2   229 _P3_2	=	0x00b2
                           0000B3   230 _P3_3	=	0x00b3
                           0000B4   231 _P3_4	=	0x00b4
                           0000B5   232 _P3_5	=	0x00b5
                           0000B6   233 _P3_6	=	0x00b6
                           0000B7   234 _P3_7	=	0x00b7
                           0000B0   235 _RXD	=	0x00b0
                           0000B1   236 _TXD	=	0x00b1
                           0000B2   237 _INT0	=	0x00b2
                           0000B3   238 _INT1	=	0x00b3
                           0000B4   239 _T0	=	0x00b4
                           0000B5   240 _T1	=	0x00b5
                           0000B6   241 _WR	=	0x00b6
                           0000B7   242 _RD	=	0x00b7
                           0000B8   243 _PX0	=	0x00b8
                           0000B9   244 _PT0	=	0x00b9
                           0000BA   245 _PX1	=	0x00ba
                           0000BB   246 _PT1	=	0x00bb
                           0000BC   247 _PS	=	0x00bc
                           0000D0   248 _P	=	0x00d0
                           0000D1   249 _F1	=	0x00d1
                           0000D2   250 _OV	=	0x00d2
                           0000D3   251 _RS0	=	0x00d3
                           0000D4   252 _RS1	=	0x00d4
                           0000D5   253 _F0	=	0x00d5
                           0000D6   254 _AC	=	0x00d6
                           0000D7   255 _CY	=	0x00d7
                           0000AD   256 _ET2	=	0x00ad
                           0000BD   257 _PT2	=	0x00bd
                           0000C8   258 _T2CON_0	=	0x00c8
                           0000C9   259 _T2CON_1	=	0x00c9
                           0000CA   260 _T2CON_2	=	0x00ca
                           0000CB   261 _T2CON_3	=	0x00cb
                           0000CC   262 _T2CON_4	=	0x00cc
                           0000CD   263 _T2CON_5	=	0x00cd
                           0000CE   264 _T2CON_6	=	0x00ce
                           0000CF   265 _T2CON_7	=	0x00cf
                           0000C8   266 _CP_RL2	=	0x00c8
                           0000C9   267 _C_T2	=	0x00c9
                           0000CA   268 _TR2	=	0x00ca
                           0000CB   269 _EXEN2	=	0x00cb
                           0000CC   270 _TCLK	=	0x00cc
                           0000CD   271 _RCLK	=	0x00cd
                           0000CE   272 _EXF2	=	0x00ce
                           0000CF   273 _TF2	=	0x00cf
                                    274 ;--------------------------------------------------------
                                    275 ; overlayable register banks
                                    276 ;--------------------------------------------------------
                                    277 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        278 	.ds 8
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable bit register bank
                                    281 ;--------------------------------------------------------
                                    282 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        283 bits:
      000020                        284 	.ds 1
                           008000   285 	b0 = bits[0]
                           008100   286 	b1 = bits[1]
                           008200   287 	b2 = bits[2]
                           008300   288 	b3 = bits[3]
                           008400   289 	b4 = bits[4]
                           008500   290 	b5 = bits[5]
                           008600   291 	b6 = bits[6]
                           008700   292 	b7 = bits[7]
                                    293 ;--------------------------------------------------------
                                    294 ; internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area DSEG    (DATA)
      000008                        297 _state::
      000008                        298 	.ds 2
      00000A                        299 _data_r::
      00000A                        300 	.ds 1
      00000B                        301 _received::
      00000B                        302 	.ds 1
      00000C                        303 _timerCount::
      00000C                        304 	.ds 2
      00000E                        305 _time_delay::
      00000E                        306 	.ds 2
      000010                        307 _button::
      000010                        308 	.ds 1
                                    309 ;--------------------------------------------------------
                                    310 ; overlayable items in internal ram 
                                    311 ;--------------------------------------------------------
                                    312 	.area	OSEG    (OVR,DATA)
                                    313 	.area	OSEG    (OVR,DATA)
                                    314 ;--------------------------------------------------------
                                    315 ; Stack segment in internal ram 
                                    316 ;--------------------------------------------------------
                                    317 	.area	SSEG
      000021                        318 __start__stack:
      000021                        319 	.ds	1
                                    320 
                                    321 ;--------------------------------------------------------
                                    322 ; indirectly addressable internal ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area ISEG    (DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; absolute internal ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area IABS    (ABS,DATA)
                                    329 	.area IABS    (ABS,DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; bit data
                                    332 ;--------------------------------------------------------
                                    333 	.area BSEG    (BIT)
                                    334 ;--------------------------------------------------------
                                    335 ; paged external ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area PSEG    (PAG,XDATA)
                                    338 ;--------------------------------------------------------
                                    339 ; external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area XSEG    (XDATA)
                                    342 ;--------------------------------------------------------
                                    343 ; absolute external ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area XABS    (ABS,XDATA)
                                    346 ;--------------------------------------------------------
                                    347 ; external initialized ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area XISEG   (XDATA)
                                    350 	.area HOME    (CODE)
                                    351 	.area GSINIT0 (CODE)
                                    352 	.area GSINIT1 (CODE)
                                    353 	.area GSINIT2 (CODE)
                                    354 	.area GSINIT3 (CODE)
                                    355 	.area GSINIT4 (CODE)
                                    356 	.area GSINIT5 (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.area GSFINAL (CODE)
                                    359 	.area CSEG    (CODE)
                                    360 ;--------------------------------------------------------
                                    361 ; interrupt vector 
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
      000000                        364 __interrupt_vect:
      000000 02 00 11         [24]  365 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  366 	reti
      000004                        367 	.ds	7
      00000B 02 00 83         [24]  368 	ljmp	_isr_timer0
                                    369 ;--------------------------------------------------------
                                    370 ; global & static initialisations
                                    371 ;--------------------------------------------------------
                                    372 	.area HOME    (CODE)
                                    373 	.area GSINIT  (CODE)
                                    374 	.area GSFINAL (CODE)
                                    375 	.area GSINIT  (CODE)
                                    376 	.globl __sdcc_gsinit_startup
                                    377 	.globl __sdcc_program_startup
                                    378 	.globl __start__stack
                                    379 	.globl __mcs51_genXINIT
                                    380 	.globl __mcs51_genXRAMCLEAR
                                    381 	.globl __mcs51_genRAMCLEAR
                                    382 ;	transmitter.c:3: int state = 0;
      00006A E4               [12]  383 	clr	a
      00006B F5 08            [12]  384 	mov	_state,a
      00006D F5 09            [12]  385 	mov	(_state + 1),a
                                    386 ;	transmitter.c:13: char data_r=0;
                                    387 ;	1-genFromRTrack replaced	mov	_data_r,#0x00
      00006F F5 0A            [12]  388 	mov	_data_r,a
                                    389 ;	transmitter.c:14: char received=1;
      000071 75 0B 01         [24]  390 	mov	_received,#0x01
                                    391 ;	transmitter.c:15: volatile int timerCount = 0;
      000074 F5 0C            [12]  392 	mov	_timerCount,a
      000076 F5 0D            [12]  393 	mov	(_timerCount + 1),a
                                    394 ;	transmitter.c:16: volatile int time_delay = 15;
      000078 75 0E 0F         [24]  395 	mov	_time_delay,#0x0f
                                    396 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      00007B F5 0F            [12]  397 	mov	(_time_delay + 1),a
                                    398 ;	transmitter.c:17: char button='l';
      00007D 75 10 6C         [24]  399 	mov	_button,#0x6c
                                    400 	.area GSFINAL (CODE)
      000080 02 00 0E         [24]  401 	ljmp	__sdcc_program_startup
                                    402 ;--------------------------------------------------------
                                    403 ; Home
                                    404 ;--------------------------------------------------------
                                    405 	.area HOME    (CODE)
                                    406 	.area HOME    (CODE)
      00000E                        407 __sdcc_program_startup:
      00000E 02 01 A1         [24]  408 	ljmp	_main
                                    409 ;	return from main will return to caller
                                    410 ;--------------------------------------------------------
                                    411 ; code
                                    412 ;--------------------------------------------------------
                                    413 	.area CSEG    (CODE)
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'isr_timer0'
                                    416 ;------------------------------------------------------------
                                    417 ;	transmitter.c:19: void isr_timer0(void) __interrupt 1   // It is called after every 50msec
                                    418 ;	-----------------------------------------
                                    419 ;	 function isr_timer0
                                    420 ;	-----------------------------------------
      000083                        421 _isr_timer0:
                           000007   422 	ar7 = 0x07
                           000006   423 	ar6 = 0x06
                           000005   424 	ar5 = 0x05
                           000004   425 	ar4 = 0x04
                           000003   426 	ar3 = 0x03
                           000002   427 	ar2 = 0x02
                           000001   428 	ar1 = 0x01
                           000000   429 	ar0 = 0x00
      000083 C0 20            [24]  430 	push	bits
      000085 C0 E0            [24]  431 	push	acc
      000087 C0 F0            [24]  432 	push	b
      000089 C0 82            [24]  433 	push	dpl
      00008B C0 83            [24]  434 	push	dph
      00008D C0 07            [24]  435 	push	(0+7)
      00008F C0 06            [24]  436 	push	(0+6)
      000091 C0 05            [24]  437 	push	(0+5)
      000093 C0 04            [24]  438 	push	(0+4)
      000095 C0 03            [24]  439 	push	(0+3)
      000097 C0 02            [24]  440 	push	(0+2)
      000099 C0 01            [24]  441 	push	(0+1)
      00009B C0 00            [24]  442 	push	(0+0)
      00009D C0 D0            [24]  443 	push	psw
      00009F 75 D0 00         [24]  444 	mov	psw,#0x00
                                    445 ;	transmitter.c:21: TH0  = 0XDC;         // ReLoad the timer value for 50ms
      0000A2 75 8C DC         [24]  446 	mov	_TH0,#0xdc
                                    447 ;	transmitter.c:22: TL0  = 0X00;
      0000A5 75 8A 00         [24]  448 	mov	_TL0,#0x00
                                    449 ;	transmitter.c:23: timerCount++;
      0000A8 AE 0C            [24]  450 	mov	r6,_timerCount
      0000AA AF 0D            [24]  451 	mov	r7,(_timerCount + 1)
      0000AC 74 01            [12]  452 	mov	a,#0x01
      0000AE 2E               [12]  453 	add	a,r6
      0000AF F5 0C            [12]  454 	mov	_timerCount,a
      0000B1 E4               [12]  455 	clr	a
      0000B2 3F               [12]  456 	addc	a,r7
      0000B3 F5 0D            [12]  457 	mov	(_timerCount + 1),a
                                    458 ;	transmitter.c:24: switch(P1)
      0000B5 AF 90            [24]  459 	mov	r7,_P1
      0000B7 BF 1F 03         [24]  460 	cjne	r7,#0x1f,00160$
      0000BA 02 01 62         [24]  461 	ljmp	00113$
      0000BD                        462 00160$:
      0000BD BF 2F 03         [24]  463 	cjne	r7,#0x2f,00161$
      0000C0 02 01 51         [24]  464 	ljmp	00112$
      0000C3                        465 00161$:
      0000C3 BF 37 02         [24]  466 	cjne	r7,#0x37,00162$
      0000C6 80 69            [24]  467 	sjmp	00108$
      0000C8                        468 00162$:
      0000C8 BF 3B 02         [24]  469 	cjne	r7,#0x3b,00163$
      0000CB 80 44            [24]  470 	sjmp	00104$
      0000CD                        471 00163$:
      0000CD BF 3D 02         [24]  472 	cjne	r7,#0x3d,00164$
      0000D0 80 2E            [24]  473 	sjmp	00103$
      0000D2                        474 00164$:
      0000D2 BF 3E 02         [24]  475 	cjne	r7,#0x3e,00165$
      0000D5 80 18            [24]  476 	sjmp	00102$
      0000D7                        477 00165$:
      0000D7 BF 3F 02         [24]  478 	cjne	r7,#0x3f,00166$
      0000DA 80 03            [24]  479 	sjmp	00167$
      0000DC                        480 00166$:
      0000DC 02 01 71         [24]  481 	ljmp	00115$
      0000DF                        482 00167$:
                                    483 ;	transmitter.c:28: time_delay=10;
      0000DF 75 0E 0A         [24]  484 	mov	_time_delay,#0x0a
                                    485 ;	transmitter.c:29: state = 0;
      0000E2 E4               [12]  486 	clr	a
      0000E3 F5 0F            [12]  487 	mov	(_time_delay + 1),a
      0000E5 F5 08            [12]  488 	mov	_state,a
      0000E7 F5 09            [12]  489 	mov	(_state + 1),a
                                    490 ;	transmitter.c:30: button = 'l';
      0000E9 75 10 6C         [24]  491 	mov	_button,#0x6c
                                    492 ;	transmitter.c:31: break;
      0000EC 02 01 71         [24]  493 	ljmp	00115$
                                    494 ;	transmitter.c:33: case 0x3e:
      0000EF                        495 00102$:
                                    496 ;	transmitter.c:35: time_delay=120;
      0000EF 75 0E 78         [24]  497 	mov	_time_delay,#0x78
      0000F2 75 0F 00         [24]  498 	mov	(_time_delay + 1),#0x00
                                    499 ;	transmitter.c:36: state = 1;
      0000F5 75 08 01         [24]  500 	mov	_state,#0x01
      0000F8 75 09 00         [24]  501 	mov	(_state + 1),#0x00
                                    502 ;	transmitter.c:37: button = 'a';
      0000FB 75 10 61         [24]  503 	mov	_button,#0x61
                                    504 ;	transmitter.c:38: break;
                                    505 ;	transmitter.c:40: case 0x3d:
      0000FE 80 71            [24]  506 	sjmp	00115$
      000100                        507 00103$:
                                    508 ;	transmitter.c:42: state = 2;
      000100 75 08 02         [24]  509 	mov	_state,#0x02
      000103 75 09 00         [24]  510 	mov	(_state + 1),#0x00
                                    511 ;	transmitter.c:43: time_delay=5;
      000106 75 0E 05         [24]  512 	mov	_time_delay,#0x05
      000109 75 0F 00         [24]  513 	mov	(_time_delay + 1),#0x00
                                    514 ;	transmitter.c:44: button = 'b';
      00010C 75 10 62         [24]  515 	mov	_button,#0x62
                                    516 ;	transmitter.c:45: break;
                                    517 ;	transmitter.c:47: case 0x3b:
      00010F 80 60            [24]  518 	sjmp	00115$
      000111                        519 00104$:
                                    520 ;	transmitter.c:48: if(received)
      000111 E5 0B            [12]  521 	mov	a,_received
      000113 60 0B            [24]  522 	jz	00106$
                                    523 ;	transmitter.c:50: state = 7;
      000115 75 08 07         [24]  524 	mov	_state,#0x07
      000118 75 09 00         [24]  525 	mov	(_state + 1),#0x00
                                    526 ;	transmitter.c:51: button = 'd';
      00011B 75 10 64         [24]  527 	mov	_button,#0x64
      00011E 80 09            [24]  528 	sjmp	00107$
      000120                        529 00106$:
                                    530 ;	transmitter.c:55: state = 3;
      000120 75 08 03         [24]  531 	mov	_state,#0x03
      000123 75 09 00         [24]  532 	mov	(_state + 1),#0x00
                                    533 ;	transmitter.c:56: button = 'c';
      000126 75 10 63         [24]  534 	mov	_button,#0x63
      000129                        535 00107$:
                                    536 ;	transmitter.c:58: time_delay=10;
      000129 75 0E 0A         [24]  537 	mov	_time_delay,#0x0a
      00012C 75 0F 00         [24]  538 	mov	(_time_delay + 1),#0x00
                                    539 ;	transmitter.c:59: break;
                                    540 ;	transmitter.c:61: case 0x37:
      00012F 80 40            [24]  541 	sjmp	00115$
      000131                        542 00108$:
                                    543 ;	transmitter.c:62: if(received)
      000131 E5 0B            [12]  544 	mov	a,_received
      000133 60 0B            [24]  545 	jz	00110$
                                    546 ;	transmitter.c:64: state = 7;
      000135 75 08 07         [24]  547 	mov	_state,#0x07
      000138 75 09 00         [24]  548 	mov	(_state + 1),#0x00
                                    549 ;	transmitter.c:65: button = 'd';
      00013B 75 10 64         [24]  550 	mov	_button,#0x64
      00013E 80 09            [24]  551 	sjmp	00111$
      000140                        552 00110$:
                                    553 ;	transmitter.c:69: state = 4;
      000140 75 08 04         [24]  554 	mov	_state,#0x04
      000143 75 09 00         [24]  555 	mov	(_state + 1),#0x00
                                    556 ;	transmitter.c:70: button = 'e';
      000146 75 10 65         [24]  557 	mov	_button,#0x65
      000149                        558 00111$:
                                    559 ;	transmitter.c:72: time_delay=10;
      000149 75 0E 0A         [24]  560 	mov	_time_delay,#0x0a
      00014C 75 0F 00         [24]  561 	mov	(_time_delay + 1),#0x00
                                    562 ;	transmitter.c:73: break;
                                    563 ;	transmitter.c:75: case 0x2f:
      00014F 80 20            [24]  564 	sjmp	00115$
      000151                        565 00112$:
                                    566 ;	transmitter.c:77: state = 5;
      000151 75 08 05         [24]  567 	mov	_state,#0x05
      000154 75 09 00         [24]  568 	mov	(_state + 1),#0x00
                                    569 ;	transmitter.c:78: time_delay=5;
      000157 75 0E 05         [24]  570 	mov	_time_delay,#0x05
      00015A 75 0F 00         [24]  571 	mov	(_time_delay + 1),#0x00
                                    572 ;	transmitter.c:79: button = 'f';
      00015D 75 10 66         [24]  573 	mov	_button,#0x66
                                    574 ;	transmitter.c:80: break;
                                    575 ;	transmitter.c:82: case 0x1f:
      000160 80 0F            [24]  576 	sjmp	00115$
      000162                        577 00113$:
                                    578 ;	transmitter.c:84: state = 6;
      000162 75 08 06         [24]  579 	mov	_state,#0x06
      000165 75 09 00         [24]  580 	mov	(_state + 1),#0x00
                                    581 ;	transmitter.c:85: button = 'g';
      000168 75 10 67         [24]  582 	mov	_button,#0x67
                                    583 ;	transmitter.c:86: time_delay=120;
      00016B 75 0E 78         [24]  584 	mov	_time_delay,#0x78
      00016E 75 0F 00         [24]  585 	mov	(_time_delay + 1),#0x00
                                    586 ;	transmitter.c:90: }
      000171                        587 00115$:
                                    588 ;	transmitter.c:92: if(timerCount == 30)
      000171 74 1E            [12]  589 	mov	a,#0x1e
      000173 B5 0C 06         [24]  590 	cjne	a,_timerCount,00170$
      000176 E4               [12]  591 	clr	a
      000177 B5 0D 02         [24]  592 	cjne	a,(_timerCount + 1),00170$
      00017A 80 02            [24]  593 	sjmp	00171$
      00017C                        594 00170$:
      00017C 80 06            [24]  595 	sjmp	00118$
      00017E                        596 00171$:
                                    597 ;	transmitter.c:93: Transmit_data(button);
      00017E 85 10 82         [24]  598 	mov	dpl,_button
      000181 12 02 1D         [24]  599 	lcall	_Transmit_data
      000184                        600 00118$:
                                    601 ;	transmitter.c:94: }
      000184 D0 D0            [24]  602 	pop	psw
      000186 D0 00            [24]  603 	pop	(0+0)
      000188 D0 01            [24]  604 	pop	(0+1)
      00018A D0 02            [24]  605 	pop	(0+2)
      00018C D0 03            [24]  606 	pop	(0+3)
      00018E D0 04            [24]  607 	pop	(0+4)
      000190 D0 05            [24]  608 	pop	(0+5)
      000192 D0 06            [24]  609 	pop	(0+6)
      000194 D0 07            [24]  610 	pop	(0+7)
      000196 D0 83            [24]  611 	pop	dph
      000198 D0 82            [24]  612 	pop	dpl
      00019A D0 F0            [24]  613 	pop	b
      00019C D0 E0            [24]  614 	pop	acc
      00019E D0 20            [24]  615 	pop	bits
      0001A0 32               [24]  616 	reti
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function 'main'
                                    619 ;------------------------------------------------------------
                                    620 ;	transmitter.c:96: void main(void)
                                    621 ;	-----------------------------------------
                                    622 ;	 function main
                                    623 ;	-----------------------------------------
      0001A1                        624 _main:
                                    625 ;	transmitter.c:98: P1 = 0xff;
      0001A1 75 90 FF         [24]  626 	mov	_P1,#0xff
                                    627 ;	transmitter.c:99: P2 = 0x00;
                                    628 ;	transmitter.c:100: state = 0;
      0001A4 E4               [12]  629 	clr	a
      0001A5 F5 A0            [12]  630 	mov	_P2,a
      0001A7 F5 08            [12]  631 	mov	_state,a
      0001A9 F5 09            [12]  632 	mov	(_state + 1),a
                                    633 ;	transmitter.c:101: startup();
      0001AB 12 02 51         [24]  634 	lcall	_startup
                                    635 ;	transmitter.c:102: P2 = 0x00;
      0001AE 75 A0 00         [24]  636 	mov	_P2,#0x00
                                    637 ;	transmitter.c:103: UART_Init();
      0001B1 12 02 11         [24]  638 	lcall	_UART_Init
                                    639 ;	transmitter.c:104: start:while(!data_r)
      0001B4                        640 00102$:
      0001B4 E5 0A            [12]  641 	mov	a,_data_r
      0001B6 70 13            [24]  642 	jnz	00104$
                                    643 ;	transmitter.c:106: data_r=SBUF;
      0001B8 85 99 0A         [24]  644 	mov	_data_r,_SBUF
                                    645 ;	transmitter.c:107: RI=0;
                                    646 ;	assignBit
      0001BB C2 98            [12]  647 	clr	_RI
                                    648 ;	transmitter.c:108: P2 = 0xA0; // Turn ON all LED's connected to Port1
      0001BD 75 A0 A0         [24]  649 	mov	_P2,#0xa0
                                    650 ;	transmitter.c:109: delay();
      0001C0 12 01 E8         [24]  651 	lcall	_delay
                                    652 ;	transmitter.c:110: P2 = 0x00; // Turn OFF all LED's connected to Port1
      0001C3 75 A0 00         [24]  653 	mov	_P2,#0x00
                                    654 ;	transmitter.c:111: delay();
      0001C6 12 01 E8         [24]  655 	lcall	_delay
      0001C9 80 E9            [24]  656 	sjmp	00102$
      0001CB                        657 00104$:
                                    658 ;	transmitter.c:114: if(data_r=='x')
      0001CB 74 78            [12]  659 	mov	a,#0x78
      0001CD B5 0A E4         [24]  660 	cjne	a,_data_r,00102$
                                    661 ;	transmitter.c:116: Transmit_data('y');
      0001D0 75 82 79         [24]  662 	mov	dpl,#0x79
      0001D3 12 02 1D         [24]  663 	lcall	_Transmit_data
                                    664 ;	transmitter.c:117: data_r=0;
      0001D6 75 0A 00         [24]  665 	mov	_data_r,#0x00
                                    666 ;	transmitter.c:122: InitTimer1();
      0001D9 12 03 8D         [24]  667 	lcall	_InitTimer1
                                    668 ;	transmitter.c:123: ET0 = 1;         // Enable Timer1 interrupts	
                                    669 ;	assignBit
      0001DC D2 A9            [12]  670 	setb	_ET0
                                    671 ;	transmitter.c:124: EA  = 1;         // Global interrupt enable
                                    672 ;	assignBit
      0001DE D2 AF            [12]  673 	setb	_EA
                                    674 ;	transmitter.c:126: while(1)
      0001E0                        675 00109$:
                                    676 ;	transmitter.c:128: touch();
      0001E0 12 02 8D         [24]  677 	lcall	_touch
                                    678 ;	transmitter.c:129: check_x();
      0001E3 12 02 26         [24]  679 	lcall	_check_x
                                    680 ;	transmitter.c:131: }
      0001E6 80 F8            [24]  681 	sjmp	00109$
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'delay'
                                    684 ;------------------------------------------------------------
                                    685 ;i                         Allocated to registers r6 r7 
                                    686 ;j                         Allocated to registers r4 r5 
                                    687 ;------------------------------------------------------------
                                    688 ;	transmitter.c:134: void delay(void)
                                    689 ;	-----------------------------------------
                                    690 ;	 function delay
                                    691 ;	-----------------------------------------
      0001E8                        692 _delay:
                                    693 ;	transmitter.c:137: for(i=0;i<0x33;i++)
      0001E8 7E 00            [12]  694 	mov	r6,#0x00
      0001EA 7F 00            [12]  695 	mov	r7,#0x00
      0001EC                        696 00106$:
                                    697 ;	transmitter.c:138: for(j=0;j<0xff;j++);
      0001EC 7C FF            [12]  698 	mov	r4,#0xff
      0001EE 7D 00            [12]  699 	mov	r5,#0x00
      0001F0                        700 00105$:
      0001F0 EC               [12]  701 	mov	a,r4
      0001F1 24 FF            [12]  702 	add	a,#0xff
      0001F3 FA               [12]  703 	mov	r2,a
      0001F4 ED               [12]  704 	mov	a,r5
      0001F5 34 FF            [12]  705 	addc	a,#0xff
      0001F7 FB               [12]  706 	mov	r3,a
      0001F8 8A 04            [24]  707 	mov	ar4,r2
      0001FA 8B 05            [24]  708 	mov	ar5,r3
      0001FC EA               [12]  709 	mov	a,r2
      0001FD 4B               [12]  710 	orl	a,r3
      0001FE 70 F0            [24]  711 	jnz	00105$
                                    712 ;	transmitter.c:137: for(i=0;i<0x33;i++)
      000200 0E               [12]  713 	inc	r6
      000201 BE 00 01         [24]  714 	cjne	r6,#0x00,00124$
      000204 0F               [12]  715 	inc	r7
      000205                        716 00124$:
      000205 C3               [12]  717 	clr	c
      000206 EE               [12]  718 	mov	a,r6
      000207 94 33            [12]  719 	subb	a,#0x33
      000209 EF               [12]  720 	mov	a,r7
      00020A 64 80            [12]  721 	xrl	a,#0x80
      00020C 94 80            [12]  722 	subb	a,#0x80
      00020E 40 DC            [24]  723 	jc	00106$
                                    724 ;	transmitter.c:139: }
      000210 22               [24]  725 	ret
                                    726 ;------------------------------------------------------------
                                    727 ;Allocation info for local variables in function 'UART_Init'
                                    728 ;------------------------------------------------------------
                                    729 ;	transmitter.c:141: void UART_Init()
                                    730 ;	-----------------------------------------
                                    731 ;	 function UART_Init
                                    732 ;	-----------------------------------------
      000211                        733 _UART_Init:
                                    734 ;	transmitter.c:143: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      000211 75 89 20         [24]  735 	mov	_TMOD,#0x20
                                    736 ;	transmitter.c:144: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      000214 75 8D FD         [24]  737 	mov	_TH1,#0xfd
                                    738 ;	transmitter.c:145: SCON = 0x50;		/* Mode 1, reception enable */
      000217 75 98 50         [24]  739 	mov	_SCON,#0x50
                                    740 ;	transmitter.c:146: TR1 = 1;		/* Start timer 1 */
                                    741 ;	assignBit
      00021A D2 8E            [12]  742 	setb	_TR1
                                    743 ;	transmitter.c:147: }
      00021C 22               [24]  744 	ret
                                    745 ;------------------------------------------------------------
                                    746 ;Allocation info for local variables in function 'Transmit_data'
                                    747 ;------------------------------------------------------------
                                    748 ;tx_data                   Allocated to registers 
                                    749 ;------------------------------------------------------------
                                    750 ;	transmitter.c:149: void Transmit_data(char tx_data)
                                    751 ;	-----------------------------------------
                                    752 ;	 function Transmit_data
                                    753 ;	-----------------------------------------
      00021D                        754 _Transmit_data:
      00021D 85 82 99         [24]  755 	mov	_SBUF,dpl
                                    756 ;	transmitter.c:152: while (TI==0);		/* Wait until stop bit transmit */
      000220                        757 00101$:
                                    758 ;	transmitter.c:153: TI = 0;			/* Clear TI flag */
                                    759 ;	assignBit
      000220 10 99 02         [24]  760 	jbc	_TI,00114$
      000223 80 FB            [24]  761 	sjmp	00101$
      000225                        762 00114$:
                                    763 ;	transmitter.c:154: }
      000225 22               [24]  764 	ret
                                    765 ;------------------------------------------------------------
                                    766 ;Allocation info for local variables in function 'check_x'
                                    767 ;------------------------------------------------------------
                                    768 ;	transmitter.c:158: void check_x()
                                    769 ;	-----------------------------------------
                                    770 ;	 function check_x
                                    771 ;	-----------------------------------------
      000226                        772 _check_x:
                                    773 ;	transmitter.c:161: TI=0;
                                    774 ;	assignBit
      000226 C2 99            [12]  775 	clr	_TI
                                    776 ;	transmitter.c:162: data_r = SBUF;		/* Load char in SBUF register */
      000228 85 99 0A         [24]  777 	mov	_data_r,_SBUF
                                    778 ;	transmitter.c:163: RI = 0;			/* Clear TI flag */
                                    779 ;	assignBit
      00022B C2 98            [12]  780 	clr	_RI
                                    781 ;	transmitter.c:164: if(data_r=='x')
      00022D 74 78            [12]  782 	mov	a,#0x78
      00022F B5 0A 06         [24]  783 	cjne	a,_data_r,00108$
                                    784 ;	transmitter.c:165: Transmit_data('y');
      000232 75 82 79         [24]  785 	mov	dpl,#0x79
      000235 02 02 1D         [24]  786 	ljmp	_Transmit_data
      000238                        787 00108$:
                                    788 ;	transmitter.c:166: else if((data_r=='m')||(data_r=='h'))
      000238 74 6D            [12]  789 	mov	a,#0x6d
      00023A B5 0A 02         [24]  790 	cjne	a,_data_r,00126$
      00023D 80 05            [24]  791 	sjmp	00103$
      00023F                        792 00126$:
      00023F 74 68            [12]  793 	mov	a,#0x68
      000241 B5 0A 04         [24]  794 	cjne	a,_data_r,00104$
      000244                        795 00103$:
                                    796 ;	transmitter.c:167: received = 0;
      000244 75 0B 00         [24]  797 	mov	_received,#0x00
      000247 22               [24]  798 	ret
      000248                        799 00104$:
                                    800 ;	transmitter.c:168: else if(data_r=='l')
      000248 74 6C            [12]  801 	mov	a,#0x6c
      00024A B5 0A 03         [24]  802 	cjne	a,_data_r,00110$
                                    803 ;	transmitter.c:169: received = 1;
      00024D 75 0B 01         [24]  804 	mov	_received,#0x01
      000250                        805 00110$:
                                    806 ;	transmitter.c:170: }
      000250 22               [24]  807 	ret
                                    808 ;------------------------------------------------------------
                                    809 ;Allocation info for local variables in function 'startup'
                                    810 ;------------------------------------------------------------
                                    811 ;	transmitter.c:171: void startup(void)
                                    812 ;	-----------------------------------------
                                    813 ;	 function startup
                                    814 ;	-----------------------------------------
      000251                        815 _startup:
                                    816 ;	transmitter.c:173: P2 = 0x00;
      000251 75 A0 00         [24]  817 	mov	_P2,#0x00
                                    818 ;	transmitter.c:174: delay();delay();
      000254 12 01 E8         [24]  819 	lcall	_delay
      000257 12 01 E8         [24]  820 	lcall	_delay
                                    821 ;	transmitter.c:175: P2 = 0xE0;
      00025A 75 A0 E0         [24]  822 	mov	_P2,#0xe0
                                    823 ;	transmitter.c:176: delay();
      00025D 12 01 E8         [24]  824 	lcall	_delay
                                    825 ;	transmitter.c:177: P2 = 0x80;
      000260 75 A0 80         [24]  826 	mov	_P2,#0x80
                                    827 ;	transmitter.c:178: delay();delay();delay();delay();
      000263 12 01 E8         [24]  828 	lcall	_delay
      000266 12 01 E8         [24]  829 	lcall	_delay
      000269 12 01 E8         [24]  830 	lcall	_delay
      00026C 12 01 E8         [24]  831 	lcall	_delay
                                    832 ;	transmitter.c:179: P2 = 0x40;
      00026F 75 A0 40         [24]  833 	mov	_P2,#0x40
                                    834 ;	transmitter.c:180: delay();delay();delay();delay();
      000272 12 01 E8         [24]  835 	lcall	_delay
      000275 12 01 E8         [24]  836 	lcall	_delay
      000278 12 01 E8         [24]  837 	lcall	_delay
      00027B 12 01 E8         [24]  838 	lcall	_delay
                                    839 ;	transmitter.c:181: P2 = 0x20;
      00027E 75 A0 20         [24]  840 	mov	_P2,#0x20
                                    841 ;	transmitter.c:182: delay();delay();delay();delay();
      000281 12 01 E8         [24]  842 	lcall	_delay
      000284 12 01 E8         [24]  843 	lcall	_delay
      000287 12 01 E8         [24]  844 	lcall	_delay
                                    845 ;	transmitter.c:183: }
      00028A 02 01 E8         [24]  846 	ljmp	_delay
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'touch'
                                    849 ;------------------------------------------------------------
                                    850 ;	transmitter.c:185: void touch(void)
                                    851 ;	-----------------------------------------
                                    852 ;	 function touch
                                    853 ;	-----------------------------------------
      00028D                        854 _touch:
                                    855 ;	transmitter.c:187: if(timerCount <= (time_delay*5)) // count for 1sec delay(50msx20 = 1000ms = 1sec)
      00028D 85 0E 11         [24]  856 	mov	__mulint_PARM_2,_time_delay
      000290 85 0F 12         [24]  857 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      000293 90 00 05         [24]  858 	mov	dptr,#0x0005
      000296 12 03 9B         [24]  859 	lcall	__mulint
      000299 AE 82            [24]  860 	mov	r6,dpl
      00029B AF 83            [24]  861 	mov	r7,dph
      00029D C3               [12]  862 	clr	c
      00029E EE               [12]  863 	mov	a,r6
      00029F 95 0C            [12]  864 	subb	a,_timerCount
      0002A1 EF               [12]  865 	mov	a,r7
      0002A2 64 80            [12]  866 	xrl	a,#0x80
      0002A4 85 0D F0         [24]  867 	mov	b,(_timerCount + 1)
      0002A7 63 F0 80         [24]  868 	xrl	b,#0x80
      0002AA 95 F0            [12]  869 	subb	a,b
      0002AC 50 03            [24]  870 	jnc	00158$
      0002AE 02 03 09         [24]  871 	ljmp	00126$
      0002B1                        872 00158$:
                                    873 ;	transmitter.c:189: switch(state)
      0002B1 E5 09            [12]  874 	mov	a,(_state + 1)
      0002B3 30 E7 01         [24]  875 	jnb	acc.7,00159$
      0002B6 22               [24]  876 	ret
      0002B7                        877 00159$:
      0002B7 C3               [12]  878 	clr	c
      0002B8 74 07            [12]  879 	mov	a,#0x07
      0002BA 95 08            [12]  880 	subb	a,_state
      0002BC 74 80            [12]  881 	mov	a,#(0x00 ^ 0x80)
      0002BE 85 09 F0         [24]  882 	mov	b,(_state + 1)
      0002C1 63 F0 80         [24]  883 	xrl	b,#0x80
      0002C4 95 F0            [12]  884 	subb	a,b
      0002C6 50 01            [24]  885 	jnc	00160$
      0002C8 22               [24]  886 	ret
      0002C9                        887 00160$:
      0002C9 E5 08            [12]  888 	mov	a,_state
      0002CB 24 0B            [12]  889 	add	a,#(00161$-3-.)
      0002CD 83               [24]  890 	movc	a,@a+pc
      0002CE F5 82            [12]  891 	mov	dpl,a
      0002D0 E5 08            [12]  892 	mov	a,_state
      0002D2 24 0C            [12]  893 	add	a,#(00162$-3-.)
      0002D4 83               [24]  894 	movc	a,@a+pc
      0002D5 F5 83            [12]  895 	mov	dph,a
      0002D7 E4               [12]  896 	clr	a
      0002D8 73               [24]  897 	jmp	@a+dptr
      0002D9                        898 00161$:
      0002D9 E9                     899 	.db	00101$
      0002DA ED                     900 	.db	00102$
      0002DB F1                     901 	.db	00103$
      0002DC F5                     902 	.db	00104$
      0002DD F9                     903 	.db	00105$
      0002DE FD                     904 	.db	00106$
      0002DF 01                     905 	.db	00107$
      0002E0 05                     906 	.db	00108$
      0002E1                        907 00162$:
      0002E1 02                     908 	.db	00101$>>8
      0002E2 02                     909 	.db	00102$>>8
      0002E3 02                     910 	.db	00103$>>8
      0002E4 02                     911 	.db	00104$>>8
      0002E5 02                     912 	.db	00105$>>8
      0002E6 02                     913 	.db	00106$>>8
      0002E7 03                     914 	.db	00107$>>8
      0002E8 03                     915 	.db	00108$>>8
                                    916 ;	transmitter.c:191: case 0:	P2 =0xA0;break;	
      0002E9                        917 00101$:
      0002E9 75 A0 A0         [24]  918 	mov	_P2,#0xa0
      0002EC 22               [24]  919 	ret
                                    920 ;	transmitter.c:192: case 1:	P2 =0x80;break;
      0002ED                        921 00102$:
      0002ED 75 A0 80         [24]  922 	mov	_P2,#0x80
      0002F0 22               [24]  923 	ret
                                    924 ;	transmitter.c:193: case 2:	P2 =0x80;break;
      0002F1                        925 00103$:
      0002F1 75 A0 80         [24]  926 	mov	_P2,#0x80
      0002F4 22               [24]  927 	ret
                                    928 ;	transmitter.c:194: case 3:	P2 =0xc0;break;
      0002F5                        929 00104$:
      0002F5 75 A0 C0         [24]  930 	mov	_P2,#0xc0
      0002F8 22               [24]  931 	ret
                                    932 ;	transmitter.c:195: case 4:	P2 =0x60;break;
      0002F9                        933 00105$:
      0002F9 75 A0 60         [24]  934 	mov	_P2,#0x60
      0002FC 22               [24]  935 	ret
                                    936 ;	transmitter.c:196: case 5:	P2 =0x20;break;
      0002FD                        937 00106$:
      0002FD 75 A0 20         [24]  938 	mov	_P2,#0x20
      000300 22               [24]  939 	ret
                                    940 ;	transmitter.c:197: case 6:	P2 =0x20;break;
      000301                        941 00107$:
      000301 75 A0 20         [24]  942 	mov	_P2,#0x20
      000304 22               [24]  943 	ret
                                    944 ;	transmitter.c:198: case 7:	P2 =0x40;break;
      000305                        945 00108$:
      000305 75 A0 40         [24]  946 	mov	_P2,#0x40
      000308 22               [24]  947 	ret
                                    948 ;	transmitter.c:199: default:break;}
      000309                        949 00126$:
                                    950 ;	transmitter.c:205: else if((timerCount > time_delay) &&(timerCount<time_delay*10))
      000309 C3               [12]  951 	clr	c
      00030A E5 0E            [12]  952 	mov	a,_time_delay
      00030C 95 0C            [12]  953 	subb	a,_timerCount
      00030E E5 0F            [12]  954 	mov	a,(_time_delay + 1)
      000310 64 80            [12]  955 	xrl	a,#0x80
      000312 85 0D F0         [24]  956 	mov	b,(_timerCount + 1)
      000315 63 F0 80         [24]  957 	xrl	b,#0x80
      000318 95 F0            [12]  958 	subb	a,b
      00031A 40 03            [24]  959 	jc	00163$
      00031C 02 03 87         [24]  960 	ljmp	00122$
      00031F                        961 00163$:
      00031F 85 0E 11         [24]  962 	mov	__mulint_PARM_2,_time_delay
      000322 85 0F 12         [24]  963 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      000325 90 00 0A         [24]  964 	mov	dptr,#0x000a
      000328 12 03 9B         [24]  965 	lcall	__mulint
      00032B AE 82            [24]  966 	mov	r6,dpl
      00032D AF 83            [24]  967 	mov	r7,dph
      00032F C3               [12]  968 	clr	c
      000330 E5 0C            [12]  969 	mov	a,_timerCount
      000332 9E               [12]  970 	subb	a,r6
      000333 E5 0D            [12]  971 	mov	a,(_timerCount + 1)
      000335 64 80            [12]  972 	xrl	a,#0x80
      000337 8F F0            [24]  973 	mov	b,r7
      000339 63 F0 80         [24]  974 	xrl	b,#0x80
      00033C 95 F0            [12]  975 	subb	a,b
      00033E 40 03            [24]  976 	jc	00164$
      000340 02 03 87         [24]  977 	ljmp	00122$
      000343                        978 00164$:
                                    979 ;	transmitter.c:207: switch(state)
      000343 E5 09            [12]  980 	mov	a,(_state + 1)
      000345 30 E7 01         [24]  981 	jnb	acc.7,00165$
      000348 22               [24]  982 	ret
      000349                        983 00165$:
      000349 C3               [12]  984 	clr	c
      00034A 74 07            [12]  985 	mov	a,#0x07
      00034C 95 08            [12]  986 	subb	a,_state
      00034E 74 80            [12]  987 	mov	a,#(0x00 ^ 0x80)
      000350 85 09 F0         [24]  988 	mov	b,(_state + 1)
      000353 63 F0 80         [24]  989 	xrl	b,#0x80
      000356 95 F0            [12]  990 	subb	a,b
      000358 50 01            [24]  991 	jnc	00166$
      00035A 22               [24]  992 	ret
      00035B                        993 00166$:
      00035B E5 08            [12]  994 	mov	a,_state
      00035D 24 0B            [12]  995 	add	a,#(00167$-3-.)
      00035F 83               [24]  996 	movc	a,@a+pc
      000360 F5 82            [12]  997 	mov	dpl,a
      000362 E5 08            [12]  998 	mov	a,_state
      000364 24 0C            [12]  999 	add	a,#(00168$-3-.)
      000366 83               [24] 1000 	movc	a,@a+pc
      000367 F5 83            [12] 1001 	mov	dph,a
      000369 E4               [12] 1002 	clr	a
      00036A 73               [24] 1003 	jmp	@a+dptr
      00036B                       1004 00167$:
      00036B 7B                    1005 	.db	00116$
      00036C 7B                    1006 	.db	00116$
      00036D 7F                    1007 	.db	00117$
      00036E 7B                    1008 	.db	00116$
      00036F 7B                    1009 	.db	00116$
      000370 83                    1010 	.db	00118$
      000371 7B                    1011 	.db	00116$
      000372 7B                    1012 	.db	00116$
      000373                       1013 00168$:
      000373 03                    1014 	.db	00116$>>8
      000374 03                    1015 	.db	00116$>>8
      000375 03                    1016 	.db	00117$>>8
      000376 03                    1017 	.db	00116$>>8
      000377 03                    1018 	.db	00116$>>8
      000378 03                    1019 	.db	00118$>>8
      000379 03                    1020 	.db	00116$>>8
      00037A 03                    1021 	.db	00116$>>8
                                   1022 ;	transmitter.c:214: case 7:P2 =0x00;break;
      00037B                       1023 00116$:
      00037B 75 A0 00         [24] 1024 	mov	_P2,#0x00
                                   1025 ;	transmitter.c:215: case 2:P2 =0x80;break;
      00037E 22               [24] 1026 	ret
      00037F                       1027 00117$:
      00037F 75 A0 80         [24] 1028 	mov	_P2,#0x80
                                   1029 ;	transmitter.c:216: case 5:P2 =0x20;break;
      000382 22               [24] 1030 	ret
      000383                       1031 00118$:
      000383 75 A0 20         [24] 1032 	mov	_P2,#0x20
                                   1033 ;	transmitter.c:217: default:break;}
      000386 22               [24] 1034 	ret
      000387                       1035 00122$:
                                   1036 ;	transmitter.c:221: timerCount = 0;
      000387 E4               [12] 1037 	clr	a
      000388 F5 0C            [12] 1038 	mov	_timerCount,a
      00038A F5 0D            [12] 1039 	mov	(_timerCount + 1),a
                                   1040 ;	transmitter.c:223: }
      00038C 22               [24] 1041 	ret
                                   1042 ;------------------------------------------------------------
                                   1043 ;Allocation info for local variables in function 'InitTimer1'
                                   1044 ;------------------------------------------------------------
                                   1045 ;	transmitter.c:227: void InitTimer1(void)
                                   1046 ;	-----------------------------------------
                                   1047 ;	 function InitTimer1
                                   1048 ;	-----------------------------------------
      00038D                       1049 _InitTimer1:
                                   1050 ;	transmitter.c:229: TMOD |= 0x01;    // Set timer0 in mode 1
      00038D 43 89 01         [24] 1051 	orl	_TMOD,#0x01
                                   1052 ;	transmitter.c:230: TH0 = 0xDC;      // 50 msec reloading time
      000390 75 8C DC         [24] 1053 	mov	_TH0,#0xdc
                                   1054 ;	transmitter.c:231: TL0 = 0x00;      // First time value
      000393 75 8A 00         [24] 1055 	mov	_TL0,#0x00
                                   1056 ;	transmitter.c:232: TR0 = 1;         // Start Timer 1
                                   1057 ;	assignBit
      000396 D2 8C            [12] 1058 	setb	_TR0
                                   1059 ;	transmitter.c:233: ET0 = 1;         // Enable Timer1 interrupts	
                                   1060 ;	assignBit
      000398 D2 A9            [12] 1061 	setb	_ET0
                                   1062 ;	transmitter.c:234: }
      00039A 22               [24] 1063 	ret
                                   1064 	.area CSEG    (CODE)
                                   1065 	.area CONST   (CODE)
                                   1066 	.area XINIT   (CODE)
                                   1067 	.area CABS    (ABS,CODE)
