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
                                    132 	.globl _auto_flag
                                    133 	.globl _ac_state
                                    134 	.globl _off
                                    135 	.globl _state
                                    136 	.globl _time_delay
                                    137 	.globl _timerCount
                                    138 	.globl _data_r
                                    139 	.globl _start
                                    140 	.globl _startup
                                    141 	.globl _delay
                                    142 	.globl _UART_Init
                                    143 	.globl _Transmit_data
                                    144 	.globl _handshake
                                    145 	.globl _check_data
                                    146 	.globl _InitTimer0
                                    147 	.globl _check_ac
                                    148 ;--------------------------------------------------------
                                    149 ; special function registers
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0	=	0x0080
                           000081   154 _SP	=	0x0081
                           000082   155 _DPL	=	0x0082
                           000083   156 _DPH	=	0x0083
                           000087   157 _PCON	=	0x0087
                           000088   158 _TCON	=	0x0088
                           000089   159 _TMOD	=	0x0089
                           00008A   160 _TL0	=	0x008a
                           00008B   161 _TL1	=	0x008b
                           00008C   162 _TH0	=	0x008c
                           00008D   163 _TH1	=	0x008d
                           000090   164 _P1	=	0x0090
                           000098   165 _SCON	=	0x0098
                           000099   166 _SBUF	=	0x0099
                           0000A0   167 _P2	=	0x00a0
                           0000A8   168 _IE	=	0x00a8
                           0000B0   169 _P3	=	0x00b0
                           0000B8   170 _IP	=	0x00b8
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 _ACC	=	0x00e0
                           0000F0   173 _B	=	0x00f0
                           0000C8   174 _T2CON	=	0x00c8
                           0000CA   175 _RCAP2L	=	0x00ca
                           0000CB   176 _RCAP2H	=	0x00cb
                           0000CC   177 _TL2	=	0x00cc
                           0000CD   178 _TH2	=	0x00cd
                                    179 ;--------------------------------------------------------
                                    180 ; special function bits
                                    181 ;--------------------------------------------------------
                                    182 	.area RSEG    (ABS,DATA)
      000000                        183 	.org 0x0000
                           000080   184 _P0_0	=	0x0080
                           000081   185 _P0_1	=	0x0081
                           000082   186 _P0_2	=	0x0082
                           000083   187 _P0_3	=	0x0083
                           000084   188 _P0_4	=	0x0084
                           000085   189 _P0_5	=	0x0085
                           000086   190 _P0_6	=	0x0086
                           000087   191 _P0_7	=	0x0087
                           000088   192 _IT0	=	0x0088
                           000089   193 _IE0	=	0x0089
                           00008A   194 _IT1	=	0x008a
                           00008B   195 _IE1	=	0x008b
                           00008C   196 _TR0	=	0x008c
                           00008D   197 _TF0	=	0x008d
                           00008E   198 _TR1	=	0x008e
                           00008F   199 _TF1	=	0x008f
                           000090   200 _P1_0	=	0x0090
                           000091   201 _P1_1	=	0x0091
                           000092   202 _P1_2	=	0x0092
                           000093   203 _P1_3	=	0x0093
                           000094   204 _P1_4	=	0x0094
                           000095   205 _P1_5	=	0x0095
                           000096   206 _P1_6	=	0x0096
                           000097   207 _P1_7	=	0x0097
                           000098   208 _RI	=	0x0098
                           000099   209 _TI	=	0x0099
                           00009A   210 _RB8	=	0x009a
                           00009B   211 _TB8	=	0x009b
                           00009C   212 _REN	=	0x009c
                           00009D   213 _SM2	=	0x009d
                           00009E   214 _SM1	=	0x009e
                           00009F   215 _SM0	=	0x009f
                           0000A0   216 _P2_0	=	0x00a0
                           0000A1   217 _P2_1	=	0x00a1
                           0000A2   218 _P2_2	=	0x00a2
                           0000A3   219 _P2_3	=	0x00a3
                           0000A4   220 _P2_4	=	0x00a4
                           0000A5   221 _P2_5	=	0x00a5
                           0000A6   222 _P2_6	=	0x00a6
                           0000A7   223 _P2_7	=	0x00a7
                           0000A8   224 _EX0	=	0x00a8
                           0000A9   225 _ET0	=	0x00a9
                           0000AA   226 _EX1	=	0x00aa
                           0000AB   227 _ET1	=	0x00ab
                           0000AC   228 _ES	=	0x00ac
                           0000AF   229 _EA	=	0x00af
                           0000B0   230 _P3_0	=	0x00b0
                           0000B1   231 _P3_1	=	0x00b1
                           0000B2   232 _P3_2	=	0x00b2
                           0000B3   233 _P3_3	=	0x00b3
                           0000B4   234 _P3_4	=	0x00b4
                           0000B5   235 _P3_5	=	0x00b5
                           0000B6   236 _P3_6	=	0x00b6
                           0000B7   237 _P3_7	=	0x00b7
                           0000B0   238 _RXD	=	0x00b0
                           0000B1   239 _TXD	=	0x00b1
                           0000B2   240 _INT0	=	0x00b2
                           0000B3   241 _INT1	=	0x00b3
                           0000B4   242 _T0	=	0x00b4
                           0000B5   243 _T1	=	0x00b5
                           0000B6   244 _WR	=	0x00b6
                           0000B7   245 _RD	=	0x00b7
                           0000B8   246 _PX0	=	0x00b8
                           0000B9   247 _PT0	=	0x00b9
                           0000BA   248 _PX1	=	0x00ba
                           0000BB   249 _PT1	=	0x00bb
                           0000BC   250 _PS	=	0x00bc
                           0000D0   251 _P	=	0x00d0
                           0000D1   252 _F1	=	0x00d1
                           0000D2   253 _OV	=	0x00d2
                           0000D3   254 _RS0	=	0x00d3
                           0000D4   255 _RS1	=	0x00d4
                           0000D5   256 _F0	=	0x00d5
                           0000D6   257 _AC	=	0x00d6
                           0000D7   258 _CY	=	0x00d7
                           0000AD   259 _ET2	=	0x00ad
                           0000BD   260 _PT2	=	0x00bd
                           0000C8   261 _T2CON_0	=	0x00c8
                           0000C9   262 _T2CON_1	=	0x00c9
                           0000CA   263 _T2CON_2	=	0x00ca
                           0000CB   264 _T2CON_3	=	0x00cb
                           0000CC   265 _T2CON_4	=	0x00cc
                           0000CD   266 _T2CON_5	=	0x00cd
                           0000CE   267 _T2CON_6	=	0x00ce
                           0000CF   268 _T2CON_7	=	0x00cf
                           0000C8   269 _CP_RL2	=	0x00c8
                           0000C9   270 _C_T2	=	0x00c9
                           0000CA   271 _TR2	=	0x00ca
                           0000CB   272 _EXEN2	=	0x00cb
                           0000CC   273 _TCLK	=	0x00cc
                           0000CD   274 _RCLK	=	0x00cd
                           0000CE   275 _EXF2	=	0x00ce
                           0000CF   276 _TF2	=	0x00cf
                                    277 ;--------------------------------------------------------
                                    278 ; overlayable register banks
                                    279 ;--------------------------------------------------------
                                    280 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        281 	.ds 8
                                    282 ;--------------------------------------------------------
                                    283 ; overlayable bit register bank
                                    284 ;--------------------------------------------------------
                                    285 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        286 bits:
      000021                        287 	.ds 1
                           008000   288 	b0 = bits[0]
                           008100   289 	b1 = bits[1]
                           008200   290 	b2 = bits[2]
                           008300   291 	b3 = bits[3]
                           008400   292 	b4 = bits[4]
                           008500   293 	b5 = bits[5]
                           008600   294 	b6 = bits[6]
                           008700   295 	b7 = bits[7]
                                    296 ;--------------------------------------------------------
                                    297 ; internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area DSEG    (DATA)
      000008                        300 _start::
      000008                        301 	.ds 1
      000009                        302 _data_r::
      000009                        303 	.ds 1
      00000A                        304 _timerCount::
      00000A                        305 	.ds 2
      00000C                        306 _time_delay::
      00000C                        307 	.ds 2
      00000E                        308 _state::
      00000E                        309 	.ds 2
      000010                        310 _off::
      000010                        311 	.ds 2
      000012                        312 _ac_state::
      000012                        313 	.ds 1
                                    314 ;--------------------------------------------------------
                                    315 ; overlayable items in internal ram 
                                    316 ;--------------------------------------------------------
                                    317 	.area	OSEG    (OVR,DATA)
                                    318 	.area	OSEG    (OVR,DATA)
                                    319 ;--------------------------------------------------------
                                    320 ; Stack segment in internal ram 
                                    321 ;--------------------------------------------------------
                                    322 	.area	SSEG
      000022                        323 __start__stack:
      000022                        324 	.ds	1
                                    325 
                                    326 ;--------------------------------------------------------
                                    327 ; indirectly addressable internal ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area ISEG    (DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; absolute internal ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area IABS    (ABS,DATA)
                                    334 	.area IABS    (ABS,DATA)
                                    335 ;--------------------------------------------------------
                                    336 ; bit data
                                    337 ;--------------------------------------------------------
                                    338 	.area BSEG    (BIT)
      000000                        339 _auto_flag::
      000000                        340 	.ds 1
                                    341 ;--------------------------------------------------------
                                    342 ; paged external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area PSEG    (PAG,XDATA)
                                    345 ;--------------------------------------------------------
                                    346 ; external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area XSEG    (XDATA)
                                    349 ;--------------------------------------------------------
                                    350 ; absolute external ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area XABS    (ABS,XDATA)
                                    353 ;--------------------------------------------------------
                                    354 ; external initialized ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area XISEG   (XDATA)
                                    357 	.area HOME    (CODE)
                                    358 	.area GSINIT0 (CODE)
                                    359 	.area GSINIT1 (CODE)
                                    360 	.area GSINIT2 (CODE)
                                    361 	.area GSINIT3 (CODE)
                                    362 	.area GSINIT4 (CODE)
                                    363 	.area GSINIT5 (CODE)
                                    364 	.area GSINIT  (CODE)
                                    365 	.area GSFINAL (CODE)
                                    366 	.area CSEG    (CODE)
                                    367 ;--------------------------------------------------------
                                    368 ; interrupt vector 
                                    369 ;--------------------------------------------------------
                                    370 	.area HOME    (CODE)
      000000                        371 __interrupt_vect:
      000000 02 00 11         [24]  372 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  373 	reti
      000004                        374 	.ds	7
      00000B 02 00 7A         [24]  375 	ljmp	_isr_timer0
                                    376 ;--------------------------------------------------------
                                    377 ; global & static initialisations
                                    378 ;--------------------------------------------------------
                                    379 	.area HOME    (CODE)
                                    380 	.area GSINIT  (CODE)
                                    381 	.area GSFINAL (CODE)
                                    382 	.area GSINIT  (CODE)
                                    383 	.globl __sdcc_gsinit_startup
                                    384 	.globl __sdcc_program_startup
                                    385 	.globl __start__stack
                                    386 	.globl __mcs51_genXINIT
                                    387 	.globl __mcs51_genXRAMCLEAR
                                    388 	.globl __mcs51_genRAMCLEAR
                                    389 ;	Receiver.c:33: char start=0;
      00006A 75 08 00         [24]  390 	mov	_start,#0x00
                                    391 ;	Receiver.c:35: volatile int timerCount = 0;
      00006D E4               [12]  392 	clr	a
      00006E F5 0A            [12]  393 	mov	_timerCount,a
      000070 F5 0B            [12]  394 	mov	(_timerCount + 1),a
                                    395 ;	Receiver.c:36: volatile int time_delay = 15;
      000072 75 0C 0F         [24]  396 	mov	_time_delay,#0x0f
                                    397 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      000075 F5 0D            [12]  398 	mov	(_time_delay + 1),a
                                    399 	.area GSFINAL (CODE)
      000077 02 00 0E         [24]  400 	ljmp	__sdcc_program_startup
                                    401 ;--------------------------------------------------------
                                    402 ; Home
                                    403 ;--------------------------------------------------------
                                    404 	.area HOME    (CODE)
                                    405 	.area HOME    (CODE)
      00000E                        406 __sdcc_program_startup:
      00000E 02 02 C2         [24]  407 	ljmp	_main
                                    408 ;	return from main will return to caller
                                    409 ;--------------------------------------------------------
                                    410 ; code
                                    411 ;--------------------------------------------------------
                                    412 	.area CSEG    (CODE)
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'isr_timer0'
                                    415 ;------------------------------------------------------------
                                    416 ;	Receiver.c:40: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
                                    417 ;	-----------------------------------------
                                    418 ;	 function isr_timer0
                                    419 ;	-----------------------------------------
      00007A                        420 _isr_timer0:
                           000007   421 	ar7 = 0x07
                           000006   422 	ar6 = 0x06
                           000005   423 	ar5 = 0x05
                           000004   424 	ar4 = 0x04
                           000003   425 	ar3 = 0x03
                           000002   426 	ar2 = 0x02
                           000001   427 	ar1 = 0x01
                           000000   428 	ar0 = 0x00
      00007A C0 21            [24]  429 	push	bits
      00007C C0 E0            [24]  430 	push	acc
      00007E C0 F0            [24]  431 	push	b
      000080 C0 82            [24]  432 	push	dpl
      000082 C0 83            [24]  433 	push	dph
      000084 C0 07            [24]  434 	push	(0+7)
      000086 C0 06            [24]  435 	push	(0+6)
      000088 C0 05            [24]  436 	push	(0+5)
      00008A C0 04            [24]  437 	push	(0+4)
      00008C C0 03            [24]  438 	push	(0+3)
      00008E C0 02            [24]  439 	push	(0+2)
      000090 C0 01            [24]  440 	push	(0+1)
      000092 C0 00            [24]  441 	push	(0+0)
      000094 C0 D0            [24]  442 	push	psw
      000096 75 D0 00         [24]  443 	mov	psw,#0x00
                                    444 ;	Receiver.c:42: TH0  = 0Xee;         // ReLoad the timer value for 5ms
      000099 75 8C EE         [24]  445 	mov	_TH0,#0xee
                                    446 ;	Receiver.c:43: TL0  = 0X00;
      00009C 75 8A 00         [24]  447 	mov	_TL0,#0x00
                                    448 ;	Receiver.c:44: timerCount++;
      00009F AE 0A            [24]  449 	mov	r6,_timerCount
      0000A1 AF 0B            [24]  450 	mov	r7,(_timerCount + 1)
      0000A3 74 01            [12]  451 	mov	a,#0x01
      0000A5 2E               [12]  452 	add	a,r6
      0000A6 F5 0A            [12]  453 	mov	_timerCount,a
      0000A8 E4               [12]  454 	clr	a
      0000A9 3F               [12]  455 	addc	a,r7
      0000AA F5 0B            [12]  456 	mov	(_timerCount + 1),a
                                    457 ;	Receiver.c:45: rst_out=!rst_out;
      0000AC B2 96            [12]  458 	cpl	_P1_6
                                    459 ;	Receiver.c:47: if(state!=20)
      0000AE 74 14            [12]  460 	mov	a,#0x14
      0000B0 B5 0E 07         [24]  461 	cjne	a,_state,00257$
      0000B3 E4               [12]  462 	clr	a
      0000B4 B5 0F 03         [24]  463 	cjne	a,(_state + 1),00257$
      0000B7 02 02 69         [24]  464 	ljmp	00153$
      0000BA                        465 00257$:
                                    466 ;	Receiver.c:49: if(timerCount < (time_delay*30)) // count for LED-ON delay
      0000BA 85 0C 13         [24]  467 	mov	__mulint_PARM_2,_time_delay
      0000BD 85 0D 14         [24]  468 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      0000C0 90 00 1E         [24]  469 	mov	dptr,#0x001e
      0000C3 12 05 28         [24]  470 	lcall	__mulint
      0000C6 AE 82            [24]  471 	mov	r6,dpl
      0000C8 AF 83            [24]  472 	mov	r7,dph
      0000CA C3               [12]  473 	clr	c
      0000CB E5 0A            [12]  474 	mov	a,_timerCount
      0000CD 9E               [12]  475 	subb	a,r6
      0000CE E5 0B            [12]  476 	mov	a,(_timerCount + 1)
      0000D0 64 80            [12]  477 	xrl	a,#0x80
      0000D2 8F F0            [24]  478 	mov	b,r7
      0000D4 63 F0 80         [24]  479 	xrl	b,#0x80
      0000D7 95 F0            [12]  480 	subb	a,b
      0000D9 40 03            [24]  481 	jc	00258$
      0000DB 02 01 C1         [24]  482 	ljmp	00150$
      0000DE                        483 00258$:
                                    484 ;	Receiver.c:51: switch(state)
      0000DE E5 0F            [12]  485 	mov	a,(_state + 1)
      0000E0 30 E7 03         [24]  486 	jnb	acc.7,00259$
      0000E3 02 02 69         [24]  487 	ljmp	00153$
      0000E6                        488 00259$:
      0000E6 C3               [12]  489 	clr	c
      0000E7 74 09            [12]  490 	mov	a,#0x09
      0000E9 95 0E            [12]  491 	subb	a,_state
      0000EB 74 80            [12]  492 	mov	a,#(0x00 ^ 0x80)
      0000ED 85 0F F0         [24]  493 	mov	b,(_state + 1)
      0000F0 63 F0 80         [24]  494 	xrl	b,#0x80
      0000F3 95 F0            [12]  495 	subb	a,b
      0000F5 50 03            [24]  496 	jnc	00260$
      0000F7 02 02 69         [24]  497 	ljmp	00153$
      0000FA                        498 00260$:
      0000FA E5 0E            [12]  499 	mov	a,_state
      0000FC 24 0B            [12]  500 	add	a,#(00261$-3-.)
      0000FE 83               [24]  501 	movc	a,@a+pc
      0000FF F5 82            [12]  502 	mov	dpl,a
      000101 E5 0E            [12]  503 	mov	a,_state
      000103 24 0E            [12]  504 	add	a,#(00262$-3-.)
      000105 83               [24]  505 	movc	a,@a+pc
      000106 F5 83            [12]  506 	mov	dph,a
      000108 E4               [12]  507 	clr	a
      000109 73               [24]  508 	jmp	@a+dptr
      00010A                        509 00261$:
      00010A 1E                     510 	.db	00101$
      00010B 30                     511 	.db	00104$
      00010C 41                     512 	.db	00107$
      00010D 52                     513 	.db	00110$
      00010E 63                     514 	.db	00113$
      00010F 74                     515 	.db	00116$
      000110 85                     516 	.db	00119$
      000111 96                     517 	.db	00122$
      000112 9F                     518 	.db	00123$
      000113 B0                     519 	.db	00126$
      000114                        520 00262$:
      000114 01                     521 	.db	00101$>>8
      000115 01                     522 	.db	00104$>>8
      000116 01                     523 	.db	00107$>>8
      000117 01                     524 	.db	00110$>>8
      000118 01                     525 	.db	00113$>>8
      000119 01                     526 	.db	00116$>>8
      00011A 01                     527 	.db	00119$>>8
      00011B 01                     528 	.db	00122$>>8
      00011C 01                     529 	.db	00123$>>8
      00011D 01                     530 	.db	00126$>>8
                                    531 ;	Receiver.c:53: case 0:	P0_1 =!P0_1;P0_0 =0;P2_6=!P2_6;
      00011E                        532 00101$:
      00011E B2 81            [12]  533 	cpl	_P0_1
                                    534 ;	assignBit
      000120 C2 80            [12]  535 	clr	_P0_0
      000122 B2 A6            [12]  536 	cpl	_P2_6
                                    537 ;	Receiver.c:54: if(auto_flag)	auto_led=1;
      000124 30 00 02         [24]  538 	jnb	_auto_flag,00103$
                                    539 ;	assignBit
      000127 D2 A1            [12]  540 	setb	_P2_1
      000129                        541 00103$:
                                    542 ;	Receiver.c:55: up_led=0;	down_led=0;
                                    543 ;	assignBit
      000129 C2 A7            [12]  544 	clr	_P2_7
                                    545 ;	assignBit
      00012B C2 A4            [12]  546 	clr	_P2_4
                                    547 ;	Receiver.c:56: break;	
      00012D 02 02 69         [24]  548 	ljmp	00153$
                                    549 ;	Receiver.c:57: case 1:	P0_1 =!P0_1;P0_0 =0;P2_6=0;
      000130                        550 00104$:
      000130 B2 81            [12]  551 	cpl	_P0_1
                                    552 ;	assignBit
      000132 C2 80            [12]  553 	clr	_P0_0
                                    554 ;	assignBit
      000134 C2 A6            [12]  555 	clr	_P2_6
                                    556 ;	Receiver.c:58: if(auto_flag)
      000136 20 00 03         [24]  557 	jb	_auto_flag,00264$
      000139 02 02 69         [24]  558 	ljmp	00153$
      00013C                        559 00264$:
                                    560 ;	Receiver.c:59: up_led=1;
                                    561 ;	assignBit
      00013C D2 A7            [12]  562 	setb	_P2_7
                                    563 ;	Receiver.c:60: break;
      00013E 02 02 69         [24]  564 	ljmp	00153$
                                    565 ;	Receiver.c:61: case 2:	P0_1 =!P0_1;P0_0 =0;P2_6=0;
      000141                        566 00107$:
      000141 B2 81            [12]  567 	cpl	_P0_1
                                    568 ;	assignBit
      000143 C2 80            [12]  569 	clr	_P0_0
                                    570 ;	assignBit
      000145 C2 A6            [12]  571 	clr	_P2_6
                                    572 ;	Receiver.c:62: if(auto_flag)
      000147 20 00 03         [24]  573 	jb	_auto_flag,00265$
      00014A 02 02 69         [24]  574 	ljmp	00153$
      00014D                        575 00265$:
                                    576 ;	Receiver.c:63: up_led=1;
                                    577 ;	assignBit
      00014D D2 A7            [12]  578 	setb	_P2_7
                                    579 ;	Receiver.c:64: break;
      00014F 02 02 69         [24]  580 	ljmp	00153$
                                    581 ;	Receiver.c:65: case 3:	P0_1 =!P0_1;P0_0 =!P0_0;P2_6=0;
      000152                        582 00110$:
      000152 B2 81            [12]  583 	cpl	_P0_1
      000154 B2 80            [12]  584 	cpl	_P0_0
                                    585 ;	assignBit
      000156 C2 A6            [12]  586 	clr	_P2_6
                                    587 ;	Receiver.c:66: if(auto_flag)
      000158 20 00 03         [24]  588 	jb	_auto_flag,00266$
      00015B 02 02 69         [24]  589 	ljmp	00153$
      00015E                        590 00266$:
                                    591 ;	Receiver.c:67: up_led=1;
                                    592 ;	assignBit
      00015E D2 A7            [12]  593 	setb	_P2_7
                                    594 ;	Receiver.c:68: break;
      000160 02 02 69         [24]  595 	ljmp	00153$
                                    596 ;	Receiver.c:69: case 4:	P0_1 =0;P0_0 =!P0_0;P2_6=!P2_6;
      000163                        597 00113$:
                                    598 ;	assignBit
      000163 C2 81            [12]  599 	clr	_P0_1
      000165 B2 80            [12]  600 	cpl	_P0_0
      000167 B2 A6            [12]  601 	cpl	_P2_6
                                    602 ;	Receiver.c:70: if(auto_flag)
      000169 20 00 03         [24]  603 	jb	_auto_flag,00267$
      00016C 02 02 69         [24]  604 	ljmp	00153$
      00016F                        605 00267$:
                                    606 ;	Receiver.c:71: down_led=1;
                                    607 ;	assignBit
      00016F D2 A4            [12]  608 	setb	_P2_4
                                    609 ;	Receiver.c:72: break;
      000171 02 02 69         [24]  610 	ljmp	00153$
                                    611 ;	Receiver.c:73: case 5:	P0_1 =0;P0_0 =0;P2_6=!P2_6;
      000174                        612 00116$:
                                    613 ;	assignBit
      000174 C2 81            [12]  614 	clr	_P0_1
                                    615 ;	assignBit
      000176 C2 80            [12]  616 	clr	_P0_0
      000178 B2 A6            [12]  617 	cpl	_P2_6
                                    618 ;	Receiver.c:74: if(auto_flag)
      00017A 20 00 03         [24]  619 	jb	_auto_flag,00268$
      00017D 02 02 69         [24]  620 	ljmp	00153$
      000180                        621 00268$:
                                    622 ;	Receiver.c:75: down_led=1;
                                    623 ;	assignBit
      000180 D2 A4            [12]  624 	setb	_P2_4
                                    625 ;	Receiver.c:76: break;
      000182 02 02 69         [24]  626 	ljmp	00153$
                                    627 ;	Receiver.c:77: case 6:	P0_1 =0;P0_0 =0;P2_6=!P2_6;
      000185                        628 00119$:
                                    629 ;	assignBit
      000185 C2 81            [12]  630 	clr	_P0_1
                                    631 ;	assignBit
      000187 C2 80            [12]  632 	clr	_P0_0
      000189 B2 A6            [12]  633 	cpl	_P2_6
                                    634 ;	Receiver.c:78: if(auto_flag)
      00018B 20 00 03         [24]  635 	jb	_auto_flag,00269$
      00018E 02 02 69         [24]  636 	ljmp	00153$
      000191                        637 00269$:
                                    638 ;	Receiver.c:79: down_led=1;
                                    639 ;	assignBit
      000191 D2 A4            [12]  640 	setb	_P2_4
                                    641 ;	Receiver.c:80: break;
      000193 02 02 69         [24]  642 	ljmp	00153$
                                    643 ;	Receiver.c:81: case 7:	P0_1 =0;P0_0 =!P0_0;P2_6=0;break;
      000196                        644 00122$:
                                    645 ;	assignBit
      000196 C2 81            [12]  646 	clr	_P0_1
      000198 B2 80            [12]  647 	cpl	_P0_0
                                    648 ;	assignBit
      00019A C2 A6            [12]  649 	clr	_P2_6
      00019C 02 02 69         [24]  650 	ljmp	00153$
                                    651 ;	Receiver.c:82: case 8:	P0_1 =!P0_1;P0_0 =0;P2_6=0;
      00019F                        652 00123$:
      00019F B2 81            [12]  653 	cpl	_P0_1
                                    654 ;	assignBit
      0001A1 C2 80            [12]  655 	clr	_P0_0
                                    656 ;	assignBit
      0001A3 C2 A6            [12]  657 	clr	_P2_6
                                    658 ;	Receiver.c:83: if(auto_flag)
      0001A5 20 00 03         [24]  659 	jb	_auto_flag,00270$
      0001A8 02 02 69         [24]  660 	ljmp	00153$
      0001AB                        661 00270$:
                                    662 ;	Receiver.c:84: up_led=1;
                                    663 ;	assignBit
      0001AB D2 A7            [12]  664 	setb	_P2_7
                                    665 ;	Receiver.c:85: break;
      0001AD 02 02 69         [24]  666 	ljmp	00153$
                                    667 ;	Receiver.c:86: case 9:	P0_1 =0;P0_0 =0;P2_6=!P2_6;
      0001B0                        668 00126$:
                                    669 ;	assignBit
      0001B0 C2 81            [12]  670 	clr	_P0_1
                                    671 ;	assignBit
      0001B2 C2 80            [12]  672 	clr	_P0_0
      0001B4 B2 A6            [12]  673 	cpl	_P2_6
                                    674 ;	Receiver.c:87: if(auto_flag)
      0001B6 20 00 03         [24]  675 	jb	_auto_flag,00271$
      0001B9 02 02 69         [24]  676 	ljmp	00153$
      0001BC                        677 00271$:
                                    678 ;	Receiver.c:88: down_led=1;
                                    679 ;	assignBit
      0001BC D2 A4            [12]  680 	setb	_P2_4
                                    681 ;	Receiver.c:89: break;
      0001BE 02 02 69         [24]  682 	ljmp	00153$
                                    683 ;	Receiver.c:91: }	
      0001C1                        684 00150$:
                                    685 ;	Receiver.c:95: else if((timerCount > time_delay) &&(timerCount<time_delay*60)) // count for LED-ON delay
      0001C1 C3               [12]  686 	clr	c
      0001C2 E5 0C            [12]  687 	mov	a,_time_delay
      0001C4 95 0A            [12]  688 	subb	a,_timerCount
      0001C6 E5 0D            [12]  689 	mov	a,(_time_delay + 1)
      0001C8 64 80            [12]  690 	xrl	a,#0x80
      0001CA 85 0B F0         [24]  691 	mov	b,(_timerCount + 1)
      0001CD 63 F0 80         [24]  692 	xrl	b,#0x80
      0001D0 95 F0            [12]  693 	subb	a,b
      0001D2 40 03            [24]  694 	jc	00272$
      0001D4 02 02 64         [24]  695 	ljmp	00146$
      0001D7                        696 00272$:
      0001D7 85 0C 13         [24]  697 	mov	__mulint_PARM_2,_time_delay
      0001DA 85 0D 14         [24]  698 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      0001DD 90 00 3C         [24]  699 	mov	dptr,#0x003c
      0001E0 12 05 28         [24]  700 	lcall	__mulint
      0001E3 AE 82            [24]  701 	mov	r6,dpl
      0001E5 AF 83            [24]  702 	mov	r7,dph
      0001E7 C3               [12]  703 	clr	c
      0001E8 E5 0A            [12]  704 	mov	a,_timerCount
      0001EA 9E               [12]  705 	subb	a,r6
      0001EB E5 0B            [12]  706 	mov	a,(_timerCount + 1)
      0001ED 64 80            [12]  707 	xrl	a,#0x80
      0001EF 8F F0            [24]  708 	mov	b,r7
      0001F1 63 F0 80         [24]  709 	xrl	b,#0x80
      0001F4 95 F0            [12]  710 	subb	a,b
      0001F6 40 03            [24]  711 	jc	00273$
      0001F8 02 02 64         [24]  712 	ljmp	00146$
      0001FB                        713 00273$:
                                    714 ;	Receiver.c:97: switch(state)
      0001FB E5 0F            [12]  715 	mov	a,(_state + 1)
      0001FD 30 E7 03         [24]  716 	jnb	acc.7,00274$
      000200 02 02 69         [24]  717 	ljmp	00153$
      000203                        718 00274$:
      000203 C3               [12]  719 	clr	c
      000204 74 09            [12]  720 	mov	a,#0x09
      000206 95 0E            [12]  721 	subb	a,_state
      000208 74 80            [12]  722 	mov	a,#(0x00 ^ 0x80)
      00020A 85 0F F0         [24]  723 	mov	b,(_state + 1)
      00020D 63 F0 80         [24]  724 	xrl	b,#0x80
      000210 95 F0            [12]  725 	subb	a,b
      000212 50 03            [24]  726 	jnc	00275$
      000214 02 02 69         [24]  727 	ljmp	00153$
      000217                        728 00275$:
      000217 E5 0E            [12]  729 	mov	a,_state
      000219 24 0B            [12]  730 	add	a,#(00276$-3-.)
      00021B 83               [24]  731 	movc	a,@a+pc
      00021C F5 82            [12]  732 	mov	dpl,a
      00021E E5 0E            [12]  733 	mov	a,_state
      000220 24 0E            [12]  734 	add	a,#(00277$-3-.)
      000222 83               [24]  735 	movc	a,@a+pc
      000223 F5 83            [12]  736 	mov	dph,a
      000225 E4               [12]  737 	clr	a
      000226 73               [24]  738 	jmp	@a+dptr
      000227                        739 00276$:
      000227 3B                     740 	.db	00131$
      000228 4C                     741 	.db	00141$
      000229 40                     742 	.db	00140$
      00022A 40                     743 	.db	00140$
      00022B 40                     744 	.db	00140$
      00022C 40                     745 	.db	00140$
      00022D 58                     746 	.db	00142$
      00022E 40                     747 	.db	00140$
      00022F 40                     748 	.db	00140$
      000230 40                     749 	.db	00140$
      000231                        750 00277$:
      000231 02                     751 	.db	00131$>>8
      000232 02                     752 	.db	00141$>>8
      000233 02                     753 	.db	00140$>>8
      000234 02                     754 	.db	00140$>>8
      000235 02                     755 	.db	00140$>>8
      000236 02                     756 	.db	00140$>>8
      000237 02                     757 	.db	00142$>>8
      000238 02                     758 	.db	00140$>>8
      000239 02                     759 	.db	00140$>>8
      00023A 02                     760 	.db	00140$>>8
                                    761 ;	Receiver.c:99: case 0:	if(auto_flag)	auto_led=0;
      00023B                        762 00131$:
      00023B 30 00 02         [24]  763 	jnb	_auto_flag,00140$
                                    764 ;	assignBit
      00023E C2 A1            [12]  765 	clr	_P2_1
                                    766 ;	Receiver.c:106: case 9:P0_1 =0;P0_0 =0;P2_6=0;up_led=0;down_led=0;break;
      000240                        767 00140$:
                                    768 ;	assignBit
      000240 C2 81            [12]  769 	clr	_P0_1
                                    770 ;	assignBit
      000242 C2 80            [12]  771 	clr	_P0_0
                                    772 ;	assignBit
      000244 C2 A6            [12]  773 	clr	_P2_6
                                    774 ;	assignBit
      000246 C2 A7            [12]  775 	clr	_P2_7
                                    776 ;	assignBit
      000248 C2 A4            [12]  777 	clr	_P2_4
                                    778 ;	Receiver.c:107: case 1:P0_1 =!P0_1;P0_0 =0;P2_6=0;up_led=1;down_led=0;break;
      00024A 80 1D            [24]  779 	sjmp	00153$
      00024C                        780 00141$:
      00024C B2 81            [12]  781 	cpl	_P0_1
                                    782 ;	assignBit
      00024E C2 80            [12]  783 	clr	_P0_0
                                    784 ;	assignBit
      000250 C2 A6            [12]  785 	clr	_P2_6
                                    786 ;	assignBit
      000252 D2 A7            [12]  787 	setb	_P2_7
                                    788 ;	assignBit
      000254 C2 A4            [12]  789 	clr	_P2_4
                                    790 ;	Receiver.c:108: case 6:P0_1 =0;P0_0 =0;P2_6=!P2_6;up_led=0;down_led=1;break;
      000256 80 11            [24]  791 	sjmp	00153$
      000258                        792 00142$:
                                    793 ;	assignBit
      000258 C2 81            [12]  794 	clr	_P0_1
                                    795 ;	assignBit
      00025A C2 80            [12]  796 	clr	_P0_0
      00025C B2 A6            [12]  797 	cpl	_P2_6
                                    798 ;	assignBit
      00025E C2 A7            [12]  799 	clr	_P2_7
                                    800 ;	assignBit
      000260 D2 A4            [12]  801 	setb	_P2_4
                                    802 ;	Receiver.c:110: }
      000262 80 05            [24]  803 	sjmp	00153$
      000264                        804 00146$:
                                    805 ;	Receiver.c:114: timerCount = 0;
      000264 E4               [12]  806 	clr	a
      000265 F5 0A            [12]  807 	mov	_timerCount,a
      000267 F5 0B            [12]  808 	mov	(_timerCount + 1),a
      000269                        809 00153$:
                                    810 ;	Receiver.c:117: if((!pwr_key)&&(start))
      000269 20 97 34         [24]  811 	jb	_P1_7,00160$
      00026C E5 08            [12]  812 	mov	a,_start
      00026E 60 30            [24]  813 	jz	00160$
                                    814 ;	Receiver.c:119: off++;
      000270 05 10            [12]  815 	inc	_off
      000272 E4               [12]  816 	clr	a
      000273 B5 10 02         [24]  817 	cjne	a,_off,00281$
      000276 05 11            [12]  818 	inc	(_off + 1)
      000278                        819 00281$:
                                    820 ;	Receiver.c:120: if(off>50)
      000278 C3               [12]  821 	clr	c
      000279 74 32            [12]  822 	mov	a,#0x32
      00027B 95 10            [12]  823 	subb	a,_off
      00027D 74 80            [12]  824 	mov	a,#(0x00 ^ 0x80)
      00027F 85 11 F0         [24]  825 	mov	b,(_off + 1)
      000282 63 F0 80         [24]  826 	xrl	b,#0x80
      000285 95 F0            [12]  827 	subb	a,b
      000287 50 1C            [24]  828 	jnc	00163$
                                    829 ;	Receiver.c:121: {pwr_out=1;
                                    830 ;	assignBit
      000289 D2 87            [12]  831 	setb	_P0_7
                                    832 ;	Receiver.c:122: pwr_led=0;P0_1 =0;P0_0 =0;P2_6=0;ac_led_up=0;ac_led_down=0;auto_led=0;
                                    833 ;	assignBit
      00028B C2 A0            [12]  834 	clr	_P2_0
                                    835 ;	assignBit
      00028D C2 81            [12]  836 	clr	_P0_1
                                    837 ;	assignBit
      00028F C2 80            [12]  838 	clr	_P0_0
                                    839 ;	assignBit
      000291 C2 A6            [12]  840 	clr	_P2_6
                                    841 ;	assignBit
      000293 C2 A2            [12]  842 	clr	_P2_2
                                    843 ;	assignBit
      000295 C2 A3            [12]  844 	clr	_P2_3
                                    845 ;	assignBit
      000297 C2 A1            [12]  846 	clr	_P2_1
                                    847 ;	Receiver.c:123: TR0 = 0;         // Start Timer 1
                                    848 ;	assignBit
      000299 C2 8C            [12]  849 	clr	_TR0
                                    850 ;	Receiver.c:124: while(!pwr_key);}
      00029B                        851 00154$:
      00029B 30 97 FD         [24]  852 	jnb	_P1_7,00154$
      00029E 80 05            [24]  853 	sjmp	00163$
      0002A0                        854 00160$:
                                    855 ;	Receiver.c:127: else off=0;
      0002A0 E4               [12]  856 	clr	a
      0002A1 F5 10            [12]  857 	mov	_off,a
      0002A3 F5 11            [12]  858 	mov	(_off + 1),a
      0002A5                        859 00163$:
                                    860 ;	Receiver.c:128: }
      0002A5 D0 D0            [24]  861 	pop	psw
      0002A7 D0 00            [24]  862 	pop	(0+0)
      0002A9 D0 01            [24]  863 	pop	(0+1)
      0002AB D0 02            [24]  864 	pop	(0+2)
      0002AD D0 03            [24]  865 	pop	(0+3)
      0002AF D0 04            [24]  866 	pop	(0+4)
      0002B1 D0 05            [24]  867 	pop	(0+5)
      0002B3 D0 06            [24]  868 	pop	(0+6)
      0002B5 D0 07            [24]  869 	pop	(0+7)
      0002B7 D0 83            [24]  870 	pop	dph
      0002B9 D0 82            [24]  871 	pop	dpl
      0002BB D0 F0            [24]  872 	pop	b
      0002BD D0 E0            [24]  873 	pop	acc
      0002BF D0 21            [24]  874 	pop	bits
      0002C1 32               [24]  875 	reti
                                    876 ;------------------------------------------------------------
                                    877 ;Allocation info for local variables in function 'main'
                                    878 ;------------------------------------------------------------
                                    879 ;	Receiver.c:131: void main()
                                    880 ;	-----------------------------------------
                                    881 ;	 function main
                                    882 ;	-----------------------------------------
      0002C2                        883 _main:
                                    884 ;	Receiver.c:133: state=20;
      0002C2 75 0E 14         [24]  885 	mov	_state,#0x14
      0002C5 75 0F 00         [24]  886 	mov	(_state + 1),#0x00
                                    887 ;	Receiver.c:134: pwr_out=0;
                                    888 ;	assignBit
      0002C8 C2 87            [12]  889 	clr	_P0_7
                                    890 ;	Receiver.c:135: InitTimer0();
      0002CA 12 04 C3         [24]  891 	lcall	_InitTimer0
                                    892 ;	Receiver.c:136: EA=1;
                                    893 ;	assignBit
      0002CD D2 AF            [12]  894 	setb	_EA
                                    895 ;	Receiver.c:137: startup();
      0002CF 12 02 E3         [24]  896 	lcall	_startup
                                    897 ;	Receiver.c:138: start=1;
      0002D2 75 08 01         [24]  898 	mov	_start,#0x01
                                    899 ;	Receiver.c:139: UART_Init();
      0002D5 12 03 6B         [24]  900 	lcall	_UART_Init
                                    901 ;	Receiver.c:140: handshake();
      0002D8 12 03 80         [24]  902 	lcall	_handshake
                                    903 ;	Receiver.c:141: while(1)
      0002DB                        904 00102$:
                                    905 ;	Receiver.c:143: check_ac();
      0002DB 12 04 D1         [24]  906 	lcall	_check_ac
                                    907 ;	Receiver.c:144: check_data();
      0002DE 12 03 C3         [24]  908 	lcall	_check_data
                                    909 ;	Receiver.c:146: } //main
      0002E1 80 F8            [24]  910 	sjmp	00102$
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'startup'
                                    913 ;------------------------------------------------------------
                                    914 ;	Receiver.c:149: void startup()
                                    915 ;	-----------------------------------------
                                    916 ;	 function startup
                                    917 ;	-----------------------------------------
      0002E3                        918 _startup:
                                    919 ;	Receiver.c:151: P0=0x00;
      0002E3 75 80 00         [24]  920 	mov	_P0,#0x00
                                    921 ;	Receiver.c:152: P2=0x00;
      0002E6 75 A0 00         [24]  922 	mov	_P2,#0x00
                                    923 ;	Receiver.c:154: pwr_key=1;
                                    924 ;	assignBit
      0002E9 D2 97            [12]  925 	setb	_P1_7
                                    926 ;	Receiver.c:155: dim_key=1;
                                    927 ;	assignBit
      0002EB D2 94            [12]  928 	setb	_P1_4
                                    929 ;	Receiver.c:156: ac_key=1;
                                    930 ;	assignBit
      0002ED D2 93            [12]  931 	setb	_P1_3
                                    932 ;	Receiver.c:157: auto_key=1;
                                    933 ;	assignBit
      0002EF D2 92            [12]  934 	setb	_P1_2
                                    935 ;	Receiver.c:159: pwr_out=0;
                                    936 ;	assignBit
      0002F1 C2 87            [12]  937 	clr	_P0_7
                                    938 ;	Receiver.c:160: rst_out=0;
                                    939 ;	assignBit
      0002F3 C2 96            [12]  940 	clr	_P1_6
                                    941 ;	Receiver.c:162: pwr_led=0;
                                    942 ;	assignBit
      0002F5 C2 A0            [12]  943 	clr	_P2_0
                                    944 ;	Receiver.c:163: auto_led=0;
                                    945 ;	assignBit
      0002F7 C2 A1            [12]  946 	clr	_P2_1
                                    947 ;	Receiver.c:164: ac_led_up=0;
                                    948 ;	assignBit
      0002F9 C2 A2            [12]  949 	clr	_P2_2
                                    950 ;	Receiver.c:165: ac_led_down=0;
                                    951 ;	assignBit
      0002FB C2 A3            [12]  952 	clr	_P2_3
                                    953 ;	Receiver.c:166: up_led=0;
                                    954 ;	assignBit
      0002FD C2 A7            [12]  955 	clr	_P2_7
                                    956 ;	Receiver.c:167: down_led=0;
                                    957 ;	assignBit
      0002FF C2 A4            [12]  958 	clr	_P2_4
                                    959 ;	Receiver.c:169: pwr_led=1;
                                    960 ;	assignBit
      000301 D2 A0            [12]  961 	setb	_P2_0
                                    962 ;	Receiver.c:170: auto_led=0;
                                    963 ;	assignBit
      000303 C2 A1            [12]  964 	clr	_P2_1
                                    965 ;	Receiver.c:171: ac_led_up=1;ac_led_down=0;
                                    966 ;	assignBit
      000305 D2 A2            [12]  967 	setb	_P2_2
                                    968 ;	assignBit
      000307 C2 A3            [12]  969 	clr	_P2_3
                                    970 ;	Receiver.c:172: auto_flag = 0;
                                    971 ;	assignBit
      000309 C2 00            [12]  972 	clr	_auto_flag
                                    973 ;	Receiver.c:174: P0_1 =1;P0_0 =1;P2_6=1;
                                    974 ;	assignBit
      00030B D2 81            [12]  975 	setb	_P0_1
                                    976 ;	assignBit
      00030D D2 80            [12]  977 	setb	_P0_0
                                    978 ;	assignBit
      00030F D2 A6            [12]  979 	setb	_P2_6
                                    980 ;	Receiver.c:175: delay();delay();
      000311 12 03 42         [24]  981 	lcall	_delay
      000314 12 03 42         [24]  982 	lcall	_delay
                                    983 ;	Receiver.c:176: P0_1 =0;P0_0 =0;P2_6=1;
                                    984 ;	assignBit
      000317 C2 81            [12]  985 	clr	_P0_1
                                    986 ;	assignBit
      000319 C2 80            [12]  987 	clr	_P0_0
                                    988 ;	assignBit
      00031B D2 A6            [12]  989 	setb	_P2_6
                                    990 ;	Receiver.c:177: delay();delay();
      00031D 12 03 42         [24]  991 	lcall	_delay
      000320 12 03 42         [24]  992 	lcall	_delay
                                    993 ;	Receiver.c:178: P0_1 =0;P0_0 =1;P2_6=0;
                                    994 ;	assignBit
      000323 C2 81            [12]  995 	clr	_P0_1
                                    996 ;	assignBit
      000325 D2 80            [12]  997 	setb	_P0_0
                                    998 ;	assignBit
      000327 C2 A6            [12]  999 	clr	_P2_6
                                   1000 ;	Receiver.c:179: delay();delay();
      000329 12 03 42         [24] 1001 	lcall	_delay
      00032C 12 03 42         [24] 1002 	lcall	_delay
                                   1003 ;	Receiver.c:180: P0_1 =1;P0_0 =0;P2_6=0;
                                   1004 ;	assignBit
      00032F D2 81            [12] 1005 	setb	_P0_1
                                   1006 ;	assignBit
      000331 C2 80            [12] 1007 	clr	_P0_0
                                   1008 ;	assignBit
      000333 C2 A6            [12] 1009 	clr	_P2_6
                                   1010 ;	Receiver.c:181: delay();delay();
      000335 12 03 42         [24] 1011 	lcall	_delay
      000338 12 03 42         [24] 1012 	lcall	_delay
                                   1013 ;	Receiver.c:182: P0_1 =0;P0_0 =0;P2_6=0;
                                   1014 ;	assignBit
      00033B C2 81            [12] 1015 	clr	_P0_1
                                   1016 ;	assignBit
      00033D C2 80            [12] 1017 	clr	_P0_0
                                   1018 ;	assignBit
      00033F C2 A6            [12] 1019 	clr	_P2_6
                                   1020 ;	Receiver.c:183: }
      000341 22               [24] 1021 	ret
                                   1022 ;------------------------------------------------------------
                                   1023 ;Allocation info for local variables in function 'delay'
                                   1024 ;------------------------------------------------------------
                                   1025 ;i                         Allocated to registers r6 r7 
                                   1026 ;j                         Allocated to registers r4 r5 
                                   1027 ;------------------------------------------------------------
                                   1028 ;	Receiver.c:185: void delay()
                                   1029 ;	-----------------------------------------
                                   1030 ;	 function delay
                                   1031 ;	-----------------------------------------
      000342                       1032 _delay:
                                   1033 ;	Receiver.c:188: for(i=0;i<0x33;i++)
      000342 7E 00            [12] 1034 	mov	r6,#0x00
      000344 7F 00            [12] 1035 	mov	r7,#0x00
      000346                       1036 00106$:
                                   1037 ;	Receiver.c:189: for(j=0;j<0xff;j++);
      000346 7C FF            [12] 1038 	mov	r4,#0xff
      000348 7D 00            [12] 1039 	mov	r5,#0x00
      00034A                       1040 00105$:
      00034A EC               [12] 1041 	mov	a,r4
      00034B 24 FF            [12] 1042 	add	a,#0xff
      00034D FA               [12] 1043 	mov	r2,a
      00034E ED               [12] 1044 	mov	a,r5
      00034F 34 FF            [12] 1045 	addc	a,#0xff
      000351 FB               [12] 1046 	mov	r3,a
      000352 8A 04            [24] 1047 	mov	ar4,r2
      000354 8B 05            [24] 1048 	mov	ar5,r3
      000356 EA               [12] 1049 	mov	a,r2
      000357 4B               [12] 1050 	orl	a,r3
      000358 70 F0            [24] 1051 	jnz	00105$
                                   1052 ;	Receiver.c:188: for(i=0;i<0x33;i++)
      00035A 0E               [12] 1053 	inc	r6
      00035B BE 00 01         [24] 1054 	cjne	r6,#0x00,00124$
      00035E 0F               [12] 1055 	inc	r7
      00035F                       1056 00124$:
      00035F C3               [12] 1057 	clr	c
      000360 EE               [12] 1058 	mov	a,r6
      000361 94 33            [12] 1059 	subb	a,#0x33
      000363 EF               [12] 1060 	mov	a,r7
      000364 64 80            [12] 1061 	xrl	a,#0x80
      000366 94 80            [12] 1062 	subb	a,#0x80
      000368 40 DC            [24] 1063 	jc	00106$
                                   1064 ;	Receiver.c:190: }
      00036A 22               [24] 1065 	ret
                                   1066 ;------------------------------------------------------------
                                   1067 ;Allocation info for local variables in function 'UART_Init'
                                   1068 ;------------------------------------------------------------
                                   1069 ;	Receiver.c:193: void UART_Init()
                                   1070 ;	-----------------------------------------
                                   1071 ;	 function UART_Init
                                   1072 ;	-----------------------------------------
      00036B                       1073 _UART_Init:
                                   1074 ;	Receiver.c:195: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      00036B 75 89 20         [24] 1075 	mov	_TMOD,#0x20
                                   1076 ;	Receiver.c:196: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      00036E 75 8D FD         [24] 1077 	mov	_TH1,#0xfd
                                   1078 ;	Receiver.c:197: SCON = 0x50;		/* Mode 1, reception enable */
      000371 75 98 50         [24] 1079 	mov	_SCON,#0x50
                                   1080 ;	Receiver.c:198: TR1 = 1;		/* Start timer 1 */
                                   1081 ;	assignBit
      000374 D2 8E            [12] 1082 	setb	_TR1
                                   1083 ;	Receiver.c:199: }
      000376 22               [24] 1084 	ret
                                   1085 ;------------------------------------------------------------
                                   1086 ;Allocation info for local variables in function 'Transmit_data'
                                   1087 ;------------------------------------------------------------
                                   1088 ;tx_data                   Allocated to registers 
                                   1089 ;------------------------------------------------------------
                                   1090 ;	Receiver.c:202: void Transmit_data(char tx_data)
                                   1091 ;	-----------------------------------------
                                   1092 ;	 function Transmit_data
                                   1093 ;	-----------------------------------------
      000377                       1094 _Transmit_data:
      000377 85 82 99         [24] 1095 	mov	_SBUF,dpl
                                   1096 ;	Receiver.c:205: while (TI==0);		/* Wait until stop bit transmit */
      00037A                       1097 00101$:
                                   1098 ;	Receiver.c:206: TI = 0;			/* Clear TI flag */
                                   1099 ;	assignBit
      00037A 10 99 02         [24] 1100 	jbc	_TI,00114$
      00037D 80 FB            [24] 1101 	sjmp	00101$
      00037F                       1102 00114$:
                                   1103 ;	Receiver.c:207: }
      00037F 22               [24] 1104 	ret
                                   1105 ;------------------------------------------------------------
                                   1106 ;Allocation info for local variables in function 'handshake'
                                   1107 ;------------------------------------------------------------
                                   1108 ;	Receiver.c:210: void handshake()
                                   1109 ;	-----------------------------------------
                                   1110 ;	 function handshake
                                   1111 ;	-----------------------------------------
      000380                       1112 _handshake:
                                   1113 ;	Receiver.c:212: while(data_r!='y')
      000380                       1114 00103$:
      000380 74 79            [12] 1115 	mov	a,#0x79
      000382 B5 09 02         [24] 1116 	cjne	a,_data_r,00120$
      000385 80 33            [24] 1117 	sjmp	00105$
      000387                       1118 00120$:
                                   1119 ;	Receiver.c:214: Transmit_data('x');
      000387 75 82 78         [24] 1120 	mov	dpl,#0x78
      00038A 12 03 77         [24] 1121 	lcall	_Transmit_data
                                   1122 ;	Receiver.c:215: state=20;
      00038D 75 0E 14         [24] 1123 	mov	_state,#0x14
      000390 75 0F 00         [24] 1124 	mov	(_state + 1),#0x00
                                   1125 ;	Receiver.c:216: data_r=SBUF;
      000393 85 99 09         [24] 1126 	mov	_data_r,_SBUF
                                   1127 ;	Receiver.c:217: delay();
      000396 12 03 42         [24] 1128 	lcall	_delay
                                   1129 ;	Receiver.c:218: delay();
      000399 12 03 42         [24] 1130 	lcall	_delay
                                   1131 ;	Receiver.c:219: delay();
      00039C 12 03 42         [24] 1132 	lcall	_delay
                                   1133 ;	Receiver.c:220: delay();
      00039F 12 03 42         [24] 1134 	lcall	_delay
                                   1135 ;	Receiver.c:221: if(timerCount>10000)timerCount=0;
      0003A2 C3               [12] 1136 	clr	c
      0003A3 74 10            [12] 1137 	mov	a,#0x10
      0003A5 95 0A            [12] 1138 	subb	a,_timerCount
      0003A7 74 A7            [12] 1139 	mov	a,#(0x27 ^ 0x80)
      0003A9 85 0B F0         [24] 1140 	mov	b,(_timerCount + 1)
      0003AC 63 F0 80         [24] 1141 	xrl	b,#0x80
      0003AF 95 F0            [12] 1142 	subb	a,b
      0003B1 50 CD            [24] 1143 	jnc	00103$
      0003B3 E4               [12] 1144 	clr	a
      0003B4 F5 0A            [12] 1145 	mov	_timerCount,a
      0003B6 F5 0B            [12] 1146 	mov	(_timerCount + 1),a
      0003B8 80 C6            [24] 1147 	sjmp	00103$
      0003BA                       1148 00105$:
                                   1149 ;	Receiver.c:223: delay();
      0003BA 12 03 42         [24] 1150 	lcall	_delay
                                   1151 ;	Receiver.c:224: Transmit_data('m');
      0003BD 75 82 6D         [24] 1152 	mov	dpl,#0x6d
                                   1153 ;	Receiver.c:225: }
      0003C0 02 03 77         [24] 1154 	ljmp	_Transmit_data
                                   1155 ;------------------------------------------------------------
                                   1156 ;Allocation info for local variables in function 'check_data'
                                   1157 ;------------------------------------------------------------
                                   1158 ;	Receiver.c:227: void check_data()
                                   1159 ;	-----------------------------------------
                                   1160 ;	 function check_data
                                   1161 ;	-----------------------------------------
      0003C3                       1162 _check_data:
                                   1163 ;	Receiver.c:230: data_r = SBUF;		/* Load char in SBUF register */
      0003C3 85 99 09         [24] 1164 	mov	_data_r,_SBUF
                                   1165 ;	Receiver.c:231: RI = 0;			/* Clear TI flag */
                                   1166 ;	assignBit
      0003C6 C2 98            [12] 1167 	clr	_RI
                                   1168 ;	Receiver.c:232: if(data_r=='l')
      0003C8 74 6C            [12] 1169 	mov	a,#0x6c
      0003CA B5 09 0D         [24] 1170 	cjne	a,_data_r,00149$
                                   1171 ;	Receiver.c:234: time_delay=20;
      0003CD 75 0C 14         [24] 1172 	mov	_time_delay,#0x14
                                   1173 ;	Receiver.c:235: state = 0;
      0003D0 E4               [12] 1174 	clr	a
      0003D1 F5 0D            [12] 1175 	mov	(_time_delay + 1),a
      0003D3 F5 0E            [12] 1176 	mov	_state,a
      0003D5 F5 0F            [12] 1177 	mov	(_state + 1),a
                                   1178 ;	Receiver.c:236: auto_led=0;
                                   1179 ;	assignBit
      0003D7 C2 A1            [12] 1180 	clr	_P2_1
      0003D9 22               [24] 1181 	ret
      0003DA                       1182 00149$:
                                   1183 ;	Receiver.c:238: else if(data_r=='a')
      0003DA 74 61            [12] 1184 	mov	a,#0x61
      0003DC B5 09 13         [24] 1185 	cjne	a,_data_r,00146$
                                   1186 ;	Receiver.c:240: time_delay=20;
      0003DF 75 0C 14         [24] 1187 	mov	_time_delay,#0x14
      0003E2 75 0D 00         [24] 1188 	mov	(_time_delay + 1),#0x00
                                   1189 ;	Receiver.c:241: state = 1;
      0003E5 75 0E 01         [24] 1190 	mov	_state,#0x01
      0003E8 75 0F 00         [24] 1191 	mov	(_state + 1),#0x00
                                   1192 ;	Receiver.c:242: if(auto_flag)	auto_led=1;
      0003EB 20 00 01         [24] 1193 	jb	_auto_flag,00237$
      0003EE 22               [24] 1194 	ret
      0003EF                       1195 00237$:
                                   1196 ;	assignBit
      0003EF D2 A1            [12] 1197 	setb	_P2_1
      0003F1 22               [24] 1198 	ret
      0003F2                       1199 00146$:
                                   1200 ;	Receiver.c:244: else if(data_r=='b')
      0003F2 74 62            [12] 1201 	mov	a,#0x62
      0003F4 B5 09 13         [24] 1202 	cjne	a,_data_r,00143$
                                   1203 ;	Receiver.c:246: time_delay=10;
      0003F7 75 0C 0A         [24] 1204 	mov	_time_delay,#0x0a
      0003FA 75 0D 00         [24] 1205 	mov	(_time_delay + 1),#0x00
                                   1206 ;	Receiver.c:247: state = 2;
      0003FD 75 0E 02         [24] 1207 	mov	_state,#0x02
      000400 75 0F 00         [24] 1208 	mov	(_state + 1),#0x00
                                   1209 ;	Receiver.c:248: if(auto_flag)	auto_led=1;
      000403 20 00 01         [24] 1210 	jb	_auto_flag,00240$
      000406 22               [24] 1211 	ret
      000407                       1212 00240$:
                                   1213 ;	assignBit
      000407 D2 A1            [12] 1214 	setb	_P2_1
      000409 22               [24] 1215 	ret
      00040A                       1216 00143$:
                                   1217 ;	Receiver.c:250: else if(data_r=='c')
      00040A 74 63            [12] 1218 	mov	a,#0x63
      00040C B5 09 13         [24] 1219 	cjne	a,_data_r,00140$
                                   1220 ;	Receiver.c:252: time_delay=7;
      00040F 75 0C 07         [24] 1221 	mov	_time_delay,#0x07
      000412 75 0D 00         [24] 1222 	mov	(_time_delay + 1),#0x00
                                   1223 ;	Receiver.c:253: state = 3;
      000415 75 0E 03         [24] 1224 	mov	_state,#0x03
      000418 75 0F 00         [24] 1225 	mov	(_state + 1),#0x00
                                   1226 ;	Receiver.c:254: if(auto_flag)	auto_led=1;
      00041B 20 00 01         [24] 1227 	jb	_auto_flag,00243$
      00041E 22               [24] 1228 	ret
      00041F                       1229 00243$:
                                   1230 ;	assignBit
      00041F D2 A1            [12] 1231 	setb	_P2_1
      000421 22               [24] 1232 	ret
      000422                       1233 00140$:
                                   1234 ;	Receiver.c:256: else if(data_r=='d')
      000422 74 64            [12] 1235 	mov	a,#0x64
      000424 B5 09 13         [24] 1236 	cjne	a,_data_r,00137$
                                   1237 ;	Receiver.c:258: time_delay=7;
      000427 75 0C 07         [24] 1238 	mov	_time_delay,#0x07
      00042A 75 0D 00         [24] 1239 	mov	(_time_delay + 1),#0x00
                                   1240 ;	Receiver.c:259: state = 7;
      00042D 75 0E 07         [24] 1241 	mov	_state,#0x07
      000430 75 0F 00         [24] 1242 	mov	(_state + 1),#0x00
                                   1243 ;	Receiver.c:260: if(auto_flag)	auto_led=1;
      000433 20 00 01         [24] 1244 	jb	_auto_flag,00246$
      000436 22               [24] 1245 	ret
      000437                       1246 00246$:
                                   1247 ;	assignBit
      000437 D2 A1            [12] 1248 	setb	_P2_1
      000439 22               [24] 1249 	ret
      00043A                       1250 00137$:
                                   1251 ;	Receiver.c:262: else if(data_r=='e')
      00043A 74 65            [12] 1252 	mov	a,#0x65
      00043C B5 09 13         [24] 1253 	cjne	a,_data_r,00134$
                                   1254 ;	Receiver.c:264: time_delay=7;
      00043F 75 0C 07         [24] 1255 	mov	_time_delay,#0x07
      000442 75 0D 00         [24] 1256 	mov	(_time_delay + 1),#0x00
                                   1257 ;	Receiver.c:265: state = 4;
      000445 75 0E 04         [24] 1258 	mov	_state,#0x04
      000448 75 0F 00         [24] 1259 	mov	(_state + 1),#0x00
                                   1260 ;	Receiver.c:266: if(auto_flag)	auto_led=1;
      00044B 20 00 01         [24] 1261 	jb	_auto_flag,00249$
      00044E 22               [24] 1262 	ret
      00044F                       1263 00249$:
                                   1264 ;	assignBit
      00044F D2 A1            [12] 1265 	setb	_P2_1
      000451 22               [24] 1266 	ret
      000452                       1267 00134$:
                                   1268 ;	Receiver.c:268: else if(data_r=='f')
      000452 74 66            [12] 1269 	mov	a,#0x66
      000454 B5 09 12         [24] 1270 	cjne	a,_data_r,00131$
                                   1271 ;	Receiver.c:270: time_delay=10;
      000457 75 0C 0A         [24] 1272 	mov	_time_delay,#0x0a
      00045A 75 0D 00         [24] 1273 	mov	(_time_delay + 1),#0x00
                                   1274 ;	Receiver.c:271: state = 5;
      00045D 75 0E 05         [24] 1275 	mov	_state,#0x05
      000460 75 0F 00         [24] 1276 	mov	(_state + 1),#0x00
                                   1277 ;	Receiver.c:272: if(auto_flag)	auto_led=1;
      000463 30 00 5C         [24] 1278 	jnb	_auto_flag,00151$
                                   1279 ;	assignBit
      000466 D2 A1            [12] 1280 	setb	_P2_1
      000468 22               [24] 1281 	ret
      000469                       1282 00131$:
                                   1283 ;	Receiver.c:274: else if(data_r=='g')
      000469 74 67            [12] 1284 	mov	a,#0x67
      00046B B5 09 12         [24] 1285 	cjne	a,_data_r,00128$
                                   1286 ;	Receiver.c:276: time_delay=15;
      00046E 75 0C 0F         [24] 1287 	mov	_time_delay,#0x0f
      000471 75 0D 00         [24] 1288 	mov	(_time_delay + 1),#0x00
                                   1289 ;	Receiver.c:277: state = 6;
      000474 75 0E 06         [24] 1290 	mov	_state,#0x06
      000477 75 0F 00         [24] 1291 	mov	(_state + 1),#0x00
                                   1292 ;	Receiver.c:278: if(auto_flag)	auto_led=1;
      00047A 30 00 45         [24] 1293 	jnb	_auto_flag,00151$
                                   1294 ;	assignBit
      00047D D2 A1            [12] 1295 	setb	_P2_1
      00047F 22               [24] 1296 	ret
      000480                       1297 00128$:
                                   1298 ;	Receiver.c:280: else if(data_r=='u')
      000480 74 75            [12] 1299 	mov	a,#0x75
      000482 B5 09 12         [24] 1300 	cjne	a,_data_r,00125$
                                   1301 ;	Receiver.c:282: time_delay=8;
      000485 75 0C 08         [24] 1302 	mov	_time_delay,#0x08
      000488 75 0D 00         [24] 1303 	mov	(_time_delay + 1),#0x00
                                   1304 ;	Receiver.c:283: state = 9;
      00048B 75 0E 09         [24] 1305 	mov	_state,#0x09
      00048E 75 0F 00         [24] 1306 	mov	(_state + 1),#0x00
                                   1307 ;	Receiver.c:284: if(auto_flag)	auto_led=1;
      000491 30 00 2E         [24] 1308 	jnb	_auto_flag,00151$
                                   1309 ;	assignBit
      000494 D2 A1            [12] 1310 	setb	_P2_1
      000496 22               [24] 1311 	ret
      000497                       1312 00125$:
                                   1313 ;	Receiver.c:286: else if(data_r=='n')
      000497 74 6E            [12] 1314 	mov	a,#0x6e
      000499 B5 09 12         [24] 1315 	cjne	a,_data_r,00122$
                                   1316 ;	Receiver.c:288: time_delay=8;
      00049C 75 0C 08         [24] 1317 	mov	_time_delay,#0x08
      00049F 75 0D 00         [24] 1318 	mov	(_time_delay + 1),#0x00
                                   1319 ;	Receiver.c:289: state = 8;
      0004A2 75 0E 08         [24] 1320 	mov	_state,#0x08
      0004A5 75 0F 00         [24] 1321 	mov	(_state + 1),#0x00
                                   1322 ;	Receiver.c:290: if(auto_flag)	auto_led=1;
      0004A8 30 00 17         [24] 1323 	jnb	_auto_flag,00151$
                                   1324 ;	assignBit
      0004AB D2 A1            [12] 1325 	setb	_P2_1
      0004AD 22               [24] 1326 	ret
      0004AE                       1327 00122$:
                                   1328 ;	Receiver.c:293: if(timerCount>1200)handshake();}
      0004AE C3               [12] 1329 	clr	c
      0004AF 74 B0            [12] 1330 	mov	a,#0xb0
      0004B1 95 0A            [12] 1331 	subb	a,_timerCount
      0004B3 74 84            [12] 1332 	mov	a,#(0x04 ^ 0x80)
      0004B5 85 0B F0         [24] 1333 	mov	b,(_timerCount + 1)
      0004B8 63 F0 80         [24] 1334 	xrl	b,#0x80
      0004BB 95 F0            [12] 1335 	subb	a,b
      0004BD 50 03            [24] 1336 	jnc	00151$
                                   1337 ;	Receiver.c:294: }
      0004BF 02 03 80         [24] 1338 	ljmp	_handshake
      0004C2                       1339 00151$:
      0004C2 22               [24] 1340 	ret
                                   1341 ;------------------------------------------------------------
                                   1342 ;Allocation info for local variables in function 'InitTimer0'
                                   1343 ;------------------------------------------------------------
                                   1344 ;	Receiver.c:296: void InitTimer0(void)
                                   1345 ;	-----------------------------------------
                                   1346 ;	 function InitTimer0
                                   1347 ;	-----------------------------------------
      0004C3                       1348 _InitTimer0:
                                   1349 ;	Receiver.c:298: TMOD |= 0x01;    // Set timer0 in mode 1
      0004C3 43 89 01         [24] 1350 	orl	_TMOD,#0x01
                                   1351 ;	Receiver.c:299: TH0 = 0xee;      // 5 msec reloading time
      0004C6 75 8C EE         [24] 1352 	mov	_TH0,#0xee
                                   1353 ;	Receiver.c:300: TL0 = 0x00;      // First time value
      0004C9 75 8A 00         [24] 1354 	mov	_TL0,#0x00
                                   1355 ;	Receiver.c:301: TR0 = 1;         // Start Timer 1
                                   1356 ;	assignBit
      0004CC D2 8C            [12] 1357 	setb	_TR0
                                   1358 ;	Receiver.c:302: ET0 = 1;         // Enable Timer1 interrupts	
                                   1359 ;	assignBit
      0004CE D2 A9            [12] 1360 	setb	_ET0
                                   1361 ;	Receiver.c:303: }
      0004D0 22               [24] 1362 	ret
                                   1363 ;------------------------------------------------------------
                                   1364 ;Allocation info for local variables in function 'check_ac'
                                   1365 ;------------------------------------------------------------
                                   1366 ;	Receiver.c:305: void check_ac()
                                   1367 ;	-----------------------------------------
                                   1368 ;	 function check_ac
                                   1369 ;	-----------------------------------------
      0004D1                       1370 _check_ac:
                                   1371 ;	Receiver.c:307: if(!ac_key)
      0004D1 20 93 49         [24] 1372 	jb	_P1_3,00109$
                                   1373 ;	Receiver.c:309: ac_state++;		
      0004D4 05 12            [12] 1374 	inc	_ac_state
                                   1375 ;	Receiver.c:310: if(ac_state==3)
      0004D6 74 03            [12] 1376 	mov	a,#0x03
      0004D8 B5 12 03         [24] 1377 	cjne	a,_ac_state,00102$
                                   1378 ;	Receiver.c:311: ac_state=0;
      0004DB 75 12 00         [24] 1379 	mov	_ac_state,#0x00
      0004DE                       1380 00102$:
                                   1381 ;	Receiver.c:312: switch(ac_state)
      0004DE E4               [12] 1382 	clr	a
      0004DF B5 12 02         [24] 1383 	cjne	a,_ac_state,00141$
      0004E2 80 0E            [24] 1384 	sjmp	00103$
      0004E4                       1385 00141$:
      0004E4 74 01            [12] 1386 	mov	a,#0x01
      0004E6 B5 12 02         [24] 1387 	cjne	a,_ac_state,00142$
      0004E9 80 16            [24] 1388 	sjmp	00104$
      0004EB                       1389 00142$:
      0004EB 74 02            [12] 1390 	mov	a,#0x02
                                   1391 ;	Receiver.c:314: case 0:Transmit_data('l');ac_led_up=1;ac_led_down=1;delay();break;
      0004ED B5 12 2D         [24] 1392 	cjne	a,_ac_state,00109$
      0004F0 80 1E            [24] 1393 	sjmp	00105$
      0004F2                       1394 00103$:
      0004F2 75 82 6C         [24] 1395 	mov	dpl,#0x6c
      0004F5 12 03 77         [24] 1396 	lcall	_Transmit_data
                                   1397 ;	assignBit
      0004F8 D2 A2            [12] 1398 	setb	_P2_2
                                   1399 ;	assignBit
      0004FA D2 A3            [12] 1400 	setb	_P2_3
      0004FC 12 03 42         [24] 1401 	lcall	_delay
                                   1402 ;	Receiver.c:315: case 1:Transmit_data('m');ac_led_up=1;ac_led_down=0;delay();break;
      0004FF 80 1C            [24] 1403 	sjmp	00109$
      000501                       1404 00104$:
      000501 75 82 6D         [24] 1405 	mov	dpl,#0x6d
      000504 12 03 77         [24] 1406 	lcall	_Transmit_data
                                   1407 ;	assignBit
      000507 D2 A2            [12] 1408 	setb	_P2_2
                                   1409 ;	assignBit
      000509 C2 A3            [12] 1410 	clr	_P2_3
      00050B 12 03 42         [24] 1411 	lcall	_delay
                                   1412 ;	Receiver.c:316: case 2:Transmit_data('h');ac_led_up=0;ac_led_down=1;delay();break;
      00050E 80 0D            [24] 1413 	sjmp	00109$
      000510                       1414 00105$:
      000510 75 82 68         [24] 1415 	mov	dpl,#0x68
      000513 12 03 77         [24] 1416 	lcall	_Transmit_data
                                   1417 ;	assignBit
      000516 C2 A2            [12] 1418 	clr	_P2_2
                                   1419 ;	assignBit
      000518 D2 A3            [12] 1420 	setb	_P2_3
      00051A 12 03 42         [24] 1421 	lcall	_delay
                                   1422 ;	Receiver.c:318: }//switch end
      00051D                       1423 00109$:
                                   1424 ;	Receiver.c:321: if(!dim_key)
      00051D A2 94            [12] 1425 	mov	c,_P1_4
                                   1426 ;	Receiver.c:326: if(!auto_key)
      00051F 20 92 05         [24] 1427 	jb	_P1_2,00112$
                                   1428 ;	Receiver.c:328: delay();
      000522 12 03 42         [24] 1429 	lcall	_delay
                                   1430 ;	Receiver.c:329: auto_flag=!auto_flag;
      000525 B2 00            [12] 1431 	cpl	_auto_flag
      000527                       1432 00112$:
                                   1433 ;	Receiver.c:331: }
      000527 22               [24] 1434 	ret
                                   1435 	.area CSEG    (CODE)
                                   1436 	.area CONST   (CODE)
                                   1437 	.area XINIT   (CODE)
                                   1438 	.area CABS    (ABS,CODE)
