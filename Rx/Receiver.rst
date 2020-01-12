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
                                    132 	.globl _state
                                    133 	.globl _time_delay
                                    134 	.globl _timerCount
                                    135 	.globl _data_r
                                    136 	.globl _startup
                                    137 	.globl _delay
                                    138 	.globl _UART_Init
                                    139 	.globl _Transmit_data
                                    140 	.globl _handshake
                                    141 	.globl _check_data
                                    142 	.globl _InitTimer0
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
                                    278 ; overlayable bit register bank
                                    279 ;--------------------------------------------------------
                                    280 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        281 bits:
      000020                        282 	.ds 1
                           008000   283 	b0 = bits[0]
                           008100   284 	b1 = bits[1]
                           008200   285 	b2 = bits[2]
                           008300   286 	b3 = bits[3]
                           008400   287 	b4 = bits[4]
                           008500   288 	b5 = bits[5]
                           008600   289 	b6 = bits[6]
                           008700   290 	b7 = bits[7]
                                    291 ;--------------------------------------------------------
                                    292 ; internal ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area DSEG    (DATA)
      000008                        295 _data_r::
      000008                        296 	.ds 1
      000009                        297 _timerCount::
      000009                        298 	.ds 2
      00000B                        299 _time_delay::
      00000B                        300 	.ds 2
      00000D                        301 _state::
      00000D                        302 	.ds 2
                                    303 ;--------------------------------------------------------
                                    304 ; overlayable items in internal ram 
                                    305 ;--------------------------------------------------------
                                    306 	.area	OSEG    (OVR,DATA)
                                    307 	.area	OSEG    (OVR,DATA)
                                    308 ;--------------------------------------------------------
                                    309 ; Stack segment in internal ram 
                                    310 ;--------------------------------------------------------
                                    311 	.area	SSEG
      000021                        312 __start__stack:
      000021                        313 	.ds	1
                                    314 
                                    315 ;--------------------------------------------------------
                                    316 ; indirectly addressable internal ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area ISEG    (DATA)
                                    319 ;--------------------------------------------------------
                                    320 ; absolute internal ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area IABS    (ABS,DATA)
                                    323 	.area IABS    (ABS,DATA)
                                    324 ;--------------------------------------------------------
                                    325 ; bit data
                                    326 ;--------------------------------------------------------
                                    327 	.area BSEG    (BIT)
                                    328 ;--------------------------------------------------------
                                    329 ; paged external ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area PSEG    (PAG,XDATA)
                                    332 ;--------------------------------------------------------
                                    333 ; external ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area XSEG    (XDATA)
                                    336 ;--------------------------------------------------------
                                    337 ; absolute external ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area XABS    (ABS,XDATA)
                                    340 ;--------------------------------------------------------
                                    341 ; external initialized ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XISEG   (XDATA)
                                    344 	.area HOME    (CODE)
                                    345 	.area GSINIT0 (CODE)
                                    346 	.area GSINIT1 (CODE)
                                    347 	.area GSINIT2 (CODE)
                                    348 	.area GSINIT3 (CODE)
                                    349 	.area GSINIT4 (CODE)
                                    350 	.area GSINIT5 (CODE)
                                    351 	.area GSINIT  (CODE)
                                    352 	.area GSFINAL (CODE)
                                    353 	.area CSEG    (CODE)
                                    354 ;--------------------------------------------------------
                                    355 ; interrupt vector 
                                    356 ;--------------------------------------------------------
                                    357 	.area HOME    (CODE)
      000000                        358 __interrupt_vect:
      000000 02 00 11         [24]  359 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  360 	reti
      000004                        361 	.ds	7
      00000B 02 00 77         [24]  362 	ljmp	_isr_timer0
                                    363 ;--------------------------------------------------------
                                    364 ; global & static initialisations
                                    365 ;--------------------------------------------------------
                                    366 	.area HOME    (CODE)
                                    367 	.area GSINIT  (CODE)
                                    368 	.area GSFINAL (CODE)
                                    369 	.area GSINIT  (CODE)
                                    370 	.globl __sdcc_gsinit_startup
                                    371 	.globl __sdcc_program_startup
                                    372 	.globl __start__stack
                                    373 	.globl __mcs51_genXINIT
                                    374 	.globl __mcs51_genXRAMCLEAR
                                    375 	.globl __mcs51_genRAMCLEAR
                                    376 ;	Receiver.c:22: volatile int timerCount = 0;
      00006A E4               [12]  377 	clr	a
      00006B F5 09            [12]  378 	mov	_timerCount,a
      00006D F5 0A            [12]  379 	mov	(_timerCount + 1),a
                                    380 ;	Receiver.c:23: volatile int time_delay = 15;
      00006F 75 0B 0F         [24]  381 	mov	_time_delay,#0x0f
                                    382 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      000072 F5 0C            [12]  383 	mov	(_time_delay + 1),a
                                    384 	.area GSFINAL (CODE)
      000074 02 00 0E         [24]  385 	ljmp	__sdcc_program_startup
                                    386 ;--------------------------------------------------------
                                    387 ; Home
                                    388 ;--------------------------------------------------------
                                    389 	.area HOME    (CODE)
                                    390 	.area HOME    (CODE)
      00000E                        391 __sdcc_program_startup:
      00000E 02 02 29         [24]  392 	ljmp	_main
                                    393 ;	return from main will return to caller
                                    394 ;--------------------------------------------------------
                                    395 ; code
                                    396 ;--------------------------------------------------------
                                    397 	.area CSEG    (CODE)
                                    398 ;------------------------------------------------------------
                                    399 ;Allocation info for local variables in function 'isr_timer0'
                                    400 ;------------------------------------------------------------
                                    401 ;	Receiver.c:27: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
                                    402 ;	-----------------------------------------
                                    403 ;	 function isr_timer0
                                    404 ;	-----------------------------------------
      000077                        405 _isr_timer0:
                           000007   406 	ar7 = 0x07
                           000006   407 	ar6 = 0x06
                           000005   408 	ar5 = 0x05
                           000004   409 	ar4 = 0x04
                           000003   410 	ar3 = 0x03
                           000002   411 	ar2 = 0x02
                           000001   412 	ar1 = 0x01
                           000000   413 	ar0 = 0x00
      000077 C0 20            [24]  414 	push	bits
      000079 C0 E0            [24]  415 	push	acc
      00007B C0 F0            [24]  416 	push	b
      00007D C0 82            [24]  417 	push	dpl
      00007F C0 83            [24]  418 	push	dph
      000081 C0 07            [24]  419 	push	(0+7)
      000083 C0 06            [24]  420 	push	(0+6)
      000085 C0 05            [24]  421 	push	(0+5)
      000087 C0 04            [24]  422 	push	(0+4)
      000089 C0 03            [24]  423 	push	(0+3)
      00008B C0 02            [24]  424 	push	(0+2)
      00008D C0 01            [24]  425 	push	(0+1)
      00008F C0 00            [24]  426 	push	(0+0)
      000091 C0 D0            [24]  427 	push	psw
      000093 75 D0 00         [24]  428 	mov	psw,#0x00
                                    429 ;	Receiver.c:29: TH0  = 0Xee;         // ReLoad the timer value for 5ms
      000096 75 8C EE         [24]  430 	mov	_TH0,#0xee
                                    431 ;	Receiver.c:30: TL0  = 0X00;
      000099 75 8A 00         [24]  432 	mov	_TL0,#0x00
                                    433 ;	Receiver.c:31: timerCount++;
      00009C AE 09            [24]  434 	mov	r6,_timerCount
      00009E AF 0A            [24]  435 	mov	r7,(_timerCount + 1)
      0000A0 74 01            [12]  436 	mov	a,#0x01
      0000A2 2E               [12]  437 	add	a,r6
      0000A3 F5 09            [12]  438 	mov	_timerCount,a
      0000A5 E4               [12]  439 	clr	a
      0000A6 3F               [12]  440 	addc	a,r7
      0000A7 F5 0A            [12]  441 	mov	(_timerCount + 1),a
                                    442 ;	Receiver.c:32: rst_out=!rst_out;
      0000A9 B2 96            [12]  443 	cpl	_P1_6
                                    444 ;	Receiver.c:34: if(state!=20)
      0000AB 74 14            [12]  445 	mov	a,#0x14
      0000AD B5 0D 07         [24]  446 	cjne	a,_state,00168$
      0000B0 E4               [12]  447 	clr	a
      0000B1 B5 0E 03         [24]  448 	cjne	a,(_state + 1),00168$
      0000B4 02 02 0C         [24]  449 	ljmp	00134$
      0000B7                        450 00168$:
                                    451 ;	Receiver.c:36: if(timerCount < (time_delay*30)) // count for LED-ON delay
      0000B7 85 0B 0F         [24]  452 	mov	__mulint_PARM_2,_time_delay
      0000BA 85 0C 10         [24]  453 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      0000BD 90 00 1E         [24]  454 	mov	dptr,#0x001e
      0000C0 12 03 79         [24]  455 	lcall	__mulint
      0000C3 AE 82            [24]  456 	mov	r6,dpl
      0000C5 AF 83            [24]  457 	mov	r7,dph
      0000C7 C3               [12]  458 	clr	c
      0000C8 E5 09            [12]  459 	mov	a,_timerCount
      0000CA 9E               [12]  460 	subb	a,r6
      0000CB E5 0A            [12]  461 	mov	a,(_timerCount + 1)
      0000CD 64 80            [12]  462 	xrl	a,#0x80
      0000CF 8F F0            [24]  463 	mov	b,r7
      0000D1 63 F0 80         [24]  464 	xrl	b,#0x80
      0000D4 95 F0            [12]  465 	subb	a,b
      0000D6 40 03            [24]  466 	jc	00169$
      0000D8 02 01 75         [24]  467 	ljmp	00130$
      0000DB                        468 00169$:
                                    469 ;	Receiver.c:38: switch(state)
      0000DB E5 0E            [12]  470 	mov	a,(_state + 1)
      0000DD 30 E7 03         [24]  471 	jnb	acc.7,00170$
      0000E0 02 02 0C         [24]  472 	ljmp	00134$
      0000E3                        473 00170$:
      0000E3 C3               [12]  474 	clr	c
      0000E4 74 09            [12]  475 	mov	a,#0x09
      0000E6 95 0D            [12]  476 	subb	a,_state
      0000E8 74 80            [12]  477 	mov	a,#(0x00 ^ 0x80)
      0000EA 85 0E F0         [24]  478 	mov	b,(_state + 1)
      0000ED 63 F0 80         [24]  479 	xrl	b,#0x80
      0000F0 95 F0            [12]  480 	subb	a,b
      0000F2 50 03            [24]  481 	jnc	00171$
      0000F4 02 02 0C         [24]  482 	ljmp	00134$
      0000F7                        483 00171$:
      0000F7 E5 0D            [12]  484 	mov	a,_state
      0000F9 24 0B            [12]  485 	add	a,#(00172$-3-.)
      0000FB 83               [24]  486 	movc	a,@a+pc
      0000FC F5 82            [12]  487 	mov	dpl,a
      0000FE E5 0D            [12]  488 	mov	a,_state
      000100 24 0E            [12]  489 	add	a,#(00173$-3-.)
      000102 83               [24]  490 	movc	a,@a+pc
      000103 F5 83            [12]  491 	mov	dph,a
      000105 E4               [12]  492 	clr	a
      000106 73               [24]  493 	jmp	@a+dptr
      000107                        494 00172$:
      000107 1B                     495 	.db	00101$
      000108 24                     496 	.db	00102$
      000109 2D                     497 	.db	00103$
      00010A 36                     498 	.db	00104$
      00010B 3F                     499 	.db	00105$
      00010C 48                     500 	.db	00106$
      00010D 51                     501 	.db	00107$
      00010E 5A                     502 	.db	00108$
      00010F 63                     503 	.db	00109$
      000110 6C                     504 	.db	00110$
      000111                        505 00173$:
      000111 01                     506 	.db	00101$>>8
      000112 01                     507 	.db	00102$>>8
      000113 01                     508 	.db	00103$>>8
      000114 01                     509 	.db	00104$>>8
      000115 01                     510 	.db	00105$>>8
      000116 01                     511 	.db	00106$>>8
      000117 01                     512 	.db	00107$>>8
      000118 01                     513 	.db	00108$>>8
      000119 01                     514 	.db	00109$>>8
      00011A 01                     515 	.db	00110$>>8
                                    516 ;	Receiver.c:40: case 0:	P0_1 =1;P0_0 =0;P2_6=1;break;	
      00011B                        517 00101$:
                                    518 ;	assignBit
      00011B D2 81            [12]  519 	setb	_P0_1
                                    520 ;	assignBit
      00011D C2 80            [12]  521 	clr	_P0_0
                                    522 ;	assignBit
      00011F D2 A6            [12]  523 	setb	_P2_6
      000121 02 02 0C         [24]  524 	ljmp	00134$
                                    525 ;	Receiver.c:41: case 1:	P0_1 =1;P0_0 =0;P2_6=0;break;
      000124                        526 00102$:
                                    527 ;	assignBit
      000124 D2 81            [12]  528 	setb	_P0_1
                                    529 ;	assignBit
      000126 C2 80            [12]  530 	clr	_P0_0
                                    531 ;	assignBit
      000128 C2 A6            [12]  532 	clr	_P2_6
      00012A 02 02 0C         [24]  533 	ljmp	00134$
                                    534 ;	Receiver.c:42: case 2:	P0_1 =1;P0_0 =0;P2_6=0;break;
      00012D                        535 00103$:
                                    536 ;	assignBit
      00012D D2 81            [12]  537 	setb	_P0_1
                                    538 ;	assignBit
      00012F C2 80            [12]  539 	clr	_P0_0
                                    540 ;	assignBit
      000131 C2 A6            [12]  541 	clr	_P2_6
      000133 02 02 0C         [24]  542 	ljmp	00134$
                                    543 ;	Receiver.c:43: case 3:	P0_1 =1;P0_0 =1;P2_6=0;break;
      000136                        544 00104$:
                                    545 ;	assignBit
      000136 D2 81            [12]  546 	setb	_P0_1
                                    547 ;	assignBit
      000138 D2 80            [12]  548 	setb	_P0_0
                                    549 ;	assignBit
      00013A C2 A6            [12]  550 	clr	_P2_6
      00013C 02 02 0C         [24]  551 	ljmp	00134$
                                    552 ;	Receiver.c:44: case 4:	P0_1 =0;P0_0 =1;P2_6=1;break;
      00013F                        553 00105$:
                                    554 ;	assignBit
      00013F C2 81            [12]  555 	clr	_P0_1
                                    556 ;	assignBit
      000141 D2 80            [12]  557 	setb	_P0_0
                                    558 ;	assignBit
      000143 D2 A6            [12]  559 	setb	_P2_6
      000145 02 02 0C         [24]  560 	ljmp	00134$
                                    561 ;	Receiver.c:45: case 5:	P0_1 =0;P0_0 =0;P2_6=1;break;
      000148                        562 00106$:
                                    563 ;	assignBit
      000148 C2 81            [12]  564 	clr	_P0_1
                                    565 ;	assignBit
      00014A C2 80            [12]  566 	clr	_P0_0
                                    567 ;	assignBit
      00014C D2 A6            [12]  568 	setb	_P2_6
      00014E 02 02 0C         [24]  569 	ljmp	00134$
                                    570 ;	Receiver.c:46: case 6:	P0_1 =0;P0_0 =0;P2_6=1;break;
      000151                        571 00107$:
                                    572 ;	assignBit
      000151 C2 81            [12]  573 	clr	_P0_1
                                    574 ;	assignBit
      000153 C2 80            [12]  575 	clr	_P0_0
                                    576 ;	assignBit
      000155 D2 A6            [12]  577 	setb	_P2_6
      000157 02 02 0C         [24]  578 	ljmp	00134$
                                    579 ;	Receiver.c:47: case 7:	P0_1 =0;P0_0 =1;P2_6=0;break;
      00015A                        580 00108$:
                                    581 ;	assignBit
      00015A C2 81            [12]  582 	clr	_P0_1
                                    583 ;	assignBit
      00015C D2 80            [12]  584 	setb	_P0_0
                                    585 ;	assignBit
      00015E C2 A6            [12]  586 	clr	_P2_6
      000160 02 02 0C         [24]  587 	ljmp	00134$
                                    588 ;	Receiver.c:48: case 8:	P0_1 =1;P0_0 =0;P2_6=0;break;
      000163                        589 00109$:
                                    590 ;	assignBit
      000163 D2 81            [12]  591 	setb	_P0_1
                                    592 ;	assignBit
      000165 C2 80            [12]  593 	clr	_P0_0
                                    594 ;	assignBit
      000167 C2 A6            [12]  595 	clr	_P2_6
      000169 02 02 0C         [24]  596 	ljmp	00134$
                                    597 ;	Receiver.c:49: case 9:	P0_1 =0;P0_0 =0;P2_6=1;break;
      00016C                        598 00110$:
                                    599 ;	assignBit
      00016C C2 81            [12]  600 	clr	_P0_1
                                    601 ;	assignBit
      00016E C2 80            [12]  602 	clr	_P0_0
                                    603 ;	assignBit
      000170 D2 A6            [12]  604 	setb	_P2_6
      000172 02 02 0C         [24]  605 	ljmp	00134$
                                    606 ;	Receiver.c:51: }	
      000175                        607 00130$:
                                    608 ;	Receiver.c:55: else if((timerCount > time_delay) &&(timerCount<time_delay*60)) // count for LED-ON delay
      000175 C3               [12]  609 	clr	c
      000176 E5 0B            [12]  610 	mov	a,_time_delay
      000178 95 09            [12]  611 	subb	a,_timerCount
      00017A E5 0C            [12]  612 	mov	a,(_time_delay + 1)
      00017C 64 80            [12]  613 	xrl	a,#0x80
      00017E 85 0A F0         [24]  614 	mov	b,(_timerCount + 1)
      000181 63 F0 80         [24]  615 	xrl	b,#0x80
      000184 95 F0            [12]  616 	subb	a,b
      000186 40 03            [24]  617 	jc	00174$
      000188 02 02 07         [24]  618 	ljmp	00126$
      00018B                        619 00174$:
      00018B 85 0B 0F         [24]  620 	mov	__mulint_PARM_2,_time_delay
      00018E 85 0C 10         [24]  621 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      000191 90 00 3C         [24]  622 	mov	dptr,#0x003c
      000194 12 03 79         [24]  623 	lcall	__mulint
      000197 AE 82            [24]  624 	mov	r6,dpl
      000199 AF 83            [24]  625 	mov	r7,dph
      00019B C3               [12]  626 	clr	c
      00019C E5 09            [12]  627 	mov	a,_timerCount
      00019E 9E               [12]  628 	subb	a,r6
      00019F E5 0A            [12]  629 	mov	a,(_timerCount + 1)
      0001A1 64 80            [12]  630 	xrl	a,#0x80
      0001A3 8F F0            [24]  631 	mov	b,r7
      0001A5 63 F0 80         [24]  632 	xrl	b,#0x80
      0001A8 95 F0            [12]  633 	subb	a,b
      0001AA 40 03            [24]  634 	jc	00175$
      0001AC 02 02 07         [24]  635 	ljmp	00126$
      0001AF                        636 00175$:
                                    637 ;	Receiver.c:57: switch(state)
      0001AF E5 0E            [12]  638 	mov	a,(_state + 1)
      0001B1 30 E7 03         [24]  639 	jnb	acc.7,00176$
      0001B4 02 02 0C         [24]  640 	ljmp	00134$
      0001B7                        641 00176$:
      0001B7 C3               [12]  642 	clr	c
      0001B8 74 09            [12]  643 	mov	a,#0x09
      0001BA 95 0D            [12]  644 	subb	a,_state
      0001BC 74 80            [12]  645 	mov	a,#(0x00 ^ 0x80)
      0001BE 85 0E F0         [24]  646 	mov	b,(_state + 1)
      0001C1 63 F0 80         [24]  647 	xrl	b,#0x80
      0001C4 95 F0            [12]  648 	subb	a,b
      0001C6 50 03            [24]  649 	jnc	00177$
      0001C8 02 02 0C         [24]  650 	ljmp	00134$
      0001CB                        651 00177$:
      0001CB E5 0D            [12]  652 	mov	a,_state
      0001CD 24 0B            [12]  653 	add	a,#(00178$-3-.)
      0001CF 83               [24]  654 	movc	a,@a+pc
      0001D0 F5 82            [12]  655 	mov	dpl,a
      0001D2 E5 0D            [12]  656 	mov	a,_state
      0001D4 24 0E            [12]  657 	add	a,#(00179$-3-.)
      0001D6 83               [24]  658 	movc	a,@a+pc
      0001D7 F5 83            [12]  659 	mov	dph,a
      0001D9 E4               [12]  660 	clr	a
      0001DA 73               [24]  661 	jmp	@a+dptr
      0001DB                        662 00178$:
      0001DB EF                     663 	.db	00120$
      0001DC F7                     664 	.db	00121$
      0001DD EF                     665 	.db	00120$
      0001DE EF                     666 	.db	00120$
      0001DF EF                     667 	.db	00120$
      0001E0 EF                     668 	.db	00120$
      0001E1 FF                     669 	.db	00122$
      0001E2 EF                     670 	.db	00120$
      0001E3 EF                     671 	.db	00120$
      0001E4 EF                     672 	.db	00120$
      0001E5                        673 00179$:
      0001E5 01                     674 	.db	00120$>>8
      0001E6 01                     675 	.db	00121$>>8
      0001E7 01                     676 	.db	00120$>>8
      0001E8 01                     677 	.db	00120$>>8
      0001E9 01                     678 	.db	00120$>>8
      0001EA 01                     679 	.db	00120$>>8
      0001EB 01                     680 	.db	00122$>>8
      0001EC 01                     681 	.db	00120$>>8
      0001ED 01                     682 	.db	00120$>>8
      0001EE 01                     683 	.db	00120$>>8
                                    684 ;	Receiver.c:66: case 9:P0_1 =0;P0_0 =0;P2_6=0;break;
      0001EF                        685 00120$:
                                    686 ;	assignBit
      0001EF C2 81            [12]  687 	clr	_P0_1
                                    688 ;	assignBit
      0001F1 C2 80            [12]  689 	clr	_P0_0
                                    690 ;	assignBit
      0001F3 C2 A6            [12]  691 	clr	_P2_6
                                    692 ;	Receiver.c:67: case 1:P0_1 =1;P0_0 =0;P2_6=0;break;
      0001F5 80 15            [24]  693 	sjmp	00134$
      0001F7                        694 00121$:
                                    695 ;	assignBit
      0001F7 D2 81            [12]  696 	setb	_P0_1
                                    697 ;	assignBit
      0001F9 C2 80            [12]  698 	clr	_P0_0
                                    699 ;	assignBit
      0001FB C2 A6            [12]  700 	clr	_P2_6
                                    701 ;	Receiver.c:68: case 6:P0_1 =0;P0_0 =0;P2_6=1;break;
      0001FD 80 0D            [24]  702 	sjmp	00134$
      0001FF                        703 00122$:
                                    704 ;	assignBit
      0001FF C2 81            [12]  705 	clr	_P0_1
                                    706 ;	assignBit
      000201 C2 80            [12]  707 	clr	_P0_0
                                    708 ;	assignBit
      000203 D2 A6            [12]  709 	setb	_P2_6
                                    710 ;	Receiver.c:70: }
      000205 80 05            [24]  711 	sjmp	00134$
      000207                        712 00126$:
                                    713 ;	Receiver.c:74: timerCount = 0;
      000207 E4               [12]  714 	clr	a
      000208 F5 09            [12]  715 	mov	_timerCount,a
      00020A F5 0A            [12]  716 	mov	(_timerCount + 1),a
      00020C                        717 00134$:
                                    718 ;	Receiver.c:77: }
      00020C D0 D0            [24]  719 	pop	psw
      00020E D0 00            [24]  720 	pop	(0+0)
      000210 D0 01            [24]  721 	pop	(0+1)
      000212 D0 02            [24]  722 	pop	(0+2)
      000214 D0 03            [24]  723 	pop	(0+3)
      000216 D0 04            [24]  724 	pop	(0+4)
      000218 D0 05            [24]  725 	pop	(0+5)
      00021A D0 06            [24]  726 	pop	(0+6)
      00021C D0 07            [24]  727 	pop	(0+7)
      00021E D0 83            [24]  728 	pop	dph
      000220 D0 82            [24]  729 	pop	dpl
      000222 D0 F0            [24]  730 	pop	b
      000224 D0 E0            [24]  731 	pop	acc
      000226 D0 20            [24]  732 	pop	bits
      000228 32               [24]  733 	reti
                                    734 ;------------------------------------------------------------
                                    735 ;Allocation info for local variables in function 'main'
                                    736 ;------------------------------------------------------------
                                    737 ;	Receiver.c:80: void main()
                                    738 ;	-----------------------------------------
                                    739 ;	 function main
                                    740 ;	-----------------------------------------
      000229                        741 _main:
                                    742 ;	Receiver.c:82: P1=0x80;
      000229 75 90 80         [24]  743 	mov	_P1,#0x80
                                    744 ;	Receiver.c:83: P0=0x00;
      00022C 75 80 00         [24]  745 	mov	_P0,#0x00
                                    746 ;	Receiver.c:84: P2=0x00;
      00022F 75 A0 00         [24]  747 	mov	_P2,#0x00
                                    748 ;	Receiver.c:85: state=20;
      000232 75 0D 14         [24]  749 	mov	_state,#0x14
      000235 75 0E 00         [24]  750 	mov	(_state + 1),#0x00
                                    751 ;	Receiver.c:86: pwr_out=0;
                                    752 ;	assignBit
      000238 C2 87            [12]  753 	clr	_P0_7
                                    754 ;	Receiver.c:87: InitTimer0();
      00023A 12 03 6B         [24]  755 	lcall	_InitTimer0
                                    756 ;	Receiver.c:88: EA=1;
                                    757 ;	assignBit
      00023D D2 AF            [12]  758 	setb	_EA
                                    759 ;	Receiver.c:89: pwr_led = 1;
                                    760 ;	assignBit
      00023F D2 A0            [12]  761 	setb	_P2_0
                                    762 ;	Receiver.c:90: startup();
      000241 12 02 4F         [24]  763 	lcall	_startup
                                    764 ;	Receiver.c:91: UART_Init();
      000244 12 02 B7         [24]  765 	lcall	_UART_Init
                                    766 ;	Receiver.c:92: handshake();
      000247 12 02 CC         [24]  767 	lcall	_handshake
                                    768 ;	Receiver.c:93: while(1)
      00024A                        769 00102$:
                                    770 ;	Receiver.c:95: check_data();
      00024A 12 02 EF         [24]  771 	lcall	_check_data
                                    772 ;	Receiver.c:97: } //main
      00024D 80 FB            [24]  773 	sjmp	00102$
                                    774 ;------------------------------------------------------------
                                    775 ;Allocation info for local variables in function 'startup'
                                    776 ;------------------------------------------------------------
                                    777 ;	Receiver.c:100: void startup()
                                    778 ;	-----------------------------------------
                                    779 ;	 function startup
                                    780 ;	-----------------------------------------
      00024F                        781 _startup:
                                    782 ;	Receiver.c:102: pwr_key=1;
                                    783 ;	assignBit
      00024F D2 97            [12]  784 	setb	_P1_7
                                    785 ;	Receiver.c:103: pwr_led=0;
                                    786 ;	assignBit
      000251 C2 A0            [12]  787 	clr	_P2_0
                                    788 ;	Receiver.c:104: pwr_out=0;
                                    789 ;	assignBit
      000253 C2 87            [12]  790 	clr	_P0_7
                                    791 ;	Receiver.c:105: rst_out=0;
                                    792 ;	assignBit
      000255 C2 96            [12]  793 	clr	_P1_6
                                    794 ;	Receiver.c:106: P0_1 =1;P0_0 =1;P2_6=1;
                                    795 ;	assignBit
      000257 D2 81            [12]  796 	setb	_P0_1
                                    797 ;	assignBit
      000259 D2 80            [12]  798 	setb	_P0_0
                                    799 ;	assignBit
      00025B D2 A6            [12]  800 	setb	_P2_6
                                    801 ;	Receiver.c:107: delay();delay();
      00025D 12 02 8E         [24]  802 	lcall	_delay
      000260 12 02 8E         [24]  803 	lcall	_delay
                                    804 ;	Receiver.c:108: P0_1 =0;P0_0 =0;P2_6=1;
                                    805 ;	assignBit
      000263 C2 81            [12]  806 	clr	_P0_1
                                    807 ;	assignBit
      000265 C2 80            [12]  808 	clr	_P0_0
                                    809 ;	assignBit
      000267 D2 A6            [12]  810 	setb	_P2_6
                                    811 ;	Receiver.c:109: delay();delay();
      000269 12 02 8E         [24]  812 	lcall	_delay
      00026C 12 02 8E         [24]  813 	lcall	_delay
                                    814 ;	Receiver.c:110: P0_1 =0;P0_0 =1;P2_6=0;
                                    815 ;	assignBit
      00026F C2 81            [12]  816 	clr	_P0_1
                                    817 ;	assignBit
      000271 D2 80            [12]  818 	setb	_P0_0
                                    819 ;	assignBit
      000273 C2 A6            [12]  820 	clr	_P2_6
                                    821 ;	Receiver.c:111: delay();delay();
      000275 12 02 8E         [24]  822 	lcall	_delay
      000278 12 02 8E         [24]  823 	lcall	_delay
                                    824 ;	Receiver.c:112: P0_1 =1;P0_0 =0;P2_6=0;
                                    825 ;	assignBit
      00027B D2 81            [12]  826 	setb	_P0_1
                                    827 ;	assignBit
      00027D C2 80            [12]  828 	clr	_P0_0
                                    829 ;	assignBit
      00027F C2 A6            [12]  830 	clr	_P2_6
                                    831 ;	Receiver.c:113: delay();delay();
      000281 12 02 8E         [24]  832 	lcall	_delay
      000284 12 02 8E         [24]  833 	lcall	_delay
                                    834 ;	Receiver.c:114: P0_1 =0;P0_0 =0;P2_6=0;
                                    835 ;	assignBit
      000287 C2 81            [12]  836 	clr	_P0_1
                                    837 ;	assignBit
      000289 C2 80            [12]  838 	clr	_P0_0
                                    839 ;	assignBit
      00028B C2 A6            [12]  840 	clr	_P2_6
                                    841 ;	Receiver.c:115: }
      00028D 22               [24]  842 	ret
                                    843 ;------------------------------------------------------------
                                    844 ;Allocation info for local variables in function 'delay'
                                    845 ;------------------------------------------------------------
                                    846 ;i                         Allocated to registers r6 r7 
                                    847 ;j                         Allocated to registers r4 r5 
                                    848 ;------------------------------------------------------------
                                    849 ;	Receiver.c:117: void delay()
                                    850 ;	-----------------------------------------
                                    851 ;	 function delay
                                    852 ;	-----------------------------------------
      00028E                        853 _delay:
                                    854 ;	Receiver.c:120: for(i=0;i<0x33;i++)
      00028E 7E 00            [12]  855 	mov	r6,#0x00
      000290 7F 00            [12]  856 	mov	r7,#0x00
      000292                        857 00106$:
                                    858 ;	Receiver.c:121: for(j=0;j<0xff;j++);
      000292 7C FF            [12]  859 	mov	r4,#0xff
      000294 7D 00            [12]  860 	mov	r5,#0x00
      000296                        861 00105$:
      000296 EC               [12]  862 	mov	a,r4
      000297 24 FF            [12]  863 	add	a,#0xff
      000299 FA               [12]  864 	mov	r2,a
      00029A ED               [12]  865 	mov	a,r5
      00029B 34 FF            [12]  866 	addc	a,#0xff
      00029D FB               [12]  867 	mov	r3,a
      00029E 8A 04            [24]  868 	mov	ar4,r2
      0002A0 8B 05            [24]  869 	mov	ar5,r3
      0002A2 EA               [12]  870 	mov	a,r2
      0002A3 4B               [12]  871 	orl	a,r3
      0002A4 70 F0            [24]  872 	jnz	00105$
                                    873 ;	Receiver.c:120: for(i=0;i<0x33;i++)
      0002A6 0E               [12]  874 	inc	r6
      0002A7 BE 00 01         [24]  875 	cjne	r6,#0x00,00124$
      0002AA 0F               [12]  876 	inc	r7
      0002AB                        877 00124$:
      0002AB C3               [12]  878 	clr	c
      0002AC EE               [12]  879 	mov	a,r6
      0002AD 94 33            [12]  880 	subb	a,#0x33
      0002AF EF               [12]  881 	mov	a,r7
      0002B0 64 80            [12]  882 	xrl	a,#0x80
      0002B2 94 80            [12]  883 	subb	a,#0x80
      0002B4 40 DC            [24]  884 	jc	00106$
                                    885 ;	Receiver.c:122: }
      0002B6 22               [24]  886 	ret
                                    887 ;------------------------------------------------------------
                                    888 ;Allocation info for local variables in function 'UART_Init'
                                    889 ;------------------------------------------------------------
                                    890 ;	Receiver.c:125: void UART_Init()
                                    891 ;	-----------------------------------------
                                    892 ;	 function UART_Init
                                    893 ;	-----------------------------------------
      0002B7                        894 _UART_Init:
                                    895 ;	Receiver.c:127: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      0002B7 75 89 20         [24]  896 	mov	_TMOD,#0x20
                                    897 ;	Receiver.c:128: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      0002BA 75 8D FD         [24]  898 	mov	_TH1,#0xfd
                                    899 ;	Receiver.c:129: SCON = 0x50;		/* Mode 1, reception enable */
      0002BD 75 98 50         [24]  900 	mov	_SCON,#0x50
                                    901 ;	Receiver.c:130: TR1 = 1;		/* Start timer 1 */
                                    902 ;	assignBit
      0002C0 D2 8E            [12]  903 	setb	_TR1
                                    904 ;	Receiver.c:131: }
      0002C2 22               [24]  905 	ret
                                    906 ;------------------------------------------------------------
                                    907 ;Allocation info for local variables in function 'Transmit_data'
                                    908 ;------------------------------------------------------------
                                    909 ;tx_data                   Allocated to registers 
                                    910 ;------------------------------------------------------------
                                    911 ;	Receiver.c:134: void Transmit_data(char tx_data)
                                    912 ;	-----------------------------------------
                                    913 ;	 function Transmit_data
                                    914 ;	-----------------------------------------
      0002C3                        915 _Transmit_data:
      0002C3 85 82 99         [24]  916 	mov	_SBUF,dpl
                                    917 ;	Receiver.c:137: while (TI==0);		/* Wait until stop bit transmit */
      0002C6                        918 00101$:
                                    919 ;	Receiver.c:138: TI = 0;			/* Clear TI flag */
                                    920 ;	assignBit
      0002C6 10 99 02         [24]  921 	jbc	_TI,00114$
      0002C9 80 FB            [24]  922 	sjmp	00101$
      0002CB                        923 00114$:
                                    924 ;	Receiver.c:139: }
      0002CB 22               [24]  925 	ret
                                    926 ;------------------------------------------------------------
                                    927 ;Allocation info for local variables in function 'handshake'
                                    928 ;------------------------------------------------------------
                                    929 ;	Receiver.c:142: void handshake()
                                    930 ;	-----------------------------------------
                                    931 ;	 function handshake
                                    932 ;	-----------------------------------------
      0002CC                        933 _handshake:
                                    934 ;	Receiver.c:144: while(data_r!='y')
      0002CC                        935 00101$:
      0002CC 74 79            [12]  936 	mov	a,#0x79
      0002CE B5 08 01         [24]  937 	cjne	a,_data_r,00114$
      0002D1 22               [24]  938 	ret
      0002D2                        939 00114$:
                                    940 ;	Receiver.c:146: Transmit_data('x');
      0002D2 75 82 78         [24]  941 	mov	dpl,#0x78
      0002D5 12 02 C3         [24]  942 	lcall	_Transmit_data
                                    943 ;	Receiver.c:147: state=20;
      0002D8 75 0D 14         [24]  944 	mov	_state,#0x14
      0002DB 75 0E 00         [24]  945 	mov	(_state + 1),#0x00
                                    946 ;	Receiver.c:148: data_r=SBUF;
      0002DE 85 99 08         [24]  947 	mov	_data_r,_SBUF
                                    948 ;	Receiver.c:149: delay();
      0002E1 12 02 8E         [24]  949 	lcall	_delay
                                    950 ;	Receiver.c:150: delay();
      0002E4 12 02 8E         [24]  951 	lcall	_delay
                                    952 ;	Receiver.c:151: delay();
      0002E7 12 02 8E         [24]  953 	lcall	_delay
                                    954 ;	Receiver.c:152: delay();
      0002EA 12 02 8E         [24]  955 	lcall	_delay
                                    956 ;	Receiver.c:154: }
      0002ED 80 DD            [24]  957 	sjmp	00101$
                                    958 ;------------------------------------------------------------
                                    959 ;Allocation info for local variables in function 'check_data'
                                    960 ;------------------------------------------------------------
                                    961 ;	Receiver.c:156: void check_data()
                                    962 ;	-----------------------------------------
                                    963 ;	 function check_data
                                    964 ;	-----------------------------------------
      0002EF                        965 _check_data:
                                    966 ;	Receiver.c:159: data_r = SBUF;		/* Load char in SBUF register */
      0002EF 85 99 08         [24]  967 	mov	_data_r,_SBUF
                                    968 ;	Receiver.c:160: RI = 0;			/* Clear TI flag */
                                    969 ;	assignBit
      0002F2 C2 98            [12]  970 	clr	_RI
                                    971 ;	Receiver.c:161: if(data_r=='l')
      0002F4 74 6C            [12]  972 	mov	a,#0x6c
      0002F6 B5 08 06         [24]  973 	cjne	a,_data_r,00128$
                                    974 ;	Receiver.c:162: state = 0;
      0002F9 E4               [12]  975 	clr	a
      0002FA F5 0D            [12]  976 	mov	_state,a
      0002FC F5 0E            [12]  977 	mov	(_state + 1),a
      0002FE 22               [24]  978 	ret
      0002FF                        979 00128$:
                                    980 ;	Receiver.c:163: else if(data_r=='a')
      0002FF 74 61            [12]  981 	mov	a,#0x61
      000301 B5 08 07         [24]  982 	cjne	a,_data_r,00125$
                                    983 ;	Receiver.c:164: state = 1;
      000304 75 0D 01         [24]  984 	mov	_state,#0x01
      000307 75 0E 00         [24]  985 	mov	(_state + 1),#0x00
      00030A 22               [24]  986 	ret
      00030B                        987 00125$:
                                    988 ;	Receiver.c:165: else if(data_r=='b')
      00030B 74 62            [12]  989 	mov	a,#0x62
      00030D B5 08 07         [24]  990 	cjne	a,_data_r,00122$
                                    991 ;	Receiver.c:166: state = 2;
      000310 75 0D 02         [24]  992 	mov	_state,#0x02
      000313 75 0E 00         [24]  993 	mov	(_state + 1),#0x00
      000316 22               [24]  994 	ret
      000317                        995 00122$:
                                    996 ;	Receiver.c:167: else if(data_r=='c')
      000317 74 63            [12]  997 	mov	a,#0x63
      000319 B5 08 07         [24]  998 	cjne	a,_data_r,00119$
                                    999 ;	Receiver.c:168: state = 3;
      00031C 75 0D 03         [24] 1000 	mov	_state,#0x03
      00031F 75 0E 00         [24] 1001 	mov	(_state + 1),#0x00
      000322 22               [24] 1002 	ret
      000323                       1003 00119$:
                                   1004 ;	Receiver.c:169: else if(data_r=='d')
      000323 74 64            [12] 1005 	mov	a,#0x64
      000325 B5 08 07         [24] 1006 	cjne	a,_data_r,00116$
                                   1007 ;	Receiver.c:170: state = 7;
      000328 75 0D 07         [24] 1008 	mov	_state,#0x07
      00032B 75 0E 00         [24] 1009 	mov	(_state + 1),#0x00
      00032E 22               [24] 1010 	ret
      00032F                       1011 00116$:
                                   1012 ;	Receiver.c:171: else if(data_r=='e')
      00032F 74 65            [12] 1013 	mov	a,#0x65
      000331 B5 08 07         [24] 1014 	cjne	a,_data_r,00113$
                                   1015 ;	Receiver.c:172: state = 4;
      000334 75 0D 04         [24] 1016 	mov	_state,#0x04
      000337 75 0E 00         [24] 1017 	mov	(_state + 1),#0x00
      00033A 22               [24] 1018 	ret
      00033B                       1019 00113$:
                                   1020 ;	Receiver.c:173: else if(data_r=='f')
      00033B 74 66            [12] 1021 	mov	a,#0x66
      00033D B5 08 07         [24] 1022 	cjne	a,_data_r,00110$
                                   1023 ;	Receiver.c:174: state = 5;
      000340 75 0D 05         [24] 1024 	mov	_state,#0x05
      000343 75 0E 00         [24] 1025 	mov	(_state + 1),#0x00
      000346 22               [24] 1026 	ret
      000347                       1027 00110$:
                                   1028 ;	Receiver.c:175: else if(data_r=='g')
      000347 74 67            [12] 1029 	mov	a,#0x67
      000349 B5 08 07         [24] 1030 	cjne	a,_data_r,00107$
                                   1031 ;	Receiver.c:176: state = 6;
      00034C 75 0D 06         [24] 1032 	mov	_state,#0x06
      00034F 75 0E 00         [24] 1033 	mov	(_state + 1),#0x00
      000352 22               [24] 1034 	ret
      000353                       1035 00107$:
                                   1036 ;	Receiver.c:177: else if(data_r=='u')
      000353 74 75            [12] 1037 	mov	a,#0x75
      000355 B5 08 07         [24] 1038 	cjne	a,_data_r,00104$
                                   1039 ;	Receiver.c:178: state = 8;
      000358 75 0D 08         [24] 1040 	mov	_state,#0x08
      00035B 75 0E 00         [24] 1041 	mov	(_state + 1),#0x00
      00035E 22               [24] 1042 	ret
      00035F                       1043 00104$:
                                   1044 ;	Receiver.c:179: else if(data_r=='n')
      00035F 74 6E            [12] 1045 	mov	a,#0x6e
      000361 B5 08 06         [24] 1046 	cjne	a,_data_r,00130$
                                   1047 ;	Receiver.c:180: state = 9;
      000364 75 0D 09         [24] 1048 	mov	_state,#0x09
      000367 75 0E 00         [24] 1049 	mov	(_state + 1),#0x00
      00036A                       1050 00130$:
                                   1051 ;	Receiver.c:182: }
      00036A 22               [24] 1052 	ret
                                   1053 ;------------------------------------------------------------
                                   1054 ;Allocation info for local variables in function 'InitTimer0'
                                   1055 ;------------------------------------------------------------
                                   1056 ;	Receiver.c:184: void InitTimer0(void)
                                   1057 ;	-----------------------------------------
                                   1058 ;	 function InitTimer0
                                   1059 ;	-----------------------------------------
      00036B                       1060 _InitTimer0:
                                   1061 ;	Receiver.c:186: TMOD |= 0x01;    // Set timer0 in mode 1
      00036B 43 89 01         [24] 1062 	orl	_TMOD,#0x01
                                   1063 ;	Receiver.c:187: TH0 = 0xee;      // 5 msec reloading time
      00036E 75 8C EE         [24] 1064 	mov	_TH0,#0xee
                                   1065 ;	Receiver.c:188: TL0 = 0x00;      // First time value
      000371 75 8A 00         [24] 1066 	mov	_TL0,#0x00
                                   1067 ;	Receiver.c:189: TR0 = 1;         // Start Timer 1
                                   1068 ;	assignBit
      000374 D2 8C            [12] 1069 	setb	_TR0
                                   1070 ;	Receiver.c:190: ET0 = 1;         // Enable Timer1 interrupts	
                                   1071 ;	assignBit
      000376 D2 A9            [12] 1072 	setb	_ET0
                                   1073 ;	Receiver.c:191: }
      000378 22               [24] 1074 	ret
                                   1075 	.area CSEG    (CODE)
                                   1076 	.area CONST   (CODE)
                                   1077 	.area XINIT   (CODE)
                                   1078 	.area CABS    (ABS,CODE)
