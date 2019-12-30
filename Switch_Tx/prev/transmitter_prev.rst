                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11418 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module transmitter_prev
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
                                    134 	.globl _received
                                    135 	.globl _data_r
                                    136 	.globl _state
                                    137 	.globl _delay
                                    138 	.globl _UART_Init
                                    139 	.globl _Transmit_data
                                    140 	.globl _check_x
                                    141 	.globl _startup
                                    142 	.globl _touch
                                    143 	.globl _InitTimer1
                                    144 ;--------------------------------------------------------
                                    145 ; special function registers
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0	=	0x0080
                           000081   150 _SP	=	0x0081
                           000082   151 _DPL	=	0x0082
                           000083   152 _DPH	=	0x0083
                           000087   153 _PCON	=	0x0087
                           000088   154 _TCON	=	0x0088
                           000089   155 _TMOD	=	0x0089
                           00008A   156 _TL0	=	0x008a
                           00008B   157 _TL1	=	0x008b
                           00008C   158 _TH0	=	0x008c
                           00008D   159 _TH1	=	0x008d
                           000090   160 _P1	=	0x0090
                           000098   161 _SCON	=	0x0098
                           000099   162 _SBUF	=	0x0099
                           0000A0   163 _P2	=	0x00a0
                           0000A8   164 _IE	=	0x00a8
                           0000B0   165 _P3	=	0x00b0
                           0000B8   166 _IP	=	0x00b8
                           0000D0   167 _PSW	=	0x00d0
                           0000E0   168 _ACC	=	0x00e0
                           0000F0   169 _B	=	0x00f0
                           0000C8   170 _T2CON	=	0x00c8
                           0000CA   171 _RCAP2L	=	0x00ca
                           0000CB   172 _RCAP2H	=	0x00cb
                           0000CC   173 _TL2	=	0x00cc
                           0000CD   174 _TH2	=	0x00cd
                                    175 ;--------------------------------------------------------
                                    176 ; special function bits
                                    177 ;--------------------------------------------------------
                                    178 	.area RSEG    (ABS,DATA)
      000000                        179 	.org 0x0000
                           000080   180 _P0_0	=	0x0080
                           000081   181 _P0_1	=	0x0081
                           000082   182 _P0_2	=	0x0082
                           000083   183 _P0_3	=	0x0083
                           000084   184 _P0_4	=	0x0084
                           000085   185 _P0_5	=	0x0085
                           000086   186 _P0_6	=	0x0086
                           000087   187 _P0_7	=	0x0087
                           000088   188 _IT0	=	0x0088
                           000089   189 _IE0	=	0x0089
                           00008A   190 _IT1	=	0x008a
                           00008B   191 _IE1	=	0x008b
                           00008C   192 _TR0	=	0x008c
                           00008D   193 _TF0	=	0x008d
                           00008E   194 _TR1	=	0x008e
                           00008F   195 _TF1	=	0x008f
                           000090   196 _P1_0	=	0x0090
                           000091   197 _P1_1	=	0x0091
                           000092   198 _P1_2	=	0x0092
                           000093   199 _P1_3	=	0x0093
                           000094   200 _P1_4	=	0x0094
                           000095   201 _P1_5	=	0x0095
                           000096   202 _P1_6	=	0x0096
                           000097   203 _P1_7	=	0x0097
                           000098   204 _RI	=	0x0098
                           000099   205 _TI	=	0x0099
                           00009A   206 _RB8	=	0x009a
                           00009B   207 _TB8	=	0x009b
                           00009C   208 _REN	=	0x009c
                           00009D   209 _SM2	=	0x009d
                           00009E   210 _SM1	=	0x009e
                           00009F   211 _SM0	=	0x009f
                           0000A0   212 _P2_0	=	0x00a0
                           0000A1   213 _P2_1	=	0x00a1
                           0000A2   214 _P2_2	=	0x00a2
                           0000A3   215 _P2_3	=	0x00a3
                           0000A4   216 _P2_4	=	0x00a4
                           0000A5   217 _P2_5	=	0x00a5
                           0000A6   218 _P2_6	=	0x00a6
                           0000A7   219 _P2_7	=	0x00a7
                           0000A8   220 _EX0	=	0x00a8
                           0000A9   221 _ET0	=	0x00a9
                           0000AA   222 _EX1	=	0x00aa
                           0000AB   223 _ET1	=	0x00ab
                           0000AC   224 _ES	=	0x00ac
                           0000AF   225 _EA	=	0x00af
                           0000B0   226 _P3_0	=	0x00b0
                           0000B1   227 _P3_1	=	0x00b1
                           0000B2   228 _P3_2	=	0x00b2
                           0000B3   229 _P3_3	=	0x00b3
                           0000B4   230 _P3_4	=	0x00b4
                           0000B5   231 _P3_5	=	0x00b5
                           0000B6   232 _P3_6	=	0x00b6
                           0000B7   233 _P3_7	=	0x00b7
                           0000B0   234 _RXD	=	0x00b0
                           0000B1   235 _TXD	=	0x00b1
                           0000B2   236 _INT0	=	0x00b2
                           0000B3   237 _INT1	=	0x00b3
                           0000B4   238 _T0	=	0x00b4
                           0000B5   239 _T1	=	0x00b5
                           0000B6   240 _WR	=	0x00b6
                           0000B7   241 _RD	=	0x00b7
                           0000B8   242 _PX0	=	0x00b8
                           0000B9   243 _PT0	=	0x00b9
                           0000BA   244 _PX1	=	0x00ba
                           0000BB   245 _PT1	=	0x00bb
                           0000BC   246 _PS	=	0x00bc
                           0000D0   247 _P	=	0x00d0
                           0000D1   248 _F1	=	0x00d1
                           0000D2   249 _OV	=	0x00d2
                           0000D3   250 _RS0	=	0x00d3
                           0000D4   251 _RS1	=	0x00d4
                           0000D5   252 _F0	=	0x00d5
                           0000D6   253 _AC	=	0x00d6
                           0000D7   254 _CY	=	0x00d7
                           0000AD   255 _ET2	=	0x00ad
                           0000BD   256 _PT2	=	0x00bd
                           0000C8   257 _T2CON_0	=	0x00c8
                           0000C9   258 _T2CON_1	=	0x00c9
                           0000CA   259 _T2CON_2	=	0x00ca
                           0000CB   260 _T2CON_3	=	0x00cb
                           0000CC   261 _T2CON_4	=	0x00cc
                           0000CD   262 _T2CON_5	=	0x00cd
                           0000CE   263 _T2CON_6	=	0x00ce
                           0000CF   264 _T2CON_7	=	0x00cf
                           0000C8   265 _CP_RL2	=	0x00c8
                           0000C9   266 _C_T2	=	0x00c9
                           0000CA   267 _TR2	=	0x00ca
                           0000CB   268 _EXEN2	=	0x00cb
                           0000CC   269 _TCLK	=	0x00cc
                           0000CD   270 _RCLK	=	0x00cd
                           0000CE   271 _EXF2	=	0x00ce
                           0000CF   272 _TF2	=	0x00cf
                                    273 ;--------------------------------------------------------
                                    274 ; overlayable register banks
                                    275 ;--------------------------------------------------------
                                    276 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        277 	.ds 8
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable bit register bank
                                    280 ;--------------------------------------------------------
                                    281 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        282 bits:
      000020                        283 	.ds 1
                           008000   284 	b0 = bits[0]
                           008100   285 	b1 = bits[1]
                           008200   286 	b2 = bits[2]
                           008300   287 	b3 = bits[3]
                           008400   288 	b4 = bits[4]
                           008500   289 	b5 = bits[5]
                           008600   290 	b6 = bits[6]
                           008700   291 	b7 = bits[7]
                                    292 ;--------------------------------------------------------
                                    293 ; internal ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area DSEG    (DATA)
      000008                        296 _state::
      000008                        297 	.ds 2
      00000A                        298 _data_r::
      00000A                        299 	.ds 1
      00000B                        300 _received::
      00000B                        301 	.ds 1
      00000C                        302 _timerCount::
      00000C                        303 	.ds 2
      00000E                        304 _time_delay::
      00000E                        305 	.ds 2
                                    306 ;--------------------------------------------------------
                                    307 ; overlayable items in internal ram 
                                    308 ;--------------------------------------------------------
                                    309 	.area	OSEG    (OVR,DATA)
                                    310 	.area	OSEG    (OVR,DATA)
                                    311 ;--------------------------------------------------------
                                    312 ; Stack segment in internal ram 
                                    313 ;--------------------------------------------------------
                                    314 	.area	SSEG
      000021                        315 __start__stack:
      000021                        316 	.ds	1
                                    317 
                                    318 ;--------------------------------------------------------
                                    319 ; indirectly addressable internal ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area ISEG    (DATA)
                                    322 ;--------------------------------------------------------
                                    323 ; absolute internal ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area IABS    (ABS,DATA)
                                    326 	.area IABS    (ABS,DATA)
                                    327 ;--------------------------------------------------------
                                    328 ; bit data
                                    329 ;--------------------------------------------------------
                                    330 	.area BSEG    (BIT)
                                    331 ;--------------------------------------------------------
                                    332 ; paged external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area PSEG    (PAG,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XSEG    (XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; absolute external ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XABS    (ABS,XDATA)
                                    343 ;--------------------------------------------------------
                                    344 ; external initialized ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area XISEG   (XDATA)
                                    347 	.area HOME    (CODE)
                                    348 	.area GSINIT0 (CODE)
                                    349 	.area GSINIT1 (CODE)
                                    350 	.area GSINIT2 (CODE)
                                    351 	.area GSINIT3 (CODE)
                                    352 	.area GSINIT4 (CODE)
                                    353 	.area GSINIT5 (CODE)
                                    354 	.area GSINIT  (CODE)
                                    355 	.area GSFINAL (CODE)
                                    356 	.area CSEG    (CODE)
                                    357 ;--------------------------------------------------------
                                    358 ; interrupt vector 
                                    359 ;--------------------------------------------------------
                                    360 	.area HOME    (CODE)
      000000                        361 __interrupt_vect:
      000000 02 00 11         [24]  362 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  363 	reti
      000004                        364 	.ds	7
      00000B 02 00 80         [24]  365 	ljmp	_isr_timer0
                                    366 ;--------------------------------------------------------
                                    367 ; global & static initialisations
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.area GSFINAL (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 	.globl __sdcc_gsinit_startup
                                    374 	.globl __sdcc_program_startup
                                    375 	.globl __start__stack
                                    376 	.globl __mcs51_genXINIT
                                    377 	.globl __mcs51_genXRAMCLEAR
                                    378 	.globl __mcs51_genRAMCLEAR
                                    379 ;	transmitter_prev.c:3: int state = 0;
      00006A E4               [12]  380 	clr	a
      00006B F5 08            [12]  381 	mov	_state,a
      00006D F5 09            [12]  382 	mov	(_state + 1),a
                                    383 ;	transmitter_prev.c:13: char data_r=0;
                                    384 ;	1-genFromRTrack replaced	mov	_data_r,#0x00
      00006F F5 0A            [12]  385 	mov	_data_r,a
                                    386 ;	transmitter_prev.c:14: char received=1;
      000071 75 0B 01         [24]  387 	mov	_received,#0x01
                                    388 ;	transmitter_prev.c:15: volatile int timerCount = 0;
      000074 F5 0C            [12]  389 	mov	_timerCount,a
      000076 F5 0D            [12]  390 	mov	(_timerCount + 1),a
                                    391 ;	transmitter_prev.c:16: volatile int time_delay = 20;
      000078 75 0E 14         [24]  392 	mov	_time_delay,#0x14
                                    393 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      00007B F5 0F            [12]  394 	mov	(_time_delay + 1),a
                                    395 	.area GSFINAL (CODE)
      00007D 02 00 0E         [24]  396 	ljmp	__sdcc_program_startup
                                    397 ;--------------------------------------------------------
                                    398 ; Home
                                    399 ;--------------------------------------------------------
                                    400 	.area HOME    (CODE)
                                    401 	.area HOME    (CODE)
      00000E                        402 __sdcc_program_startup:
      00000E 02 02 04         [24]  403 	ljmp	_main
                                    404 ;	return from main will return to caller
                                    405 ;--------------------------------------------------------
                                    406 ; code
                                    407 ;--------------------------------------------------------
                                    408 	.area CSEG    (CODE)
                                    409 ;------------------------------------------------------------
                                    410 ;Allocation info for local variables in function 'isr_timer0'
                                    411 ;------------------------------------------------------------
                                    412 ;	transmitter_prev.c:18: void isr_timer0(void) __interrupt 1   // It is called after every 50msec
                                    413 ;	-----------------------------------------
                                    414 ;	 function isr_timer0
                                    415 ;	-----------------------------------------
      000080                        416 _isr_timer0:
                           000007   417 	ar7 = 0x07
                           000006   418 	ar6 = 0x06
                           000005   419 	ar5 = 0x05
                           000004   420 	ar4 = 0x04
                           000003   421 	ar3 = 0x03
                           000002   422 	ar2 = 0x02
                           000001   423 	ar1 = 0x01
                           000000   424 	ar0 = 0x00
      000080 C0 20            [24]  425 	push	bits
      000082 C0 E0            [24]  426 	push	acc
      000084 C0 F0            [24]  427 	push	b
      000086 C0 82            [24]  428 	push	dpl
      000088 C0 83            [24]  429 	push	dph
      00008A C0 07            [24]  430 	push	(0+7)
      00008C C0 06            [24]  431 	push	(0+6)
      00008E C0 05            [24]  432 	push	(0+5)
      000090 C0 04            [24]  433 	push	(0+4)
      000092 C0 03            [24]  434 	push	(0+3)
      000094 C0 02            [24]  435 	push	(0+2)
      000096 C0 01            [24]  436 	push	(0+1)
      000098 C0 00            [24]  437 	push	(0+0)
      00009A C0 D0            [24]  438 	push	psw
      00009C 75 D0 00         [24]  439 	mov	psw,#0x00
                                    440 ;	transmitter_prev.c:20: TH0  = 0X4B;         // ReLoad the timer value for 50ms
      00009F 75 8C 4B         [24]  441 	mov	_TH0,#0x4b
                                    442 ;	transmitter_prev.c:21: TL0  = 0XFD;
      0000A2 75 8A FD         [24]  443 	mov	_TL0,#0xfd
                                    444 ;	transmitter_prev.c:22: timerCount++;
      0000A5 AE 0C            [24]  445 	mov	r6,_timerCount
      0000A7 AF 0D            [24]  446 	mov	r7,(_timerCount + 1)
      0000A9 74 01            [12]  447 	mov	a,#0x01
      0000AB 2E               [12]  448 	add	a,r6
      0000AC F5 0C            [12]  449 	mov	_timerCount,a
      0000AE E4               [12]  450 	clr	a
      0000AF 3F               [12]  451 	addc	a,r7
      0000B0 F5 0D            [12]  452 	mov	(_timerCount + 1),a
                                    453 ;	transmitter_prev.c:25: if(timerCount <= time_delay) // count for 1sec delay(50msx20 = 1000ms = 1sec)
      0000B2 C3               [12]  454 	clr	c
      0000B3 E5 0E            [12]  455 	mov	a,_time_delay
      0000B5 95 0C            [12]  456 	subb	a,_timerCount
      0000B7 E5 0F            [12]  457 	mov	a,(_time_delay + 1)
      0000B9 64 80            [12]  458 	xrl	a,#0x80
      0000BB 85 0D F0         [24]  459 	mov	b,(_timerCount + 1)
      0000BE 63 F0 80         [24]  460 	xrl	b,#0x80
      0000C1 95 F0            [12]  461 	subb	a,b
      0000C3 50 03            [24]  462 	jnc	00158$
      0000C5 02 01 64         [24]  463 	ljmp	00126$
      0000C8                        464 00158$:
                                    465 ;	transmitter_prev.c:27: switch(state)
      0000C8 E5 09            [12]  466 	mov	a,(_state + 1)
      0000CA 30 E7 03         [24]  467 	jnb	acc.7,00159$
      0000CD 02 01 E7         [24]  468 	ljmp	00128$
      0000D0                        469 00159$:
      0000D0 C3               [12]  470 	clr	c
      0000D1 74 07            [12]  471 	mov	a,#0x07
      0000D3 95 08            [12]  472 	subb	a,_state
      0000D5 74 80            [12]  473 	mov	a,#(0x00 ^ 0x80)
      0000D7 85 09 F0         [24]  474 	mov	b,(_state + 1)
      0000DA 63 F0 80         [24]  475 	xrl	b,#0x80
      0000DD 95 F0            [12]  476 	subb	a,b
      0000DF 50 03            [24]  477 	jnc	00160$
      0000E1 02 01 E7         [24]  478 	ljmp	00128$
      0000E4                        479 00160$:
      0000E4 E5 08            [12]  480 	mov	a,_state
      0000E6 24 0B            [12]  481 	add	a,#(00161$-3-.)
      0000E8 83               [24]  482 	movc	a,@a+pc
      0000E9 F5 82            [12]  483 	mov	dpl,a
      0000EB E5 08            [12]  484 	mov	a,_state
      0000ED 24 0C            [12]  485 	add	a,#(00162$-3-.)
      0000EF 83               [24]  486 	movc	a,@a+pc
      0000F0 F5 83            [12]  487 	mov	dph,a
      0000F2 E4               [12]  488 	clr	a
      0000F3 73               [24]  489 	jmp	@a+dptr
      0000F4                        490 00161$:
      0000F4 04                     491 	.db	00101$
      0000F5 10                     492 	.db	00102$
      0000F6 1C                     493 	.db	00103$
      0000F7 28                     494 	.db	00104$
      0000F8 34                     495 	.db	00105$
      0000F9 40                     496 	.db	00106$
      0000FA 4C                     497 	.db	00107$
      0000FB 58                     498 	.db	00108$
      0000FC                        499 00162$:
      0000FC 01                     500 	.db	00101$>>8
      0000FD 01                     501 	.db	00102$>>8
      0000FE 01                     502 	.db	00103$>>8
      0000FF 01                     503 	.db	00104$>>8
      000100 01                     504 	.db	00105$>>8
      000101 01                     505 	.db	00106$>>8
      000102 01                     506 	.db	00107$>>8
      000103 01                     507 	.db	00108$>>8
                                    508 ;	transmitter_prev.c:29: case 0:		Transmit_data('l');P2 =0xA0;break;	
      000104                        509 00101$:
      000104 75 82 6C         [24]  510 	mov	dpl,#0x6c
      000107 12 02 80         [24]  511 	lcall	_Transmit_data
      00010A 75 A0 A0         [24]  512 	mov	_P2,#0xa0
      00010D 02 01 E7         [24]  513 	ljmp	00128$
                                    514 ;	transmitter_prev.c:30: case 1:		Transmit_data('a');P2 =0x80;break;
      000110                        515 00102$:
      000110 75 82 61         [24]  516 	mov	dpl,#0x61
      000113 12 02 80         [24]  517 	lcall	_Transmit_data
      000116 75 A0 80         [24]  518 	mov	_P2,#0x80
      000119 02 01 E7         [24]  519 	ljmp	00128$
                                    520 ;	transmitter_prev.c:31: case 2:		Transmit_data('b');P2 =0x80;break;
      00011C                        521 00103$:
      00011C 75 82 62         [24]  522 	mov	dpl,#0x62
      00011F 12 02 80         [24]  523 	lcall	_Transmit_data
      000122 75 A0 80         [24]  524 	mov	_P2,#0x80
      000125 02 01 E7         [24]  525 	ljmp	00128$
                                    526 ;	transmitter_prev.c:32: case 3:		Transmit_data('c');P2 =0xc0;break;
      000128                        527 00104$:
      000128 75 82 63         [24]  528 	mov	dpl,#0x63
      00012B 12 02 80         [24]  529 	lcall	_Transmit_data
      00012E 75 A0 C0         [24]  530 	mov	_P2,#0xc0
      000131 02 01 E7         [24]  531 	ljmp	00128$
                                    532 ;	transmitter_prev.c:33: case 4:		Transmit_data('e');P2 =0x60;break;
      000134                        533 00105$:
      000134 75 82 65         [24]  534 	mov	dpl,#0x65
      000137 12 02 80         [24]  535 	lcall	_Transmit_data
      00013A 75 A0 60         [24]  536 	mov	_P2,#0x60
      00013D 02 01 E7         [24]  537 	ljmp	00128$
                                    538 ;	transmitter_prev.c:34: case 5:		Transmit_data('f');P2 =0x20;break;
      000140                        539 00106$:
      000140 75 82 66         [24]  540 	mov	dpl,#0x66
      000143 12 02 80         [24]  541 	lcall	_Transmit_data
      000146 75 A0 20         [24]  542 	mov	_P2,#0x20
      000149 02 01 E7         [24]  543 	ljmp	00128$
                                    544 ;	transmitter_prev.c:35: case 6:		Transmit_data('g');P2 =0x20;break;
      00014C                        545 00107$:
      00014C 75 82 67         [24]  546 	mov	dpl,#0x67
      00014F 12 02 80         [24]  547 	lcall	_Transmit_data
      000152 75 A0 20         [24]  548 	mov	_P2,#0x20
      000155 02 01 E7         [24]  549 	ljmp	00128$
                                    550 ;	transmitter_prev.c:36: case 7:		Transmit_data('d');P2 =0x40;break;
      000158                        551 00108$:
      000158 75 82 64         [24]  552 	mov	dpl,#0x64
      00015B 12 02 80         [24]  553 	lcall	_Transmit_data
      00015E 75 A0 40         [24]  554 	mov	_P2,#0x40
      000161 02 01 E7         [24]  555 	ljmp	00128$
                                    556 ;	transmitter_prev.c:37: default:break;}
      000164                        557 00126$:
                                    558 ;	transmitter_prev.c:40: else if((timerCount > time_delay) &&(timerCount<time_delay*2))
      000164 C3               [12]  559 	clr	c
      000165 E5 0E            [12]  560 	mov	a,_time_delay
      000167 95 0C            [12]  561 	subb	a,_timerCount
      000169 E5 0F            [12]  562 	mov	a,(_time_delay + 1)
      00016B 64 80            [12]  563 	xrl	a,#0x80
      00016D 85 0D F0         [24]  564 	mov	b,(_timerCount + 1)
      000170 63 F0 80         [24]  565 	xrl	b,#0x80
      000173 95 F0            [12]  566 	subb	a,b
      000175 40 03            [24]  567 	jc	00163$
      000177 02 01 E2         [24]  568 	ljmp	00122$
      00017A                        569 00163$:
      00017A E5 0E            [12]  570 	mov	a,_time_delay
      00017C 25 E0            [12]  571 	add	a,acc
      00017E FE               [12]  572 	mov	r6,a
      00017F E5 0F            [12]  573 	mov	a,(_time_delay + 1)
      000181 33               [12]  574 	rlc	a
      000182 FF               [12]  575 	mov	r7,a
      000183 C3               [12]  576 	clr	c
      000184 E5 0C            [12]  577 	mov	a,_timerCount
      000186 9E               [12]  578 	subb	a,r6
      000187 E5 0D            [12]  579 	mov	a,(_timerCount + 1)
      000189 64 80            [12]  580 	xrl	a,#0x80
      00018B 8F F0            [24]  581 	mov	b,r7
      00018D 63 F0 80         [24]  582 	xrl	b,#0x80
      000190 95 F0            [12]  583 	subb	a,b
      000192 40 03            [24]  584 	jc	00164$
      000194 02 01 E2         [24]  585 	ljmp	00122$
      000197                        586 00164$:
                                    587 ;	transmitter_prev.c:42: switch(state)
      000197 E5 09            [12]  588 	mov	a,(_state + 1)
      000199 30 E7 03         [24]  589 	jnb	acc.7,00165$
      00019C 02 01 E7         [24]  590 	ljmp	00128$
      00019F                        591 00165$:
      00019F C3               [12]  592 	clr	c
      0001A0 74 07            [12]  593 	mov	a,#0x07
      0001A2 95 08            [12]  594 	subb	a,_state
      0001A4 74 80            [12]  595 	mov	a,#(0x00 ^ 0x80)
      0001A6 85 09 F0         [24]  596 	mov	b,(_state + 1)
      0001A9 63 F0 80         [24]  597 	xrl	b,#0x80
      0001AC 95 F0            [12]  598 	subb	a,b
      0001AE 50 03            [24]  599 	jnc	00166$
      0001B0 02 01 E7         [24]  600 	ljmp	00128$
      0001B3                        601 00166$:
      0001B3 E5 08            [12]  602 	mov	a,_state
      0001B5 24 0B            [12]  603 	add	a,#(00167$-3-.)
      0001B7 83               [24]  604 	movc	a,@a+pc
      0001B8 F5 82            [12]  605 	mov	dpl,a
      0001BA E5 08            [12]  606 	mov	a,_state
      0001BC 24 0C            [12]  607 	add	a,#(00168$-3-.)
      0001BE 83               [24]  608 	movc	a,@a+pc
      0001BF F5 83            [12]  609 	mov	dph,a
      0001C1 E4               [12]  610 	clr	a
      0001C2 73               [24]  611 	jmp	@a+dptr
      0001C3                        612 00167$:
      0001C3 D3                     613 	.db	00116$
      0001C4 D3                     614 	.db	00116$
      0001C5 D8                     615 	.db	00117$
      0001C6 D3                     616 	.db	00116$
      0001C7 D3                     617 	.db	00116$
      0001C8 DD                     618 	.db	00118$
      0001C9 D3                     619 	.db	00116$
      0001CA D3                     620 	.db	00116$
      0001CB                        621 00168$:
      0001CB 01                     622 	.db	00116$>>8
      0001CC 01                     623 	.db	00116$>>8
      0001CD 01                     624 	.db	00117$>>8
      0001CE 01                     625 	.db	00116$>>8
      0001CF 01                     626 	.db	00116$>>8
      0001D0 01                     627 	.db	00118$>>8
      0001D1 01                     628 	.db	00116$>>8
      0001D2 01                     629 	.db	00116$>>8
                                    630 ;	transmitter_prev.c:49: case 7:P2 =0x00;break;
      0001D3                        631 00116$:
      0001D3 75 A0 00         [24]  632 	mov	_P2,#0x00
                                    633 ;	transmitter_prev.c:50: case 2:P2 =0x80;break;
      0001D6 80 0F            [24]  634 	sjmp	00128$
      0001D8                        635 00117$:
      0001D8 75 A0 80         [24]  636 	mov	_P2,#0x80
                                    637 ;	transmitter_prev.c:51: case 5:P2 =0x20;break;
      0001DB 80 0A            [24]  638 	sjmp	00128$
      0001DD                        639 00118$:
      0001DD 75 A0 20         [24]  640 	mov	_P2,#0x20
                                    641 ;	transmitter_prev.c:52: default:break;}
      0001E0 80 05            [24]  642 	sjmp	00128$
      0001E2                        643 00122$:
                                    644 ;	transmitter_prev.c:56: timerCount = 0;
      0001E2 E4               [12]  645 	clr	a
      0001E3 F5 0C            [12]  646 	mov	_timerCount,a
      0001E5 F5 0D            [12]  647 	mov	(_timerCount + 1),a
      0001E7                        648 00128$:
                                    649 ;	transmitter_prev.c:57: }
      0001E7 D0 D0            [24]  650 	pop	psw
      0001E9 D0 00            [24]  651 	pop	(0+0)
      0001EB D0 01            [24]  652 	pop	(0+1)
      0001ED D0 02            [24]  653 	pop	(0+2)
      0001EF D0 03            [24]  654 	pop	(0+3)
      0001F1 D0 04            [24]  655 	pop	(0+4)
      0001F3 D0 05            [24]  656 	pop	(0+5)
      0001F5 D0 06            [24]  657 	pop	(0+6)
      0001F7 D0 07            [24]  658 	pop	(0+7)
      0001F9 D0 83            [24]  659 	pop	dph
      0001FB D0 82            [24]  660 	pop	dpl
      0001FD D0 F0            [24]  661 	pop	b
      0001FF D0 E0            [24]  662 	pop	acc
      000201 D0 20            [24]  663 	pop	bits
      000203 32               [24]  664 	reti
                                    665 ;------------------------------------------------------------
                                    666 ;Allocation info for local variables in function 'main'
                                    667 ;------------------------------------------------------------
                                    668 ;	transmitter_prev.c:59: void main(void)
                                    669 ;	-----------------------------------------
                                    670 ;	 function main
                                    671 ;	-----------------------------------------
      000204                        672 _main:
                                    673 ;	transmitter_prev.c:61: P1 = 0xff;
      000204 75 90 FF         [24]  674 	mov	_P1,#0xff
                                    675 ;	transmitter_prev.c:62: P2 = 0x00;
                                    676 ;	transmitter_prev.c:63: state = 0;
      000207 E4               [12]  677 	clr	a
      000208 F5 A0            [12]  678 	mov	_P2,a
      00020A F5 08            [12]  679 	mov	_state,a
      00020C F5 09            [12]  680 	mov	(_state + 1),a
                                    681 ;	transmitter_prev.c:64: startup();
      00020E 12 02 B4         [24]  682 	lcall	_startup
                                    683 ;	transmitter_prev.c:65: P2 = 0x00;
      000211 75 A0 00         [24]  684 	mov	_P2,#0x00
                                    685 ;	transmitter_prev.c:66: UART_Init();
      000214 12 02 74         [24]  686 	lcall	_UART_Init
                                    687 ;	transmitter_prev.c:67: start:while(!data_r)
      000217                        688 00102$:
      000217 E5 0A            [12]  689 	mov	a,_data_r
      000219 70 13            [24]  690 	jnz	00104$
                                    691 ;	transmitter_prev.c:69: data_r=SBUF;
      00021B 85 99 0A         [24]  692 	mov	_data_r,_SBUF
                                    693 ;	transmitter_prev.c:70: RI=0;
                                    694 ;	assignBit
      00021E C2 98            [12]  695 	clr	_RI
                                    696 ;	transmitter_prev.c:71: P2 = 0xA0; // Turn ON all LED's connected to Port1
      000220 75 A0 A0         [24]  697 	mov	_P2,#0xa0
                                    698 ;	transmitter_prev.c:72: delay();
      000223 12 02 4B         [24]  699 	lcall	_delay
                                    700 ;	transmitter_prev.c:73: P2 = 0x00; // Turn OFF all LED's connected to Port1
      000226 75 A0 00         [24]  701 	mov	_P2,#0x00
                                    702 ;	transmitter_prev.c:74: delay();
      000229 12 02 4B         [24]  703 	lcall	_delay
      00022C 80 E9            [24]  704 	sjmp	00102$
      00022E                        705 00104$:
                                    706 ;	transmitter_prev.c:77: if(data_r=='x')
      00022E 74 78            [12]  707 	mov	a,#0x78
      000230 B5 0A E4         [24]  708 	cjne	a,_data_r,00102$
                                    709 ;	transmitter_prev.c:79: Transmit_data('y');
      000233 75 82 79         [24]  710 	mov	dpl,#0x79
      000236 12 02 80         [24]  711 	lcall	_Transmit_data
                                    712 ;	transmitter_prev.c:80: data_r=0;
      000239 75 0A 00         [24]  713 	mov	_data_r,#0x00
                                    714 ;	transmitter_prev.c:85: InitTimer1();
      00023C 12 03 BA         [24]  715 	lcall	_InitTimer1
                                    716 ;	transmitter_prev.c:86: ET0 = 1;         // Enable Timer1 interrupts	
                                    717 ;	assignBit
      00023F D2 A9            [12]  718 	setb	_ET0
                                    719 ;	transmitter_prev.c:87: EA  = 1;         // Global interrupt enable
                                    720 ;	assignBit
      000241 D2 AF            [12]  721 	setb	_EA
                                    722 ;	transmitter_prev.c:89: while(1)
      000243                        723 00109$:
                                    724 ;	transmitter_prev.c:91: touch();
      000243 12 02 F0         [24]  725 	lcall	_touch
                                    726 ;	transmitter_prev.c:92: check_x();
      000246 12 02 89         [24]  727 	lcall	_check_x
                                    728 ;	transmitter_prev.c:94: }
      000249 80 F8            [24]  729 	sjmp	00109$
                                    730 ;------------------------------------------------------------
                                    731 ;Allocation info for local variables in function 'delay'
                                    732 ;------------------------------------------------------------
                                    733 ;i                         Allocated to registers r6 r7 
                                    734 ;j                         Allocated to registers r4 r5 
                                    735 ;------------------------------------------------------------
                                    736 ;	transmitter_prev.c:97: void delay(void)
                                    737 ;	-----------------------------------------
                                    738 ;	 function delay
                                    739 ;	-----------------------------------------
      00024B                        740 _delay:
                                    741 ;	transmitter_prev.c:100: for(i=0;i<0x33;i++)
      00024B 7E 00            [12]  742 	mov	r6,#0x00
      00024D 7F 00            [12]  743 	mov	r7,#0x00
      00024F                        744 00106$:
                                    745 ;	transmitter_prev.c:101: for(j=0;j<0xff;j++);
      00024F 7C FF            [12]  746 	mov	r4,#0xff
      000251 7D 00            [12]  747 	mov	r5,#0x00
      000253                        748 00105$:
      000253 EC               [12]  749 	mov	a,r4
      000254 24 FF            [12]  750 	add	a,#0xff
      000256 FA               [12]  751 	mov	r2,a
      000257 ED               [12]  752 	mov	a,r5
      000258 34 FF            [12]  753 	addc	a,#0xff
      00025A FB               [12]  754 	mov	r3,a
      00025B 8A 04            [24]  755 	mov	ar4,r2
      00025D 8B 05            [24]  756 	mov	ar5,r3
      00025F EA               [12]  757 	mov	a,r2
      000260 4B               [12]  758 	orl	a,r3
      000261 70 F0            [24]  759 	jnz	00105$
                                    760 ;	transmitter_prev.c:100: for(i=0;i<0x33;i++)
      000263 0E               [12]  761 	inc	r6
      000264 BE 00 01         [24]  762 	cjne	r6,#0x00,00124$
      000267 0F               [12]  763 	inc	r7
      000268                        764 00124$:
      000268 C3               [12]  765 	clr	c
      000269 EE               [12]  766 	mov	a,r6
      00026A 94 33            [12]  767 	subb	a,#0x33
      00026C EF               [12]  768 	mov	a,r7
      00026D 64 80            [12]  769 	xrl	a,#0x80
      00026F 94 80            [12]  770 	subb	a,#0x80
      000271 40 DC            [24]  771 	jc	00106$
                                    772 ;	transmitter_prev.c:102: }
      000273 22               [24]  773 	ret
                                    774 ;------------------------------------------------------------
                                    775 ;Allocation info for local variables in function 'UART_Init'
                                    776 ;------------------------------------------------------------
                                    777 ;	transmitter_prev.c:104: void UART_Init()
                                    778 ;	-----------------------------------------
                                    779 ;	 function UART_Init
                                    780 ;	-----------------------------------------
      000274                        781 _UART_Init:
                                    782 ;	transmitter_prev.c:106: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      000274 75 89 20         [24]  783 	mov	_TMOD,#0x20
                                    784 ;	transmitter_prev.c:107: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      000277 75 8D FD         [24]  785 	mov	_TH1,#0xfd
                                    786 ;	transmitter_prev.c:108: SCON = 0x50;		/* Mode 1, reception enable */
      00027A 75 98 50         [24]  787 	mov	_SCON,#0x50
                                    788 ;	transmitter_prev.c:109: TR1 = 1;		/* Start timer 1 */
                                    789 ;	assignBit
      00027D D2 8E            [12]  790 	setb	_TR1
                                    791 ;	transmitter_prev.c:110: }
      00027F 22               [24]  792 	ret
                                    793 ;------------------------------------------------------------
                                    794 ;Allocation info for local variables in function 'Transmit_data'
                                    795 ;------------------------------------------------------------
                                    796 ;tx_data                   Allocated to registers 
                                    797 ;------------------------------------------------------------
                                    798 ;	transmitter_prev.c:112: void Transmit_data(char tx_data)
                                    799 ;	-----------------------------------------
                                    800 ;	 function Transmit_data
                                    801 ;	-----------------------------------------
      000280                        802 _Transmit_data:
      000280 85 82 99         [24]  803 	mov	_SBUF,dpl
                                    804 ;	transmitter_prev.c:115: while (TI==0);		/* Wait until stop bit transmit */
      000283                        805 00101$:
                                    806 ;	transmitter_prev.c:116: TI = 0;			/* Clear TI flag */
                                    807 ;	assignBit
      000283 10 99 02         [24]  808 	jbc	_TI,00114$
      000286 80 FB            [24]  809 	sjmp	00101$
      000288                        810 00114$:
                                    811 ;	transmitter_prev.c:117: }
      000288 22               [24]  812 	ret
                                    813 ;------------------------------------------------------------
                                    814 ;Allocation info for local variables in function 'check_x'
                                    815 ;------------------------------------------------------------
                                    816 ;	transmitter_prev.c:121: void check_x()
                                    817 ;	-----------------------------------------
                                    818 ;	 function check_x
                                    819 ;	-----------------------------------------
      000289                        820 _check_x:
                                    821 ;	transmitter_prev.c:124: TI=0;
                                    822 ;	assignBit
      000289 C2 99            [12]  823 	clr	_TI
                                    824 ;	transmitter_prev.c:125: data_r = SBUF;		/* Load char in SBUF register */
      00028B 85 99 0A         [24]  825 	mov	_data_r,_SBUF
                                    826 ;	transmitter_prev.c:126: RI = 0;			/* Clear TI flag */
                                    827 ;	assignBit
      00028E C2 98            [12]  828 	clr	_RI
                                    829 ;	transmitter_prev.c:127: if(data_r=='x')
      000290 74 78            [12]  830 	mov	a,#0x78
      000292 B5 0A 06         [24]  831 	cjne	a,_data_r,00108$
                                    832 ;	transmitter_prev.c:128: Transmit_data('y');
      000295 75 82 79         [24]  833 	mov	dpl,#0x79
      000298 02 02 80         [24]  834 	ljmp	_Transmit_data
      00029B                        835 00108$:
                                    836 ;	transmitter_prev.c:129: else if((data_r=='m')||(data_r=='h'))
      00029B 74 6D            [12]  837 	mov	a,#0x6d
      00029D B5 0A 02         [24]  838 	cjne	a,_data_r,00126$
      0002A0 80 05            [24]  839 	sjmp	00103$
      0002A2                        840 00126$:
      0002A2 74 68            [12]  841 	mov	a,#0x68
      0002A4 B5 0A 04         [24]  842 	cjne	a,_data_r,00104$
      0002A7                        843 00103$:
                                    844 ;	transmitter_prev.c:130: received = 0;
      0002A7 75 0B 00         [24]  845 	mov	_received,#0x00
      0002AA 22               [24]  846 	ret
      0002AB                        847 00104$:
                                    848 ;	transmitter_prev.c:131: else if(data_r=='l')
      0002AB 74 6C            [12]  849 	mov	a,#0x6c
      0002AD B5 0A 03         [24]  850 	cjne	a,_data_r,00110$
                                    851 ;	transmitter_prev.c:132: received = 1;
      0002B0 75 0B 01         [24]  852 	mov	_received,#0x01
      0002B3                        853 00110$:
                                    854 ;	transmitter_prev.c:133: }
      0002B3 22               [24]  855 	ret
                                    856 ;------------------------------------------------------------
                                    857 ;Allocation info for local variables in function 'startup'
                                    858 ;------------------------------------------------------------
                                    859 ;	transmitter_prev.c:134: void startup(void)
                                    860 ;	-----------------------------------------
                                    861 ;	 function startup
                                    862 ;	-----------------------------------------
      0002B4                        863 _startup:
                                    864 ;	transmitter_prev.c:136: P2 = 0x00;
      0002B4 75 A0 00         [24]  865 	mov	_P2,#0x00
                                    866 ;	transmitter_prev.c:137: delay();delay();
      0002B7 12 02 4B         [24]  867 	lcall	_delay
      0002BA 12 02 4B         [24]  868 	lcall	_delay
                                    869 ;	transmitter_prev.c:138: P2 = 0xE0;
      0002BD 75 A0 E0         [24]  870 	mov	_P2,#0xe0
                                    871 ;	transmitter_prev.c:139: delay();
      0002C0 12 02 4B         [24]  872 	lcall	_delay
                                    873 ;	transmitter_prev.c:140: P2 = 0x80;
      0002C3 75 A0 80         [24]  874 	mov	_P2,#0x80
                                    875 ;	transmitter_prev.c:141: delay();delay();delay();delay();
      0002C6 12 02 4B         [24]  876 	lcall	_delay
      0002C9 12 02 4B         [24]  877 	lcall	_delay
      0002CC 12 02 4B         [24]  878 	lcall	_delay
      0002CF 12 02 4B         [24]  879 	lcall	_delay
                                    880 ;	transmitter_prev.c:142: P2 = 0x40;
      0002D2 75 A0 40         [24]  881 	mov	_P2,#0x40
                                    882 ;	transmitter_prev.c:143: delay();delay();delay();delay();
      0002D5 12 02 4B         [24]  883 	lcall	_delay
      0002D8 12 02 4B         [24]  884 	lcall	_delay
      0002DB 12 02 4B         [24]  885 	lcall	_delay
      0002DE 12 02 4B         [24]  886 	lcall	_delay
                                    887 ;	transmitter_prev.c:144: P2 = 0x20;
      0002E1 75 A0 20         [24]  888 	mov	_P2,#0x20
                                    889 ;	transmitter_prev.c:145: delay();delay();delay();delay();
      0002E4 12 02 4B         [24]  890 	lcall	_delay
      0002E7 12 02 4B         [24]  891 	lcall	_delay
      0002EA 12 02 4B         [24]  892 	lcall	_delay
                                    893 ;	transmitter_prev.c:146: }
      0002ED 02 02 4B         [24]  894 	ljmp	_delay
                                    895 ;------------------------------------------------------------
                                    896 ;Allocation info for local variables in function 'touch'
                                    897 ;------------------------------------------------------------
                                    898 ;	transmitter_prev.c:148: void touch(void)
                                    899 ;	-----------------------------------------
                                    900 ;	 function touch
                                    901 ;	-----------------------------------------
      0002F0                        902 _touch:
                                    903 ;	transmitter_prev.c:150: switch(P1)
      0002F0 AF 90            [24]  904 	mov	r7,_P1
      0002F2 BF 1F 03         [24]  905 	cjne	r7,#0x1f,00154$
      0002F5 02 03 AD         [24]  906 	ljmp	00113$
      0002F8                        907 00154$:
      0002F8 BF 2F 03         [24]  908 	cjne	r7,#0x2f,00155$
      0002FB 02 03 9A         [24]  909 	ljmp	00112$
      0002FE                        910 00155$:
      0002FE BF 37 03         [24]  911 	cjne	r7,#0x37,00156$
      000301 02 03 75         [24]  912 	ljmp	00108$
      000304                        913 00156$:
      000304 BF 3B 02         [24]  914 	cjne	r7,#0x3b,00157$
      000307 80 47            [24]  915 	sjmp	00104$
      000309                        916 00157$:
      000309 BF 3D 02         [24]  917 	cjne	r7,#0x3d,00158$
      00030C 80 2F            [24]  918 	sjmp	00103$
      00030E                        919 00158$:
      00030E BF 3E 02         [24]  920 	cjne	r7,#0x3e,00159$
      000311 80 17            [24]  921 	sjmp	00102$
      000313                        922 00159$:
      000313 BF 3F 02         [24]  923 	cjne	r7,#0x3f,00160$
      000316 80 01            [24]  924 	sjmp	00161$
      000318                        925 00160$:
      000318 22               [24]  926 	ret
      000319                        927 00161$:
                                    928 ;	transmitter_prev.c:153: Transmit_data('l');
      000319 75 82 6C         [24]  929 	mov	dpl,#0x6c
      00031C 12 02 80         [24]  930 	lcall	_Transmit_data
                                    931 ;	transmitter_prev.c:154: time_delay=10;
      00031F 75 0E 0A         [24]  932 	mov	_time_delay,#0x0a
                                    933 ;	transmitter_prev.c:155: state = 0;
      000322 E4               [12]  934 	clr	a
      000323 F5 0F            [12]  935 	mov	(_time_delay + 1),a
      000325 F5 08            [12]  936 	mov	_state,a
      000327 F5 09            [12]  937 	mov	(_state + 1),a
                                    938 ;	transmitter_prev.c:156: break;
      000329 22               [24]  939 	ret
                                    940 ;	transmitter_prev.c:158: case 0x3e:
      00032A                        941 00102$:
                                    942 ;	transmitter_prev.c:159: Transmit_data('a');
      00032A 75 82 61         [24]  943 	mov	dpl,#0x61
      00032D 12 02 80         [24]  944 	lcall	_Transmit_data
                                    945 ;	transmitter_prev.c:160: time_delay=120;
      000330 75 0E 78         [24]  946 	mov	_time_delay,#0x78
      000333 75 0F 00         [24]  947 	mov	(_time_delay + 1),#0x00
                                    948 ;	transmitter_prev.c:161: state = 1;
      000336 75 08 01         [24]  949 	mov	_state,#0x01
      000339 75 09 00         [24]  950 	mov	(_state + 1),#0x00
                                    951 ;	transmitter_prev.c:162: break;
      00033C 22               [24]  952 	ret
                                    953 ;	transmitter_prev.c:164: case 0x3d:
      00033D                        954 00103$:
                                    955 ;	transmitter_prev.c:165: Transmit_data('b');
      00033D 75 82 62         [24]  956 	mov	dpl,#0x62
      000340 12 02 80         [24]  957 	lcall	_Transmit_data
                                    958 ;	transmitter_prev.c:166: state = 2;
      000343 75 08 02         [24]  959 	mov	_state,#0x02
      000346 75 09 00         [24]  960 	mov	(_state + 1),#0x00
                                    961 ;	transmitter_prev.c:167: time_delay=5;
      000349 75 0E 05         [24]  962 	mov	_time_delay,#0x05
      00034C 75 0F 00         [24]  963 	mov	(_time_delay + 1),#0x00
                                    964 ;	transmitter_prev.c:168: break;
                                    965 ;	transmitter_prev.c:170: case 0x3b:
      00034F 22               [24]  966 	ret
      000350                        967 00104$:
                                    968 ;	transmitter_prev.c:171: if(received)
      000350 E5 0B            [12]  969 	mov	a,_received
      000352 60 0E            [24]  970 	jz	00106$
                                    971 ;	transmitter_prev.c:172: {Transmit_data('d');
      000354 75 82 64         [24]  972 	mov	dpl,#0x64
      000357 12 02 80         [24]  973 	lcall	_Transmit_data
                                    974 ;	transmitter_prev.c:173: state = 7;
      00035A 75 08 07         [24]  975 	mov	_state,#0x07
      00035D 75 09 00         [24]  976 	mov	(_state + 1),#0x00
      000360 80 0C            [24]  977 	sjmp	00107$
      000362                        978 00106$:
                                    979 ;	transmitter_prev.c:176: {Transmit_data('c');
      000362 75 82 63         [24]  980 	mov	dpl,#0x63
      000365 12 02 80         [24]  981 	lcall	_Transmit_data
                                    982 ;	transmitter_prev.c:177: state = 3;
      000368 75 08 03         [24]  983 	mov	_state,#0x03
      00036B 75 09 00         [24]  984 	mov	(_state + 1),#0x00
      00036E                        985 00107$:
                                    986 ;	transmitter_prev.c:179: time_delay=10;
      00036E 75 0E 0A         [24]  987 	mov	_time_delay,#0x0a
      000371 75 0F 00         [24]  988 	mov	(_time_delay + 1),#0x00
                                    989 ;	transmitter_prev.c:180: break;
                                    990 ;	transmitter_prev.c:182: case 0x37:
      000374 22               [24]  991 	ret
      000375                        992 00108$:
                                    993 ;	transmitter_prev.c:183: if(received)
      000375 E5 0B            [12]  994 	mov	a,_received
      000377 60 0E            [24]  995 	jz	00110$
                                    996 ;	transmitter_prev.c:184: {Transmit_data('d');
      000379 75 82 64         [24]  997 	mov	dpl,#0x64
      00037C 12 02 80         [24]  998 	lcall	_Transmit_data
                                    999 ;	transmitter_prev.c:185: state = 7;
      00037F 75 08 07         [24] 1000 	mov	_state,#0x07
      000382 75 09 00         [24] 1001 	mov	(_state + 1),#0x00
      000385 80 0C            [24] 1002 	sjmp	00111$
      000387                       1003 00110$:
                                   1004 ;	transmitter_prev.c:188: {Transmit_data('e');
      000387 75 82 65         [24] 1005 	mov	dpl,#0x65
      00038A 12 02 80         [24] 1006 	lcall	_Transmit_data
                                   1007 ;	transmitter_prev.c:189: state = 4;
      00038D 75 08 04         [24] 1008 	mov	_state,#0x04
      000390 75 09 00         [24] 1009 	mov	(_state + 1),#0x00
      000393                       1010 00111$:
                                   1011 ;	transmitter_prev.c:191: time_delay=10;
      000393 75 0E 0A         [24] 1012 	mov	_time_delay,#0x0a
      000396 75 0F 00         [24] 1013 	mov	(_time_delay + 1),#0x00
                                   1014 ;	transmitter_prev.c:192: break;
                                   1015 ;	transmitter_prev.c:194: case 0x2f:
      000399 22               [24] 1016 	ret
      00039A                       1017 00112$:
                                   1018 ;	transmitter_prev.c:195: Transmit_data('f');
      00039A 75 82 66         [24] 1019 	mov	dpl,#0x66
      00039D 12 02 80         [24] 1020 	lcall	_Transmit_data
                                   1021 ;	transmitter_prev.c:196: state = 5;
      0003A0 75 08 05         [24] 1022 	mov	_state,#0x05
      0003A3 75 09 00         [24] 1023 	mov	(_state + 1),#0x00
                                   1024 ;	transmitter_prev.c:197: time_delay=5;
      0003A6 75 0E 05         [24] 1025 	mov	_time_delay,#0x05
      0003A9 75 0F 00         [24] 1026 	mov	(_time_delay + 1),#0x00
                                   1027 ;	transmitter_prev.c:198: break;
                                   1028 ;	transmitter_prev.c:200: case 0x1f:
      0003AC 22               [24] 1029 	ret
      0003AD                       1030 00113$:
                                   1031 ;	transmitter_prev.c:201: state = 6;
      0003AD 75 08 06         [24] 1032 	mov	_state,#0x06
      0003B0 75 09 00         [24] 1033 	mov	(_state + 1),#0x00
                                   1034 ;	transmitter_prev.c:202: time_delay=120;
      0003B3 75 0E 78         [24] 1035 	mov	_time_delay,#0x78
      0003B6 75 0F 00         [24] 1036 	mov	(_time_delay + 1),#0x00
                                   1037 ;	transmitter_prev.c:206: }
                                   1038 ;	transmitter_prev.c:207: }
      0003B9 22               [24] 1039 	ret
                                   1040 ;------------------------------------------------------------
                                   1041 ;Allocation info for local variables in function 'InitTimer1'
                                   1042 ;------------------------------------------------------------
                                   1043 ;	transmitter_prev.c:211: void InitTimer1(void)
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function InitTimer1
                                   1046 ;	-----------------------------------------
      0003BA                       1047 _InitTimer1:
                                   1048 ;	transmitter_prev.c:213: TMOD |= 0x01;    // Set timer0 in mode 1
      0003BA 43 89 01         [24] 1049 	orl	_TMOD,#0x01
                                   1050 ;	transmitter_prev.c:214: TH0 = 0x4B;      // 50 msec reloading time
      0003BD 75 8C 4B         [24] 1051 	mov	_TH0,#0x4b
                                   1052 ;	transmitter_prev.c:215: TL0 = 0xFD;      // First time value
      0003C0 75 8A FD         [24] 1053 	mov	_TL0,#0xfd
                                   1054 ;	transmitter_prev.c:216: TR0 = 1;         // Start Timer 1
                                   1055 ;	assignBit
      0003C3 D2 8C            [12] 1056 	setb	_TR0
                                   1057 ;	transmitter_prev.c:217: ET0 = 1;         // Enable Timer1 interrupts	
                                   1058 ;	assignBit
      0003C5 D2 A9            [12] 1059 	setb	_ET0
                                   1060 ;	transmitter_prev.c:218: }
      0003C7 22               [24] 1061 	ret
                                   1062 	.area CSEG    (CODE)
                                   1063 	.area CONST   (CODE)
                                   1064 	.area XINIT   (CODE)
                                   1065 	.area CABS    (ABS,CODE)
