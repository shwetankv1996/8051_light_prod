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
                                    132 	.globl _time_delay
                                    133 	.globl _timerCount
                                    134 	.globl _data_r
                                    135 	.globl _state
                                    136 	.globl _delay
                                    137 	.globl _UART_Init
                                    138 	.globl _Transmit_data
                                    139 	.globl _check_x
                                    140 	.globl _startup
                                    141 	.globl _touch
                                    142 	.globl _InitTimer1
                                    143 ;--------------------------------------------------------
                                    144 ; special function registers
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0	=	0x0080
                           000081   149 _SP	=	0x0081
                           000082   150 _DPL	=	0x0082
                           000083   151 _DPH	=	0x0083
                           000087   152 _PCON	=	0x0087
                           000088   153 _TCON	=	0x0088
                           000089   154 _TMOD	=	0x0089
                           00008A   155 _TL0	=	0x008a
                           00008B   156 _TL1	=	0x008b
                           00008C   157 _TH0	=	0x008c
                           00008D   158 _TH1	=	0x008d
                           000090   159 _P1	=	0x0090
                           000098   160 _SCON	=	0x0098
                           000099   161 _SBUF	=	0x0099
                           0000A0   162 _P2	=	0x00a0
                           0000A8   163 _IE	=	0x00a8
                           0000B0   164 _P3	=	0x00b0
                           0000B8   165 _IP	=	0x00b8
                           0000D0   166 _PSW	=	0x00d0
                           0000E0   167 _ACC	=	0x00e0
                           0000F0   168 _B	=	0x00f0
                           0000C8   169 _T2CON	=	0x00c8
                           0000CA   170 _RCAP2L	=	0x00ca
                           0000CB   171 _RCAP2H	=	0x00cb
                           0000CC   172 _TL2	=	0x00cc
                           0000CD   173 _TH2	=	0x00cd
                                    174 ;--------------------------------------------------------
                                    175 ; special function bits
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0_0	=	0x0080
                           000081   180 _P0_1	=	0x0081
                           000082   181 _P0_2	=	0x0082
                           000083   182 _P0_3	=	0x0083
                           000084   183 _P0_4	=	0x0084
                           000085   184 _P0_5	=	0x0085
                           000086   185 _P0_6	=	0x0086
                           000087   186 _P0_7	=	0x0087
                           000088   187 _IT0	=	0x0088
                           000089   188 _IE0	=	0x0089
                           00008A   189 _IT1	=	0x008a
                           00008B   190 _IE1	=	0x008b
                           00008C   191 _TR0	=	0x008c
                           00008D   192 _TF0	=	0x008d
                           00008E   193 _TR1	=	0x008e
                           00008F   194 _TF1	=	0x008f
                           000090   195 _P1_0	=	0x0090
                           000091   196 _P1_1	=	0x0091
                           000092   197 _P1_2	=	0x0092
                           000093   198 _P1_3	=	0x0093
                           000094   199 _P1_4	=	0x0094
                           000095   200 _P1_5	=	0x0095
                           000096   201 _P1_6	=	0x0096
                           000097   202 _P1_7	=	0x0097
                           000098   203 _RI	=	0x0098
                           000099   204 _TI	=	0x0099
                           00009A   205 _RB8	=	0x009a
                           00009B   206 _TB8	=	0x009b
                           00009C   207 _REN	=	0x009c
                           00009D   208 _SM2	=	0x009d
                           00009E   209 _SM1	=	0x009e
                           00009F   210 _SM0	=	0x009f
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 _P2_2	=	0x00a2
                           0000A3   214 _P2_3	=	0x00a3
                           0000A4   215 _P2_4	=	0x00a4
                           0000A5   216 _P2_5	=	0x00a5
                           0000A6   217 _P2_6	=	0x00a6
                           0000A7   218 _P2_7	=	0x00a7
                           0000A8   219 _EX0	=	0x00a8
                           0000A9   220 _ET0	=	0x00a9
                           0000AA   221 _EX1	=	0x00aa
                           0000AB   222 _ET1	=	0x00ab
                           0000AC   223 _ES	=	0x00ac
                           0000AF   224 _EA	=	0x00af
                           0000B0   225 _P3_0	=	0x00b0
                           0000B1   226 _P3_1	=	0x00b1
                           0000B2   227 _P3_2	=	0x00b2
                           0000B3   228 _P3_3	=	0x00b3
                           0000B4   229 _P3_4	=	0x00b4
                           0000B5   230 _P3_5	=	0x00b5
                           0000B6   231 _P3_6	=	0x00b6
                           0000B7   232 _P3_7	=	0x00b7
                           0000B0   233 _RXD	=	0x00b0
                           0000B1   234 _TXD	=	0x00b1
                           0000B2   235 _INT0	=	0x00b2
                           0000B3   236 _INT1	=	0x00b3
                           0000B4   237 _T0	=	0x00b4
                           0000B5   238 _T1	=	0x00b5
                           0000B6   239 _WR	=	0x00b6
                           0000B7   240 _RD	=	0x00b7
                           0000B8   241 _PX0	=	0x00b8
                           0000B9   242 _PT0	=	0x00b9
                           0000BA   243 _PX1	=	0x00ba
                           0000BB   244 _PT1	=	0x00bb
                           0000BC   245 _PS	=	0x00bc
                           0000D0   246 _P	=	0x00d0
                           0000D1   247 _F1	=	0x00d1
                           0000D2   248 _OV	=	0x00d2
                           0000D3   249 _RS0	=	0x00d3
                           0000D4   250 _RS1	=	0x00d4
                           0000D5   251 _F0	=	0x00d5
                           0000D6   252 _AC	=	0x00d6
                           0000D7   253 _CY	=	0x00d7
                           0000AD   254 _ET2	=	0x00ad
                           0000BD   255 _PT2	=	0x00bd
                           0000C8   256 _T2CON_0	=	0x00c8
                           0000C9   257 _T2CON_1	=	0x00c9
                           0000CA   258 _T2CON_2	=	0x00ca
                           0000CB   259 _T2CON_3	=	0x00cb
                           0000CC   260 _T2CON_4	=	0x00cc
                           0000CD   261 _T2CON_5	=	0x00cd
                           0000CE   262 _T2CON_6	=	0x00ce
                           0000CF   263 _T2CON_7	=	0x00cf
                           0000C8   264 _CP_RL2	=	0x00c8
                           0000C9   265 _C_T2	=	0x00c9
                           0000CA   266 _TR2	=	0x00ca
                           0000CB   267 _EXEN2	=	0x00cb
                           0000CC   268 _TCLK	=	0x00cc
                           0000CD   269 _RCLK	=	0x00cd
                           0000CE   270 _EXF2	=	0x00ce
                           0000CF   271 _TF2	=	0x00cf
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable register banks
                                    274 ;--------------------------------------------------------
                                    275 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        276 	.ds 8
                                    277 ;--------------------------------------------------------
                                    278 ; internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area DSEG    (DATA)
      000008                        281 _state::
      000008                        282 	.ds 2
      00000A                        283 _data_r::
      00000A                        284 	.ds 1
      00000B                        285 _timerCount::
      00000B                        286 	.ds 2
      00000D                        287 _time_delay::
      00000D                        288 	.ds 2
                                    289 ;--------------------------------------------------------
                                    290 ; overlayable items in internal ram 
                                    291 ;--------------------------------------------------------
                                    292 	.area	OSEG    (OVR,DATA)
                                    293 	.area	OSEG    (OVR,DATA)
                                    294 ;--------------------------------------------------------
                                    295 ; Stack segment in internal ram 
                                    296 ;--------------------------------------------------------
                                    297 	.area	SSEG
      00000F                        298 __start__stack:
      00000F                        299 	.ds	1
                                    300 
                                    301 ;--------------------------------------------------------
                                    302 ; indirectly addressable internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area ISEG    (DATA)
                                    305 ;--------------------------------------------------------
                                    306 ; absolute internal ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area IABS    (ABS,DATA)
                                    309 	.area IABS    (ABS,DATA)
                                    310 ;--------------------------------------------------------
                                    311 ; bit data
                                    312 ;--------------------------------------------------------
                                    313 	.area BSEG    (BIT)
                                    314 ;--------------------------------------------------------
                                    315 ; paged external ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area PSEG    (PAG,XDATA)
                                    318 ;--------------------------------------------------------
                                    319 ; external ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area XSEG    (XDATA)
                                    322 ;--------------------------------------------------------
                                    323 ; absolute external ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area XABS    (ABS,XDATA)
                                    326 ;--------------------------------------------------------
                                    327 ; external initialized ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area XISEG   (XDATA)
                                    330 	.area HOME    (CODE)
                                    331 	.area GSINIT0 (CODE)
                                    332 	.area GSINIT1 (CODE)
                                    333 	.area GSINIT2 (CODE)
                                    334 	.area GSINIT3 (CODE)
                                    335 	.area GSINIT4 (CODE)
                                    336 	.area GSINIT5 (CODE)
                                    337 	.area GSINIT  (CODE)
                                    338 	.area GSFINAL (CODE)
                                    339 	.area CSEG    (CODE)
                                    340 ;--------------------------------------------------------
                                    341 ; interrupt vector 
                                    342 ;--------------------------------------------------------
                                    343 	.area HOME    (CODE)
      000000                        344 __interrupt_vect:
      000000 02 00 11         [24]  345 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  346 	reti
      000004                        347 	.ds	7
      00000B 02 00 7D         [24]  348 	ljmp	_isr_timer0
                                    349 ;--------------------------------------------------------
                                    350 ; global & static initialisations
                                    351 ;--------------------------------------------------------
                                    352 	.area HOME    (CODE)
                                    353 	.area GSINIT  (CODE)
                                    354 	.area GSFINAL (CODE)
                                    355 	.area GSINIT  (CODE)
                                    356 	.globl __sdcc_gsinit_startup
                                    357 	.globl __sdcc_program_startup
                                    358 	.globl __start__stack
                                    359 	.globl __mcs51_genXINIT
                                    360 	.globl __mcs51_genXRAMCLEAR
                                    361 	.globl __mcs51_genRAMCLEAR
                                    362 ;	transmitter.c:3: int state = 0;
      00006A E4               [12]  363 	clr	a
      00006B F5 08            [12]  364 	mov	_state,a
      00006D F5 09            [12]  365 	mov	(_state + 1),a
                                    366 ;	transmitter.c:14: char data_r=0;
                                    367 ;	1-genFromRTrack replaced	mov	_data_r,#0x00
      00006F F5 0A            [12]  368 	mov	_data_r,a
                                    369 ;	transmitter.c:15: volatile int timerCount = 0;
      000071 F5 0B            [12]  370 	mov	_timerCount,a
      000073 F5 0C            [12]  371 	mov	(_timerCount + 1),a
                                    372 ;	transmitter.c:16: volatile int time_delay = 20;
      000075 75 0D 14         [24]  373 	mov	_time_delay,#0x14
                                    374 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      000078 F5 0E            [12]  375 	mov	(_time_delay + 1),a
                                    376 	.area GSFINAL (CODE)
      00007A 02 00 0E         [24]  377 	ljmp	__sdcc_program_startup
                                    378 ;--------------------------------------------------------
                                    379 ; Home
                                    380 ;--------------------------------------------------------
                                    381 	.area HOME    (CODE)
                                    382 	.area HOME    (CODE)
      00000E                        383 __sdcc_program_startup:
      00000E 02 01 9A         [24]  384 	ljmp	_main
                                    385 ;	return from main will return to caller
                                    386 ;--------------------------------------------------------
                                    387 ; code
                                    388 ;--------------------------------------------------------
                                    389 	.area CSEG    (CODE)
                                    390 ;------------------------------------------------------------
                                    391 ;Allocation info for local variables in function 'isr_timer0'
                                    392 ;------------------------------------------------------------
                                    393 ;	transmitter.c:18: void isr_timer0(void) __interrupt 1   // It is called after every 50msec
                                    394 ;	-----------------------------------------
                                    395 ;	 function isr_timer0
                                    396 ;	-----------------------------------------
      00007D                        397 _isr_timer0:
                           000007   398 	ar7 = 0x07
                           000006   399 	ar6 = 0x06
                           000005   400 	ar5 = 0x05
                           000004   401 	ar4 = 0x04
                           000003   402 	ar3 = 0x03
                           000002   403 	ar2 = 0x02
                           000001   404 	ar1 = 0x01
                           000000   405 	ar0 = 0x00
      00007D C0 E0            [24]  406 	push	acc
      00007F C0 F0            [24]  407 	push	b
      000081 C0 82            [24]  408 	push	dpl
      000083 C0 83            [24]  409 	push	dph
      000085 C0 07            [24]  410 	push	ar7
      000087 C0 06            [24]  411 	push	ar6
      000089 C0 D0            [24]  412 	push	psw
      00008B 75 D0 00         [24]  413 	mov	psw,#0x00
                                    414 ;	transmitter.c:20: TH0  = 0X4B;         // ReLoad the timer value for 50ms
      00008E 75 8C 4B         [24]  415 	mov	_TH0,#0x4b
                                    416 ;	transmitter.c:21: TL0  = 0XFD;
      000091 75 8A FD         [24]  417 	mov	_TL0,#0xfd
                                    418 ;	transmitter.c:22: timerCount++;
      000094 AE 0B            [24]  419 	mov	r6,_timerCount
      000096 AF 0C            [24]  420 	mov	r7,(_timerCount + 1)
      000098 74 01            [12]  421 	mov	a,#0x01
      00009A 2E               [12]  422 	add	a,r6
      00009B F5 0B            [12]  423 	mov	_timerCount,a
      00009D E4               [12]  424 	clr	a
      00009E 3F               [12]  425 	addc	a,r7
      00009F F5 0C            [12]  426 	mov	(_timerCount + 1),a
                                    427 ;	transmitter.c:25: if(timerCount <= time_delay) // count for 1sec delay(50msx20 = 1000ms = 1sec)
      0000A1 C3               [12]  428 	clr	c
      0000A2 E5 0D            [12]  429 	mov	a,_time_delay
      0000A4 95 0B            [12]  430 	subb	a,_timerCount
      0000A6 E5 0E            [12]  431 	mov	a,(_time_delay + 1)
      0000A8 64 80            [12]  432 	xrl	a,#0x80
      0000AA 85 0C F0         [24]  433 	mov	b,(_timerCount + 1)
      0000AD 63 F0 80         [24]  434 	xrl	b,#0x80
      0000B0 95 F0            [12]  435 	subb	a,b
      0000B2 40 64            [24]  436 	jc	00124$
                                    437 ;	transmitter.c:27: switch(state)
      0000B4 E5 09            [12]  438 	mov	a,(_state + 1)
      0000B6 30 E7 03         [24]  439 	jnb	acc.7,00157$
      0000B9 02 01 8B         [24]  440 	ljmp	00126$
      0000BC                        441 00157$:
      0000BC C3               [12]  442 	clr	c
      0000BD 74 06            [12]  443 	mov	a,#0x06
      0000BF 95 08            [12]  444 	subb	a,_state
      0000C1 74 80            [12]  445 	mov	a,#(0x00 ^ 0x80)
      0000C3 85 09 F0         [24]  446 	mov	b,(_state + 1)
      0000C6 63 F0 80         [24]  447 	xrl	b,#0x80
      0000C9 95 F0            [12]  448 	subb	a,b
      0000CB 50 03            [24]  449 	jnc	00158$
      0000CD 02 01 8B         [24]  450 	ljmp	00126$
      0000D0                        451 00158$:
      0000D0 E5 08            [12]  452 	mov	a,_state
      0000D2 75 F0 03         [24]  453 	mov	b,#0x03
      0000D5 A4               [48]  454 	mul	ab
      0000D6 90 00 DA         [24]  455 	mov	dptr,#00159$
      0000D9 73               [24]  456 	jmp	@a+dptr
      0000DA                        457 00159$:
      0000DA 02 00 EF         [24]  458 	ljmp	00101$
      0000DD 02 00 F5         [24]  459 	ljmp	00102$
      0000E0 02 00 FB         [24]  460 	ljmp	00103$
      0000E3 02 01 01         [24]  461 	ljmp	00104$
      0000E6 02 01 07         [24]  462 	ljmp	00105$
      0000E9 02 01 0D         [24]  463 	ljmp	00106$
      0000EC 02 01 13         [24]  464 	ljmp	00107$
                                    465 ;	transmitter.c:29: case 0:P2 =0xA0;break;	
      0000EF                        466 00101$:
      0000EF 75 A0 A0         [24]  467 	mov	_P2,#0xa0
      0000F2 02 01 8B         [24]  468 	ljmp	00126$
                                    469 ;	transmitter.c:30: case 1:P2 =0x80;break;
      0000F5                        470 00102$:
      0000F5 75 A0 80         [24]  471 	mov	_P2,#0x80
      0000F8 02 01 8B         [24]  472 	ljmp	00126$
                                    473 ;	transmitter.c:31: case 2:P2 =0x80;break;
      0000FB                        474 00103$:
      0000FB 75 A0 80         [24]  475 	mov	_P2,#0x80
      0000FE 02 01 8B         [24]  476 	ljmp	00126$
                                    477 ;	transmitter.c:32: case 3:P2 =0x40;break;
      000101                        478 00104$:
      000101 75 A0 40         [24]  479 	mov	_P2,#0x40
      000104 02 01 8B         [24]  480 	ljmp	00126$
                                    481 ;	transmitter.c:33: case 4:P2 =0x40;break;
      000107                        482 00105$:
      000107 75 A0 40         [24]  483 	mov	_P2,#0x40
      00010A 02 01 8B         [24]  484 	ljmp	00126$
                                    485 ;	transmitter.c:34: case 5:P2 =0x20;break;
      00010D                        486 00106$:
      00010D 75 A0 20         [24]  487 	mov	_P2,#0x20
      000110 02 01 8B         [24]  488 	ljmp	00126$
                                    489 ;	transmitter.c:35: case 6:P2 =0x20;break;
      000113                        490 00107$:
      000113 75 A0 20         [24]  491 	mov	_P2,#0x20
                                    492 ;	transmitter.c:36: default:break;}
      000116 80 73            [24]  493 	sjmp	00126$
      000118                        494 00124$:
                                    495 ;	transmitter.c:39: else if((timerCount > time_delay) &&(timerCount<time_delay*2))
      000118 C3               [12]  496 	clr	c
      000119 E5 0D            [12]  497 	mov	a,_time_delay
      00011B 95 0B            [12]  498 	subb	a,_timerCount
      00011D E5 0E            [12]  499 	mov	a,(_time_delay + 1)
      00011F 64 80            [12]  500 	xrl	a,#0x80
      000121 85 0C F0         [24]  501 	mov	b,(_timerCount + 1)
      000124 63 F0 80         [24]  502 	xrl	b,#0x80
      000127 95 F0            [12]  503 	subb	a,b
      000129 50 5B            [24]  504 	jnc	00120$
      00012B E5 0D            [12]  505 	mov	a,_time_delay
      00012D 25 E0            [12]  506 	add	a,acc
      00012F FE               [12]  507 	mov	r6,a
      000130 E5 0E            [12]  508 	mov	a,(_time_delay + 1)
      000132 33               [12]  509 	rlc	a
      000133 FF               [12]  510 	mov	r7,a
      000134 C3               [12]  511 	clr	c
      000135 E5 0B            [12]  512 	mov	a,_timerCount
      000137 9E               [12]  513 	subb	a,r6
      000138 E5 0C            [12]  514 	mov	a,(_timerCount + 1)
      00013A 64 80            [12]  515 	xrl	a,#0x80
      00013C 8F F0            [24]  516 	mov	b,r7
      00013E 63 F0 80         [24]  517 	xrl	b,#0x80
      000141 95 F0            [12]  518 	subb	a,b
      000143 50 41            [24]  519 	jnc	00120$
                                    520 ;	transmitter.c:41: switch(state)
      000145 E5 09            [12]  521 	mov	a,(_state + 1)
      000147 20 E7 41         [24]  522 	jb	acc.7,00126$
      00014A C3               [12]  523 	clr	c
      00014B 74 06            [12]  524 	mov	a,#0x06
      00014D 95 08            [12]  525 	subb	a,_state
      00014F 74 80            [12]  526 	mov	a,#(0x00 ^ 0x80)
      000151 85 09 F0         [24]  527 	mov	b,(_state + 1)
      000154 63 F0 80         [24]  528 	xrl	b,#0x80
      000157 95 F0            [12]  529 	subb	a,b
      000159 40 30            [24]  530 	jc	00126$
      00015B E5 08            [12]  531 	mov	a,_state
      00015D 75 F0 03         [24]  532 	mov	b,#0x03
      000160 A4               [48]  533 	mul	ab
      000161 90 01 65         [24]  534 	mov	dptr,#00164$
      000164 73               [24]  535 	jmp	@a+dptr
      000165                        536 00164$:
      000165 02 01 77         [24]  537 	ljmp	00114$
      000168 02 01 77         [24]  538 	ljmp	00114$
      00016B 02 01 7C         [24]  539 	ljmp	00115$
      00016E 02 01 77         [24]  540 	ljmp	00114$
      000171 02 01 77         [24]  541 	ljmp	00114$
      000174 02 01 81         [24]  542 	ljmp	00116$
                                    543 ;	transmitter.c:47: case 6:P2 =0x00;break;
      000177                        544 00114$:
      000177 75 A0 00         [24]  545 	mov	_P2,#0x00
                                    546 ;	transmitter.c:48: case 2:P2 =0x80;break;
      00017A 80 0F            [24]  547 	sjmp	00126$
      00017C                        548 00115$:
      00017C 75 A0 80         [24]  549 	mov	_P2,#0x80
                                    550 ;	transmitter.c:49: case 5:P2 =0x20;break;
      00017F 80 0A            [24]  551 	sjmp	00126$
      000181                        552 00116$:
      000181 75 A0 20         [24]  553 	mov	_P2,#0x20
                                    554 ;	transmitter.c:50: default:break;}    }
      000184 80 05            [24]  555 	sjmp	00126$
      000186                        556 00120$:
                                    557 ;	transmitter.c:53: timerCount = 0;
      000186 E4               [12]  558 	clr	a
      000187 F5 0B            [12]  559 	mov	_timerCount,a
      000189 F5 0C            [12]  560 	mov	(_timerCount + 1),a
      00018B                        561 00126$:
                                    562 ;	transmitter.c:54: }
      00018B D0 D0            [24]  563 	pop	psw
      00018D D0 06            [24]  564 	pop	ar6
      00018F D0 07            [24]  565 	pop	ar7
      000191 D0 83            [24]  566 	pop	dph
      000193 D0 82            [24]  567 	pop	dpl
      000195 D0 F0            [24]  568 	pop	b
      000197 D0 E0            [24]  569 	pop	acc
      000199 32               [24]  570 	reti
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'main'
                                    573 ;------------------------------------------------------------
                                    574 ;	transmitter.c:56: void main(void)
                                    575 ;	-----------------------------------------
                                    576 ;	 function main
                                    577 ;	-----------------------------------------
      00019A                        578 _main:
                                    579 ;	transmitter.c:58: P1 = 0xff;
      00019A 75 90 FF         [24]  580 	mov	_P1,#0xff
                                    581 ;	transmitter.c:59: P2 = 0x00;
                                    582 ;	transmitter.c:60: state = 0;
      00019D E4               [12]  583 	clr	a
      00019E F5 A0            [12]  584 	mov	_P2,a
      0001A0 F5 08            [12]  585 	mov	_state,a
      0001A2 F5 09            [12]  586 	mov	(_state + 1),a
                                    587 ;	transmitter.c:61: startup();
      0001A4 12 02 32         [24]  588 	lcall	_startup
                                    589 ;	transmitter.c:62: P2 = 0x00;
      0001A7 75 A0 00         [24]  590 	mov	_P2,#0x00
                                    591 ;	transmitter.c:63: UART_Init();
      0001AA 12 02 0A         [24]  592 	lcall	_UART_Init
                                    593 ;	transmitter.c:64: start:while(!data_r)
      0001AD                        594 00102$:
      0001AD E5 0A            [12]  595 	mov	a,_data_r
      0001AF 70 13            [24]  596 	jnz	00104$
                                    597 ;	transmitter.c:66: data_r=SBUF;
      0001B1 85 99 0A         [24]  598 	mov	_data_r,_SBUF
                                    599 ;	transmitter.c:67: RI=0;
                                    600 ;	assignBit
      0001B4 C2 98            [12]  601 	clr	_RI
                                    602 ;	transmitter.c:68: P2 = 0xA0; // Turn ON all LED's connected to Port1
      0001B6 75 A0 A0         [24]  603 	mov	_P2,#0xa0
                                    604 ;	transmitter.c:69: delay();
      0001B9 12 01 E1         [24]  605 	lcall	_delay
                                    606 ;	transmitter.c:70: P2 = 0x00; // Turn OFF all LED's connected to Port1
      0001BC 75 A0 00         [24]  607 	mov	_P2,#0x00
                                    608 ;	transmitter.c:71: delay();
      0001BF 12 01 E1         [24]  609 	lcall	_delay
      0001C2 80 E9            [24]  610 	sjmp	00102$
      0001C4                        611 00104$:
                                    612 ;	transmitter.c:74: if(data_r=='x')
      0001C4 74 78            [12]  613 	mov	a,#0x78
      0001C6 B5 0A E4         [24]  614 	cjne	a,_data_r,00102$
                                    615 ;	transmitter.c:76: Transmit_data('y');
      0001C9 75 82 79         [24]  616 	mov	dpl,#0x79
      0001CC 12 02 16         [24]  617 	lcall	_Transmit_data
                                    618 ;	transmitter.c:77: data_r=0;
      0001CF 75 0A 00         [24]  619 	mov	_data_r,#0x00
                                    620 ;	transmitter.c:82: InitTimer1();
      0001D2 12 03 28         [24]  621 	lcall	_InitTimer1
                                    622 ;	transmitter.c:83: ET0 = 1;         // Enable Timer1 interrupts	
                                    623 ;	assignBit
      0001D5 D2 A9            [12]  624 	setb	_ET0
                                    625 ;	transmitter.c:84: EA  = 1;         // Global interrupt enable
                                    626 ;	assignBit
      0001D7 D2 AF            [12]  627 	setb	_EA
                                    628 ;	transmitter.c:86: while(1)
      0001D9                        629 00109$:
                                    630 ;	transmitter.c:88: touch();
      0001D9 12 02 7D         [24]  631 	lcall	_touch
                                    632 ;	transmitter.c:89: check_x();
      0001DC 12 02 1F         [24]  633 	lcall	_check_x
                                    634 ;	transmitter.c:91: }
      0001DF 80 F8            [24]  635 	sjmp	00109$
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function 'delay'
                                    638 ;------------------------------------------------------------
                                    639 ;i                         Allocated to registers r6 r7 
                                    640 ;j                         Allocated to registers r4 r5 
                                    641 ;------------------------------------------------------------
                                    642 ;	transmitter.c:94: void delay(void)
                                    643 ;	-----------------------------------------
                                    644 ;	 function delay
                                    645 ;	-----------------------------------------
      0001E1                        646 _delay:
                                    647 ;	transmitter.c:97: for(i=0;i<0x33;i++)
      0001E1 7E 00            [12]  648 	mov	r6,#0x00
      0001E3 7F 00            [12]  649 	mov	r7,#0x00
      0001E5                        650 00106$:
                                    651 ;	transmitter.c:98: for(j=0;j<0xff;j++);
      0001E5 7C FF            [12]  652 	mov	r4,#0xff
      0001E7 7D 00            [12]  653 	mov	r5,#0x00
      0001E9                        654 00105$:
      0001E9 EC               [12]  655 	mov	a,r4
      0001EA 24 FF            [12]  656 	add	a,#0xff
      0001EC FA               [12]  657 	mov	r2,a
      0001ED ED               [12]  658 	mov	a,r5
      0001EE 34 FF            [12]  659 	addc	a,#0xff
      0001F0 FB               [12]  660 	mov	r3,a
      0001F1 8A 04            [24]  661 	mov	ar4,r2
      0001F3 8B 05            [24]  662 	mov	ar5,r3
      0001F5 EA               [12]  663 	mov	a,r2
      0001F6 4B               [12]  664 	orl	a,r3
      0001F7 70 F0            [24]  665 	jnz	00105$
                                    666 ;	transmitter.c:97: for(i=0;i<0x33;i++)
      0001F9 0E               [12]  667 	inc	r6
      0001FA BE 00 01         [24]  668 	cjne	r6,#0x00,00124$
      0001FD 0F               [12]  669 	inc	r7
      0001FE                        670 00124$:
      0001FE C3               [12]  671 	clr	c
      0001FF EE               [12]  672 	mov	a,r6
      000200 94 33            [12]  673 	subb	a,#0x33
      000202 EF               [12]  674 	mov	a,r7
      000203 64 80            [12]  675 	xrl	a,#0x80
      000205 94 80            [12]  676 	subb	a,#0x80
      000207 40 DC            [24]  677 	jc	00106$
                                    678 ;	transmitter.c:99: }
      000209 22               [24]  679 	ret
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function 'UART_Init'
                                    682 ;------------------------------------------------------------
                                    683 ;	transmitter.c:101: void UART_Init()
                                    684 ;	-----------------------------------------
                                    685 ;	 function UART_Init
                                    686 ;	-----------------------------------------
      00020A                        687 _UART_Init:
                                    688 ;	transmitter.c:103: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      00020A 75 89 20         [24]  689 	mov	_TMOD,#0x20
                                    690 ;	transmitter.c:104: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      00020D 75 8D FD         [24]  691 	mov	_TH1,#0xfd
                                    692 ;	transmitter.c:105: SCON = 0x50;		/* Mode 1, reception enable */
      000210 75 98 50         [24]  693 	mov	_SCON,#0x50
                                    694 ;	transmitter.c:106: TR1 = 1;		/* Start timer 1 */
                                    695 ;	assignBit
      000213 D2 8E            [12]  696 	setb	_TR1
                                    697 ;	transmitter.c:107: }
      000215 22               [24]  698 	ret
                                    699 ;------------------------------------------------------------
                                    700 ;Allocation info for local variables in function 'Transmit_data'
                                    701 ;------------------------------------------------------------
                                    702 ;tx_data                   Allocated to registers 
                                    703 ;------------------------------------------------------------
                                    704 ;	transmitter.c:109: void Transmit_data(char tx_data)
                                    705 ;	-----------------------------------------
                                    706 ;	 function Transmit_data
                                    707 ;	-----------------------------------------
      000216                        708 _Transmit_data:
      000216 85 82 99         [24]  709 	mov	_SBUF,dpl
                                    710 ;	transmitter.c:112: while (TI==0);		/* Wait until stop bit transmit */
      000219                        711 00101$:
                                    712 ;	transmitter.c:113: TI = 0;			/* Clear TI flag */
                                    713 ;	assignBit
      000219 10 99 02         [24]  714 	jbc	_TI,00114$
      00021C 80 FB            [24]  715 	sjmp	00101$
      00021E                        716 00114$:
                                    717 ;	transmitter.c:114: }
      00021E 22               [24]  718 	ret
                                    719 ;------------------------------------------------------------
                                    720 ;Allocation info for local variables in function 'check_x'
                                    721 ;------------------------------------------------------------
                                    722 ;	transmitter.c:118: void check_x()
                                    723 ;	-----------------------------------------
                                    724 ;	 function check_x
                                    725 ;	-----------------------------------------
      00021F                        726 _check_x:
                                    727 ;	transmitter.c:121: TI=0;
                                    728 ;	assignBit
      00021F C2 99            [12]  729 	clr	_TI
                                    730 ;	transmitter.c:122: data_r = SBUF;		/* Load char in SBUF register */
      000221 85 99 0A         [24]  731 	mov	_data_r,_SBUF
                                    732 ;	transmitter.c:123: RI = 0;			/* Clear TI flag */
                                    733 ;	assignBit
      000224 C2 98            [12]  734 	clr	_RI
                                    735 ;	transmitter.c:124: if(data_r=='x')
      000226 74 78            [12]  736 	mov	a,#0x78
      000228 B5 0A 06         [24]  737 	cjne	a,_data_r,00103$
                                    738 ;	transmitter.c:125: Transmit_data('y');
      00022B 75 82 79         [24]  739 	mov	dpl,#0x79
                                    740 ;	transmitter.c:126: }
      00022E 02 02 16         [24]  741 	ljmp	_Transmit_data
      000231                        742 00103$:
      000231 22               [24]  743 	ret
                                    744 ;------------------------------------------------------------
                                    745 ;Allocation info for local variables in function 'startup'
                                    746 ;------------------------------------------------------------
                                    747 ;	transmitter.c:127: void startup(void)
                                    748 ;	-----------------------------------------
                                    749 ;	 function startup
                                    750 ;	-----------------------------------------
      000232                        751 _startup:
                                    752 ;	transmitter.c:129: P2 = 0x00;
      000232 75 A0 00         [24]  753 	mov	_P2,#0x00
                                    754 ;	transmitter.c:130: delay();delay();delay();delay();
      000235 12 01 E1         [24]  755 	lcall	_delay
      000238 12 01 E1         [24]  756 	lcall	_delay
      00023B 12 01 E1         [24]  757 	lcall	_delay
      00023E 12 01 E1         [24]  758 	lcall	_delay
                                    759 ;	transmitter.c:131: P2 = 0xE0;
      000241 75 A0 E0         [24]  760 	mov	_P2,#0xe0
                                    761 ;	transmitter.c:132: delay();delay();delay();delay();
      000244 12 01 E1         [24]  762 	lcall	_delay
      000247 12 01 E1         [24]  763 	lcall	_delay
      00024A 12 01 E1         [24]  764 	lcall	_delay
      00024D 12 01 E1         [24]  765 	lcall	_delay
                                    766 ;	transmitter.c:133: P2 = 0x80;
      000250 75 A0 80         [24]  767 	mov	_P2,#0x80
                                    768 ;	transmitter.c:134: delay();delay();delay();delay();
      000253 12 01 E1         [24]  769 	lcall	_delay
      000256 12 01 E1         [24]  770 	lcall	_delay
      000259 12 01 E1         [24]  771 	lcall	_delay
      00025C 12 01 E1         [24]  772 	lcall	_delay
                                    773 ;	transmitter.c:135: P2 = 0x40;
      00025F 75 A0 40         [24]  774 	mov	_P2,#0x40
                                    775 ;	transmitter.c:136: delay();delay();delay();delay();
      000262 12 01 E1         [24]  776 	lcall	_delay
      000265 12 01 E1         [24]  777 	lcall	_delay
      000268 12 01 E1         [24]  778 	lcall	_delay
      00026B 12 01 E1         [24]  779 	lcall	_delay
                                    780 ;	transmitter.c:137: P2 = 0x20;
      00026E 75 A0 20         [24]  781 	mov	_P2,#0x20
                                    782 ;	transmitter.c:138: delay();delay();delay();delay();
      000271 12 01 E1         [24]  783 	lcall	_delay
      000274 12 01 E1         [24]  784 	lcall	_delay
      000277 12 01 E1         [24]  785 	lcall	_delay
                                    786 ;	transmitter.c:139: }
      00027A 02 01 E1         [24]  787 	ljmp	_delay
                                    788 ;------------------------------------------------------------
                                    789 ;Allocation info for local variables in function 'touch'
                                    790 ;------------------------------------------------------------
                                    791 ;	transmitter.c:141: void touch(void)
                                    792 ;	-----------------------------------------
                                    793 ;	 function touch
                                    794 ;	-----------------------------------------
      00027D                        795 _touch:
                                    796 ;	transmitter.c:143: switch(P1)
      00027D AF 90            [24]  797 	mov	r7,_P1
      00027F BF 1F 03         [24]  798 	cjne	r7,#0x1f,00140$
      000282 02 03 15         [24]  799 	ljmp	00107$
      000285                        800 00140$:
      000285 BF 2F 03         [24]  801 	cjne	r7,#0x2f,00141$
      000288 02 03 02         [24]  802 	ljmp	00106$
      00028B                        803 00141$:
      00028B BF 37 02         [24]  804 	cjne	r7,#0x37,00142$
      00028E 80 5F            [24]  805 	sjmp	00105$
      000290                        806 00142$:
      000290 BF 3B 02         [24]  807 	cjne	r7,#0x3b,00143$
      000293 80 47            [24]  808 	sjmp	00104$
      000295                        809 00143$:
      000295 BF 3D 02         [24]  810 	cjne	r7,#0x3d,00144$
      000298 80 2F            [24]  811 	sjmp	00103$
      00029A                        812 00144$:
      00029A BF 3E 02         [24]  813 	cjne	r7,#0x3e,00145$
      00029D 80 17            [24]  814 	sjmp	00102$
      00029F                        815 00145$:
      00029F BF 3F 02         [24]  816 	cjne	r7,#0x3f,00146$
      0002A2 80 01            [24]  817 	sjmp	00147$
      0002A4                        818 00146$:
      0002A4 22               [24]  819 	ret
      0002A5                        820 00147$:
                                    821 ;	transmitter.c:146: Transmit_data('l');
      0002A5 75 82 6C         [24]  822 	mov	dpl,#0x6c
      0002A8 12 02 16         [24]  823 	lcall	_Transmit_data
                                    824 ;	transmitter.c:147: time_delay=10;
      0002AB 75 0D 0A         [24]  825 	mov	_time_delay,#0x0a
                                    826 ;	transmitter.c:148: state = 0;
      0002AE E4               [12]  827 	clr	a
      0002AF F5 0E            [12]  828 	mov	(_time_delay + 1),a
      0002B1 F5 08            [12]  829 	mov	_state,a
      0002B3 F5 09            [12]  830 	mov	(_state + 1),a
                                    831 ;	transmitter.c:149: break;
                                    832 ;	transmitter.c:151: case 0x3e:
      0002B5 22               [24]  833 	ret
      0002B6                        834 00102$:
                                    835 ;	transmitter.c:152: Transmit_data('a');
      0002B6 75 82 61         [24]  836 	mov	dpl,#0x61
      0002B9 12 02 16         [24]  837 	lcall	_Transmit_data
                                    838 ;	transmitter.c:153: time_delay=120;
      0002BC 75 0D 78         [24]  839 	mov	_time_delay,#0x78
      0002BF 75 0E 00         [24]  840 	mov	(_time_delay + 1),#0x00
                                    841 ;	transmitter.c:154: state = 1;
      0002C2 75 08 01         [24]  842 	mov	_state,#0x01
      0002C5 75 09 00         [24]  843 	mov	(_state + 1),#0x00
                                    844 ;	transmitter.c:155: break;
                                    845 ;	transmitter.c:157: case 0x3d:
      0002C8 22               [24]  846 	ret
      0002C9                        847 00103$:
                                    848 ;	transmitter.c:158: Transmit_data('b');
      0002C9 75 82 62         [24]  849 	mov	dpl,#0x62
      0002CC 12 02 16         [24]  850 	lcall	_Transmit_data
                                    851 ;	transmitter.c:159: state = 2;
      0002CF 75 08 02         [24]  852 	mov	_state,#0x02
      0002D2 75 09 00         [24]  853 	mov	(_state + 1),#0x00
                                    854 ;	transmitter.c:160: time_delay=5;
      0002D5 75 0D 05         [24]  855 	mov	_time_delay,#0x05
      0002D8 75 0E 00         [24]  856 	mov	(_time_delay + 1),#0x00
                                    857 ;	transmitter.c:161: break;
                                    858 ;	transmitter.c:163: case 0x3b:
      0002DB 22               [24]  859 	ret
      0002DC                        860 00104$:
                                    861 ;	transmitter.c:164: Transmit_data('c');
      0002DC 75 82 63         [24]  862 	mov	dpl,#0x63
      0002DF 12 02 16         [24]  863 	lcall	_Transmit_data
                                    864 ;	transmitter.c:165: time_delay=10;
      0002E2 75 0D 0A         [24]  865 	mov	_time_delay,#0x0a
      0002E5 75 0E 00         [24]  866 	mov	(_time_delay + 1),#0x00
                                    867 ;	transmitter.c:166: state = 3;
      0002E8 75 08 03         [24]  868 	mov	_state,#0x03
      0002EB 75 09 00         [24]  869 	mov	(_state + 1),#0x00
                                    870 ;	transmitter.c:167: break;
                                    871 ;	transmitter.c:169: case 0x37:
      0002EE 22               [24]  872 	ret
      0002EF                        873 00105$:
                                    874 ;	transmitter.c:170: Transmit_data('e');
      0002EF 75 82 65         [24]  875 	mov	dpl,#0x65
      0002F2 12 02 16         [24]  876 	lcall	_Transmit_data
                                    877 ;	transmitter.c:171: state = 4;
      0002F5 75 08 04         [24]  878 	mov	_state,#0x04
      0002F8 75 09 00         [24]  879 	mov	(_state + 1),#0x00
                                    880 ;	transmitter.c:172: time_delay=10;
      0002FB 75 0D 0A         [24]  881 	mov	_time_delay,#0x0a
      0002FE 75 0E 00         [24]  882 	mov	(_time_delay + 1),#0x00
                                    883 ;	transmitter.c:173: break;
                                    884 ;	transmitter.c:175: case 0x2f:
      000301 22               [24]  885 	ret
      000302                        886 00106$:
                                    887 ;	transmitter.c:176: Transmit_data('f');
      000302 75 82 66         [24]  888 	mov	dpl,#0x66
      000305 12 02 16         [24]  889 	lcall	_Transmit_data
                                    890 ;	transmitter.c:177: state = 5;
      000308 75 08 05         [24]  891 	mov	_state,#0x05
      00030B 75 09 00         [24]  892 	mov	(_state + 1),#0x00
                                    893 ;	transmitter.c:178: time_delay=5;
      00030E 75 0D 05         [24]  894 	mov	_time_delay,#0x05
      000311 75 0E 00         [24]  895 	mov	(_time_delay + 1),#0x00
                                    896 ;	transmitter.c:179: break;
                                    897 ;	transmitter.c:181: case 0x1f:
      000314 22               [24]  898 	ret
      000315                        899 00107$:
                                    900 ;	transmitter.c:182: Transmit_data('g');
      000315 75 82 67         [24]  901 	mov	dpl,#0x67
      000318 12 02 16         [24]  902 	lcall	_Transmit_data
                                    903 ;	transmitter.c:183: state = 6;
      00031B 75 08 06         [24]  904 	mov	_state,#0x06
      00031E 75 09 00         [24]  905 	mov	(_state + 1),#0x00
                                    906 ;	transmitter.c:184: time_delay=120;
      000321 75 0D 78         [24]  907 	mov	_time_delay,#0x78
      000324 75 0E 00         [24]  908 	mov	(_time_delay + 1),#0x00
                                    909 ;	transmitter.c:188: }
                                    910 ;	transmitter.c:189: }
      000327 22               [24]  911 	ret
                                    912 ;------------------------------------------------------------
                                    913 ;Allocation info for local variables in function 'InitTimer1'
                                    914 ;------------------------------------------------------------
                                    915 ;	transmitter.c:193: void InitTimer1(void)
                                    916 ;	-----------------------------------------
                                    917 ;	 function InitTimer1
                                    918 ;	-----------------------------------------
      000328                        919 _InitTimer1:
                                    920 ;	transmitter.c:196: TMOD |= 0x01;    // Set timer0 in mode 1
      000328 43 89 01         [24]  921 	orl	_TMOD,#0x01
                                    922 ;	transmitter.c:197: TH0 = 0x4B;      // 50 msec reloading time
      00032B 75 8C 4B         [24]  923 	mov	_TH0,#0x4b
                                    924 ;	transmitter.c:198: TL0 = 0xFD;      // First time value
      00032E 75 8A FD         [24]  925 	mov	_TL0,#0xfd
                                    926 ;	transmitter.c:199: TR0 = 1;         // Start Timer 1
                                    927 ;	assignBit
      000331 D2 8C            [12]  928 	setb	_TR0
                                    929 ;	transmitter.c:200: ET0 = 1;         // Enable Timer1 interrupts	
                                    930 ;	assignBit
      000333 D2 A9            [12]  931 	setb	_ET0
                                    932 ;	transmitter.c:201: }
      000335 22               [24]  933 	ret
                                    934 	.area CSEG    (CODE)
                                    935 	.area CONST   (CODE)
                                    936 	.area XINIT   (CODE)
                                    937 	.area CABS    (ABS,CODE)
