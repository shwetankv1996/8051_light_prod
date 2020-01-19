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
                                    132 	.globl _dim_flag
                                    133 	.globl _auto_flag
                                    134 	.globl _ac_state
                                    135 	.globl _off
                                    136 	.globl _state
                                    137 	.globl _dim1_val2
                                    138 	.globl _dim1_val
                                    139 	.globl _dim_val2
                                    140 	.globl _dim_val
                                    141 	.globl _time_delay
                                    142 	.globl _dimCount
                                    143 	.globl _timerCount
                                    144 	.globl _data_r
                                    145 	.globl _start
                                    146 	.globl _startup
                                    147 	.globl _delay
                                    148 	.globl _UART_Init
                                    149 	.globl _Transmit_data
                                    150 	.globl _handshake
                                    151 	.globl _check_data
                                    152 	.globl _InitTimer0
                                    153 	.globl _check_switches
                                    154 ;--------------------------------------------------------
                                    155 ; special function registers
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000080   159 _P0	=	0x0080
                           000081   160 _SP	=	0x0081
                           000082   161 _DPL	=	0x0082
                           000083   162 _DPH	=	0x0083
                           000087   163 _PCON	=	0x0087
                           000088   164 _TCON	=	0x0088
                           000089   165 _TMOD	=	0x0089
                           00008A   166 _TL0	=	0x008a
                           00008B   167 _TL1	=	0x008b
                           00008C   168 _TH0	=	0x008c
                           00008D   169 _TH1	=	0x008d
                           000090   170 _P1	=	0x0090
                           000098   171 _SCON	=	0x0098
                           000099   172 _SBUF	=	0x0099
                           0000A0   173 _P2	=	0x00a0
                           0000A8   174 _IE	=	0x00a8
                           0000B0   175 _P3	=	0x00b0
                           0000B8   176 _IP	=	0x00b8
                           0000D0   177 _PSW	=	0x00d0
                           0000E0   178 _ACC	=	0x00e0
                           0000F0   179 _B	=	0x00f0
                           0000C8   180 _T2CON	=	0x00c8
                           0000CA   181 _RCAP2L	=	0x00ca
                           0000CB   182 _RCAP2H	=	0x00cb
                           0000CC   183 _TL2	=	0x00cc
                           0000CD   184 _TH2	=	0x00cd
                                    185 ;--------------------------------------------------------
                                    186 ; special function bits
                                    187 ;--------------------------------------------------------
                                    188 	.area RSEG    (ABS,DATA)
      000000                        189 	.org 0x0000
                           000080   190 _P0_0	=	0x0080
                           000081   191 _P0_1	=	0x0081
                           000082   192 _P0_2	=	0x0082
                           000083   193 _P0_3	=	0x0083
                           000084   194 _P0_4	=	0x0084
                           000085   195 _P0_5	=	0x0085
                           000086   196 _P0_6	=	0x0086
                           000087   197 _P0_7	=	0x0087
                           000088   198 _IT0	=	0x0088
                           000089   199 _IE0	=	0x0089
                           00008A   200 _IT1	=	0x008a
                           00008B   201 _IE1	=	0x008b
                           00008C   202 _TR0	=	0x008c
                           00008D   203 _TF0	=	0x008d
                           00008E   204 _TR1	=	0x008e
                           00008F   205 _TF1	=	0x008f
                           000090   206 _P1_0	=	0x0090
                           000091   207 _P1_1	=	0x0091
                           000092   208 _P1_2	=	0x0092
                           000093   209 _P1_3	=	0x0093
                           000094   210 _P1_4	=	0x0094
                           000095   211 _P1_5	=	0x0095
                           000096   212 _P1_6	=	0x0096
                           000097   213 _P1_7	=	0x0097
                           000098   214 _RI	=	0x0098
                           000099   215 _TI	=	0x0099
                           00009A   216 _RB8	=	0x009a
                           00009B   217 _TB8	=	0x009b
                           00009C   218 _REN	=	0x009c
                           00009D   219 _SM2	=	0x009d
                           00009E   220 _SM1	=	0x009e
                           00009F   221 _SM0	=	0x009f
                           0000A0   222 _P2_0	=	0x00a0
                           0000A1   223 _P2_1	=	0x00a1
                           0000A2   224 _P2_2	=	0x00a2
                           0000A3   225 _P2_3	=	0x00a3
                           0000A4   226 _P2_4	=	0x00a4
                           0000A5   227 _P2_5	=	0x00a5
                           0000A6   228 _P2_6	=	0x00a6
                           0000A7   229 _P2_7	=	0x00a7
                           0000A8   230 _EX0	=	0x00a8
                           0000A9   231 _ET0	=	0x00a9
                           0000AA   232 _EX1	=	0x00aa
                           0000AB   233 _ET1	=	0x00ab
                           0000AC   234 _ES	=	0x00ac
                           0000AF   235 _EA	=	0x00af
                           0000B0   236 _P3_0	=	0x00b0
                           0000B1   237 _P3_1	=	0x00b1
                           0000B2   238 _P3_2	=	0x00b2
                           0000B3   239 _P3_3	=	0x00b3
                           0000B4   240 _P3_4	=	0x00b4
                           0000B5   241 _P3_5	=	0x00b5
                           0000B6   242 _P3_6	=	0x00b6
                           0000B7   243 _P3_7	=	0x00b7
                           0000B0   244 _RXD	=	0x00b0
                           0000B1   245 _TXD	=	0x00b1
                           0000B2   246 _INT0	=	0x00b2
                           0000B3   247 _INT1	=	0x00b3
                           0000B4   248 _T0	=	0x00b4
                           0000B5   249 _T1	=	0x00b5
                           0000B6   250 _WR	=	0x00b6
                           0000B7   251 _RD	=	0x00b7
                           0000B8   252 _PX0	=	0x00b8
                           0000B9   253 _PT0	=	0x00b9
                           0000BA   254 _PX1	=	0x00ba
                           0000BB   255 _PT1	=	0x00bb
                           0000BC   256 _PS	=	0x00bc
                           0000D0   257 _P	=	0x00d0
                           0000D1   258 _F1	=	0x00d1
                           0000D2   259 _OV	=	0x00d2
                           0000D3   260 _RS0	=	0x00d3
                           0000D4   261 _RS1	=	0x00d4
                           0000D5   262 _F0	=	0x00d5
                           0000D6   263 _AC	=	0x00d6
                           0000D7   264 _CY	=	0x00d7
                           0000AD   265 _ET2	=	0x00ad
                           0000BD   266 _PT2	=	0x00bd
                           0000C8   267 _T2CON_0	=	0x00c8
                           0000C9   268 _T2CON_1	=	0x00c9
                           0000CA   269 _T2CON_2	=	0x00ca
                           0000CB   270 _T2CON_3	=	0x00cb
                           0000CC   271 _T2CON_4	=	0x00cc
                           0000CD   272 _T2CON_5	=	0x00cd
                           0000CE   273 _T2CON_6	=	0x00ce
                           0000CF   274 _T2CON_7	=	0x00cf
                           0000C8   275 _CP_RL2	=	0x00c8
                           0000C9   276 _C_T2	=	0x00c9
                           0000CA   277 _TR2	=	0x00ca
                           0000CB   278 _EXEN2	=	0x00cb
                           0000CC   279 _TCLK	=	0x00cc
                           0000CD   280 _RCLK	=	0x00cd
                           0000CE   281 _EXF2	=	0x00ce
                           0000CF   282 _TF2	=	0x00cf
                                    283 ;--------------------------------------------------------
                                    284 ; overlayable register banks
                                    285 ;--------------------------------------------------------
                                    286 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        287 	.ds 8
                                    288 ;--------------------------------------------------------
                                    289 ; overlayable bit register bank
                                    290 ;--------------------------------------------------------
                                    291 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        292 bits:
      000021                        293 	.ds 1
                           008000   294 	b0 = bits[0]
                           008100   295 	b1 = bits[1]
                           008200   296 	b2 = bits[2]
                           008300   297 	b3 = bits[3]
                           008400   298 	b4 = bits[4]
                           008500   299 	b5 = bits[5]
                           008600   300 	b6 = bits[6]
                           008700   301 	b7 = bits[7]
                                    302 ;--------------------------------------------------------
                                    303 ; internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area DSEG    (DATA)
      000008                        306 _start::
      000008                        307 	.ds 1
      000009                        308 _data_r::
      000009                        309 	.ds 1
      00000A                        310 _timerCount::
      00000A                        311 	.ds 2
      00000C                        312 _dimCount::
      00000C                        313 	.ds 2
      00000E                        314 _time_delay::
      00000E                        315 	.ds 2
      000010                        316 _dim_val::
      000010                        317 	.ds 2
      000012                        318 _dim_val2::
      000012                        319 	.ds 2
      000014                        320 _dim1_val::
      000014                        321 	.ds 2
      000016                        322 _dim1_val2::
      000016                        323 	.ds 2
      000018                        324 _state::
      000018                        325 	.ds 2
      00001A                        326 _off::
      00001A                        327 	.ds 2
      00001C                        328 _ac_state::
      00001C                        329 	.ds 1
                                    330 ;--------------------------------------------------------
                                    331 ; overlayable items in internal ram 
                                    332 ;--------------------------------------------------------
                                    333 	.area	OSEG    (OVR,DATA)
                                    334 	.area	OSEG    (OVR,DATA)
                                    335 ;--------------------------------------------------------
                                    336 ; Stack segment in internal ram 
                                    337 ;--------------------------------------------------------
                                    338 	.area	SSEG
      000022                        339 __start__stack:
      000022                        340 	.ds	1
                                    341 
                                    342 ;--------------------------------------------------------
                                    343 ; indirectly addressable internal ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area ISEG    (DATA)
                                    346 ;--------------------------------------------------------
                                    347 ; absolute internal ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area IABS    (ABS,DATA)
                                    350 	.area IABS    (ABS,DATA)
                                    351 ;--------------------------------------------------------
                                    352 ; bit data
                                    353 ;--------------------------------------------------------
                                    354 	.area BSEG    (BIT)
      000000                        355 _auto_flag::
      000000                        356 	.ds 1
      000001                        357 _dim_flag::
      000001                        358 	.ds 1
                                    359 ;--------------------------------------------------------
                                    360 ; paged external ram data
                                    361 ;--------------------------------------------------------
                                    362 	.area PSEG    (PAG,XDATA)
                                    363 ;--------------------------------------------------------
                                    364 ; external ram data
                                    365 ;--------------------------------------------------------
                                    366 	.area XSEG    (XDATA)
                                    367 ;--------------------------------------------------------
                                    368 ; absolute external ram data
                                    369 ;--------------------------------------------------------
                                    370 	.area XABS    (ABS,XDATA)
                                    371 ;--------------------------------------------------------
                                    372 ; external initialized ram data
                                    373 ;--------------------------------------------------------
                                    374 	.area XISEG   (XDATA)
                                    375 	.area HOME    (CODE)
                                    376 	.area GSINIT0 (CODE)
                                    377 	.area GSINIT1 (CODE)
                                    378 	.area GSINIT2 (CODE)
                                    379 	.area GSINIT3 (CODE)
                                    380 	.area GSINIT4 (CODE)
                                    381 	.area GSINIT5 (CODE)
                                    382 	.area GSINIT  (CODE)
                                    383 	.area GSFINAL (CODE)
                                    384 	.area CSEG    (CODE)
                                    385 ;--------------------------------------------------------
                                    386 ; interrupt vector 
                                    387 ;--------------------------------------------------------
                                    388 	.area HOME    (CODE)
      000000                        389 __interrupt_vect:
      000000 02 00 11         [24]  390 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  391 	reti
      000004                        392 	.ds	7
      00000B 02 00 90         [24]  393 	ljmp	_isr_timer0
                                    394 ;--------------------------------------------------------
                                    395 ; global & static initialisations
                                    396 ;--------------------------------------------------------
                                    397 	.area HOME    (CODE)
                                    398 	.area GSINIT  (CODE)
                                    399 	.area GSFINAL (CODE)
                                    400 	.area GSINIT  (CODE)
                                    401 	.globl __sdcc_gsinit_startup
                                    402 	.globl __sdcc_program_startup
                                    403 	.globl __start__stack
                                    404 	.globl __mcs51_genXINIT
                                    405 	.globl __mcs51_genXRAMCLEAR
                                    406 	.globl __mcs51_genRAMCLEAR
                                    407 ;	Receiver.c:34: char start=0;
      00006A 75 08 00         [24]  408 	mov	_start,#0x00
                                    409 ;	Receiver.c:36: volatile int timerCount = 0;
      00006D E4               [12]  410 	clr	a
      00006E F5 0A            [12]  411 	mov	_timerCount,a
      000070 F5 0B            [12]  412 	mov	(_timerCount + 1),a
                                    413 ;	Receiver.c:37: volatile int dimCount = 0;
      000072 F5 0C            [12]  414 	mov	_dimCount,a
      000074 F5 0D            [12]  415 	mov	(_dimCount + 1),a
                                    416 ;	Receiver.c:38: volatile int time_delay = 15;
      000076 75 0E 0F         [24]  417 	mov	_time_delay,#0x0f
                                    418 ;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
      000079 F5 0F            [12]  419 	mov	(_time_delay + 1),a
                                    420 ;	Receiver.c:39: volatile int dim_val = 8;
      00007B 75 10 08         [24]  421 	mov	_dim_val,#0x08
                                    422 ;	1-genFromRTrack replaced	mov	(_dim_val + 1),#0x00
      00007E F5 11            [12]  423 	mov	(_dim_val + 1),a
                                    424 ;	Receiver.c:40: volatile int dim_val2 = 0;
      000080 F5 12            [12]  425 	mov	_dim_val2,a
      000082 F5 13            [12]  426 	mov	(_dim_val2 + 1),a
                                    427 ;	Receiver.c:41: volatile int dim1_val = 8;
      000084 75 14 08         [24]  428 	mov	_dim1_val,#0x08
                                    429 ;	1-genFromRTrack replaced	mov	(_dim1_val + 1),#0x00
      000087 F5 15            [12]  430 	mov	(_dim1_val + 1),a
                                    431 ;	Receiver.c:42: volatile int dim1_val2 = 0;
      000089 F5 16            [12]  432 	mov	_dim1_val2,a
      00008B F5 17            [12]  433 	mov	(_dim1_val2 + 1),a
                                    434 	.area GSFINAL (CODE)
      00008D 02 00 0E         [24]  435 	ljmp	__sdcc_program_startup
                                    436 ;--------------------------------------------------------
                                    437 ; Home
                                    438 ;--------------------------------------------------------
                                    439 	.area HOME    (CODE)
                                    440 	.area HOME    (CODE)
      00000E                        441 __sdcc_program_startup:
      00000E 02 05 9A         [24]  442 	ljmp	_main
                                    443 ;	return from main will return to caller
                                    444 ;--------------------------------------------------------
                                    445 ; code
                                    446 ;--------------------------------------------------------
                                    447 	.area CSEG    (CODE)
                                    448 ;------------------------------------------------------------
                                    449 ;Allocation info for local variables in function 'isr_timer0'
                                    450 ;------------------------------------------------------------
                                    451 ;	Receiver.c:46: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
                                    452 ;	-----------------------------------------
                                    453 ;	 function isr_timer0
                                    454 ;	-----------------------------------------
      000090                        455 _isr_timer0:
                           000007   456 	ar7 = 0x07
                           000006   457 	ar6 = 0x06
                           000005   458 	ar5 = 0x05
                           000004   459 	ar4 = 0x04
                           000003   460 	ar3 = 0x03
                           000002   461 	ar2 = 0x02
                           000001   462 	ar1 = 0x01
                           000000   463 	ar0 = 0x00
      000090 C0 21            [24]  464 	push	bits
      000092 C0 E0            [24]  465 	push	acc
      000094 C0 F0            [24]  466 	push	b
      000096 C0 82            [24]  467 	push	dpl
      000098 C0 83            [24]  468 	push	dph
      00009A C0 07            [24]  469 	push	(0+7)
      00009C C0 06            [24]  470 	push	(0+6)
      00009E C0 05            [24]  471 	push	(0+5)
      0000A0 C0 04            [24]  472 	push	(0+4)
      0000A2 C0 03            [24]  473 	push	(0+3)
      0000A4 C0 02            [24]  474 	push	(0+2)
      0000A6 C0 01            [24]  475 	push	(0+1)
      0000A8 C0 00            [24]  476 	push	(0+0)
      0000AA C0 D0            [24]  477 	push	psw
      0000AC 75 D0 00         [24]  478 	mov	psw,#0x00
                                    479 ;	Receiver.c:48: TH0  = 0Xee;         // ReLoad the timer value for 5ms
      0000AF 75 8C EE         [24]  480 	mov	_TH0,#0xee
                                    481 ;	Receiver.c:49: TL0  = 0X00;
      0000B2 75 8A 00         [24]  482 	mov	_TL0,#0x00
                                    483 ;	Receiver.c:50: timerCount++;
      0000B5 AE 0A            [24]  484 	mov	r6,_timerCount
      0000B7 AF 0B            [24]  485 	mov	r7,(_timerCount + 1)
      0000B9 74 01            [12]  486 	mov	a,#0x01
      0000BB 2E               [12]  487 	add	a,r6
      0000BC F5 0A            [12]  488 	mov	_timerCount,a
      0000BE E4               [12]  489 	clr	a
      0000BF 3F               [12]  490 	addc	a,r7
      0000C0 F5 0B            [12]  491 	mov	(_timerCount + 1),a
                                    492 ;	Receiver.c:51: dimCount++;
      0000C2 AE 0C            [24]  493 	mov	r6,_dimCount
      0000C4 AF 0D            [24]  494 	mov	r7,(_dimCount + 1)
      0000C6 74 01            [12]  495 	mov	a,#0x01
      0000C8 2E               [12]  496 	add	a,r6
      0000C9 F5 0C            [12]  497 	mov	_dimCount,a
      0000CB E4               [12]  498 	clr	a
      0000CC 3F               [12]  499 	addc	a,r7
      0000CD F5 0D            [12]  500 	mov	(_dimCount + 1),a
                                    501 ;	Receiver.c:52: rst_out=!rst_out;
      0000CF B2 96            [12]  502 	cpl	_P1_6
                                    503 ;	Receiver.c:54: if(state!=20)
      0000D1 74 14            [12]  504 	mov	a,#0x14
      0000D3 B5 18 07         [24]  505 	cjne	a,_state,00408$
      0000D6 E4               [12]  506 	clr	a
      0000D7 B5 19 03         [24]  507 	cjne	a,(_state + 1),00408$
      0000DA 02 05 7D         [24]  508 	ljmp	00230$
      0000DD                        509 00408$:
                                    510 ;	Receiver.c:56: if(timerCount < (time_delay*30)) // count for LED-ON delay
      0000DD 85 0E 1D         [24]  511 	mov	__mulint_PARM_2,_time_delay
      0000E0 85 0F 1E         [24]  512 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      0000E3 90 00 1E         [24]  513 	mov	dptr,#0x001e
      0000E6 12 08 34         [24]  514 	lcall	__mulint
      0000E9 AE 82            [24]  515 	mov	r6,dpl
      0000EB AF 83            [24]  516 	mov	r7,dph
      0000ED C3               [12]  517 	clr	c
      0000EE E5 0A            [12]  518 	mov	a,_timerCount
      0000F0 9E               [12]  519 	subb	a,r6
      0000F1 E5 0B            [12]  520 	mov	a,(_timerCount + 1)
      0000F3 64 80            [12]  521 	xrl	a,#0x80
      0000F5 8F F0            [24]  522 	mov	b,r7
      0000F7 63 F0 80         [24]  523 	xrl	b,#0x80
      0000FA 95 F0            [12]  524 	subb	a,b
      0000FC 40 03            [24]  525 	jc	00409$
      0000FE 02 04 52         [24]  526 	ljmp	00226$
      000101                        527 00409$:
                                    528 ;	Receiver.c:58: switch(state)
      000101 E5 19            [12]  529 	mov	a,(_state + 1)
      000103 30 E7 03         [24]  530 	jnb	acc.7,00410$
      000106 02 05 7D         [24]  531 	ljmp	00230$
      000109                        532 00410$:
      000109 C3               [12]  533 	clr	c
      00010A 74 09            [12]  534 	mov	a,#0x09
      00010C 95 18            [12]  535 	subb	a,_state
      00010E 74 80            [12]  536 	mov	a,#(0x00 ^ 0x80)
      000110 85 19 F0         [24]  537 	mov	b,(_state + 1)
      000113 63 F0 80         [24]  538 	xrl	b,#0x80
      000116 95 F0            [12]  539 	subb	a,b
      000118 50 03            [24]  540 	jnc	00411$
      00011A 02 05 7D         [24]  541 	ljmp	00230$
      00011D                        542 00411$:
      00011D E5 18            [12]  543 	mov	a,_state
      00011F 24 0B            [12]  544 	add	a,#(00412$-3-.)
      000121 83               [24]  545 	movc	a,@a+pc
      000122 F5 82            [12]  546 	mov	dpl,a
      000124 E5 18            [12]  547 	mov	a,_state
      000126 24 0E            [12]  548 	add	a,#(00413$-3-.)
      000128 83               [24]  549 	movc	a,@a+pc
      000129 F5 83            [12]  550 	mov	dph,a
      00012B E4               [12]  551 	clr	a
      00012C 73               [24]  552 	jmp	@a+dptr
      00012D                        553 00412$:
      00012D 41                     554 	.db	00101$
      00012E 91                     555 	.db	00110$
      00012F E0                     556 	.db	00119$
      000130 2F                     557 	.db	00128$
      000131 7E                     558 	.db	00137$
      000132 CD                     559 	.db	00146$
      000133 1C                     560 	.db	00155$
      000134 6B                     561 	.db	00164$
      000135 B4                     562 	.db	00171$
      000136 03                     563 	.db	00180$
      000137                        564 00413$:
      000137 01                     565 	.db	00101$>>8
      000138 01                     566 	.db	00110$>>8
      000139 01                     567 	.db	00119$>>8
      00013A 02                     568 	.db	00128$>>8
      00013B 02                     569 	.db	00137$>>8
      00013C 02                     570 	.db	00146$>>8
      00013D 03                     571 	.db	00155$>>8
      00013E 03                     572 	.db	00164$>>8
      00013F 03                     573 	.db	00171$>>8
      000140 04                     574 	.db	00180$>>8
                                    575 ;	Receiver.c:60: case 0:	if(dim1_val)
      000141                        576 00101$:
      000141 E5 14            [12]  577 	mov	a,_dim1_val
      000143 45 15            [12]  578 	orl	a,(_dim1_val + 1)
      000145 60 16            [24]  579 	jz	00106$
                                    580 ;	Receiver.c:61: {dim1_val--;P0_1 =1;P0_0 =0;P2_6=1;}
      000147 AE 14            [24]  581 	mov	r6,_dim1_val
      000149 AF 15            [24]  582 	mov	r7,(_dim1_val + 1)
      00014B EE               [12]  583 	mov	a,r6
      00014C 24 FF            [12]  584 	add	a,#0xff
      00014E F5 14            [12]  585 	mov	_dim1_val,a
      000150 EF               [12]  586 	mov	a,r7
      000151 34 FF            [12]  587 	addc	a,#0xff
      000153 F5 15            [12]  588 	mov	(_dim1_val + 1),a
                                    589 ;	assignBit
      000155 D2 81            [12]  590 	setb	_P0_1
                                    591 ;	assignBit
      000157 C2 80            [12]  592 	clr	_P0_0
                                    593 ;	assignBit
      000159 D2 A6            [12]  594 	setb	_P2_6
      00015B 80 28            [24]  595 	sjmp	00107$
      00015D                        596 00106$:
                                    597 ;	Receiver.c:63: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      00015D E5 16            [12]  598 	mov	a,_dim1_val2
      00015F 45 17            [12]  599 	orl	a,(_dim1_val2 + 1)
      000161 60 16            [24]  600 	jz	00103$
      000163 AE 16            [24]  601 	mov	r6,_dim1_val2
      000165 AF 17            [24]  602 	mov	r7,(_dim1_val2 + 1)
      000167 EE               [12]  603 	mov	a,r6
      000168 24 FF            [12]  604 	add	a,#0xff
      00016A F5 16            [12]  605 	mov	_dim1_val2,a
      00016C EF               [12]  606 	mov	a,r7
      00016D 34 FF            [12]  607 	addc	a,#0xff
      00016F F5 17            [12]  608 	mov	(_dim1_val2 + 1),a
                                    609 ;	assignBit
      000171 C2 81            [12]  610 	clr	_P0_1
                                    611 ;	assignBit
      000173 C2 80            [12]  612 	clr	_P0_0
                                    613 ;	assignBit
      000175 C2 A6            [12]  614 	clr	_P2_6
      000177 80 0C            [24]  615 	sjmp	00107$
      000179                        616 00103$:
                                    617 ;	Receiver.c:65: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      000179 85 10 14         [24]  618 	mov	_dim1_val,_dim_val
      00017C 85 11 15         [24]  619 	mov	(_dim1_val + 1),(_dim_val + 1)
      00017F 85 12 16         [24]  620 	mov	_dim1_val2,_dim_val2
      000182 85 13 17         [24]  621 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      000185                        622 00107$:
                                    623 ;	Receiver.c:67: if(auto_flag)auto_led=1;
      000185 30 00 02         [24]  624 	jnb	_auto_flag,00109$
                                    625 ;	assignBit
      000188 D2 A1            [12]  626 	setb	_P2_1
      00018A                        627 00109$:
                                    628 ;	Receiver.c:68: up_led=0;	down_led=0;
                                    629 ;	assignBit
      00018A C2 A7            [12]  630 	clr	_P2_7
                                    631 ;	assignBit
      00018C C2 A4            [12]  632 	clr	_P2_4
                                    633 ;	Receiver.c:69: break;	
      00018E 02 05 7D         [24]  634 	ljmp	00230$
                                    635 ;	Receiver.c:70: case 1:	if(dim1_val)
      000191                        636 00110$:
      000191 E5 14            [12]  637 	mov	a,_dim1_val
      000193 45 15            [12]  638 	orl	a,(_dim1_val + 1)
      000195 60 16            [24]  639 	jz	00115$
                                    640 ;	Receiver.c:71: {dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}
      000197 AE 14            [24]  641 	mov	r6,_dim1_val
      000199 AF 15            [24]  642 	mov	r7,(_dim1_val + 1)
      00019B EE               [12]  643 	mov	a,r6
      00019C 24 FF            [12]  644 	add	a,#0xff
      00019E F5 14            [12]  645 	mov	_dim1_val,a
      0001A0 EF               [12]  646 	mov	a,r7
      0001A1 34 FF            [12]  647 	addc	a,#0xff
      0001A3 F5 15            [12]  648 	mov	(_dim1_val + 1),a
                                    649 ;	assignBit
      0001A5 D2 81            [12]  650 	setb	_P0_1
                                    651 ;	assignBit
      0001A7 C2 80            [12]  652 	clr	_P0_0
                                    653 ;	assignBit
      0001A9 C2 A6            [12]  654 	clr	_P2_6
      0001AB 80 28            [24]  655 	sjmp	00116$
      0001AD                        656 00115$:
                                    657 ;	Receiver.c:73: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      0001AD E5 16            [12]  658 	mov	a,_dim1_val2
      0001AF 45 17            [12]  659 	orl	a,(_dim1_val2 + 1)
      0001B1 60 16            [24]  660 	jz	00112$
      0001B3 AE 16            [24]  661 	mov	r6,_dim1_val2
      0001B5 AF 17            [24]  662 	mov	r7,(_dim1_val2 + 1)
      0001B7 EE               [12]  663 	mov	a,r6
      0001B8 24 FF            [12]  664 	add	a,#0xff
      0001BA F5 16            [12]  665 	mov	_dim1_val2,a
      0001BC EF               [12]  666 	mov	a,r7
      0001BD 34 FF            [12]  667 	addc	a,#0xff
      0001BF F5 17            [12]  668 	mov	(_dim1_val2 + 1),a
                                    669 ;	assignBit
      0001C1 C2 81            [12]  670 	clr	_P0_1
                                    671 ;	assignBit
      0001C3 C2 80            [12]  672 	clr	_P0_0
                                    673 ;	assignBit
      0001C5 C2 A6            [12]  674 	clr	_P2_6
      0001C7 80 0C            [24]  675 	sjmp	00116$
      0001C9                        676 00112$:
                                    677 ;	Receiver.c:75: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      0001C9 85 10 14         [24]  678 	mov	_dim1_val,_dim_val
      0001CC 85 11 15         [24]  679 	mov	(_dim1_val + 1),(_dim_val + 1)
      0001CF 85 12 16         [24]  680 	mov	_dim1_val2,_dim_val2
      0001D2 85 13 17         [24]  681 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      0001D5                        682 00116$:
                                    683 ;	Receiver.c:77: if(auto_flag)
      0001D5 20 00 03         [24]  684 	jb	_auto_flag,00419$
      0001D8 02 05 7D         [24]  685 	ljmp	00230$
      0001DB                        686 00419$:
                                    687 ;	Receiver.c:78: up_led=1;
                                    688 ;	assignBit
      0001DB D2 A7            [12]  689 	setb	_P2_7
                                    690 ;	Receiver.c:79: break;
      0001DD 02 05 7D         [24]  691 	ljmp	00230$
                                    692 ;	Receiver.c:80: case 2:		if(dim1_val)
      0001E0                        693 00119$:
      0001E0 E5 14            [12]  694 	mov	a,_dim1_val
      0001E2 45 15            [12]  695 	orl	a,(_dim1_val + 1)
      0001E4 60 16            [24]  696 	jz	00124$
                                    697 ;	Receiver.c:81: {dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}
      0001E6 AE 14            [24]  698 	mov	r6,_dim1_val
      0001E8 AF 15            [24]  699 	mov	r7,(_dim1_val + 1)
      0001EA EE               [12]  700 	mov	a,r6
      0001EB 24 FF            [12]  701 	add	a,#0xff
      0001ED F5 14            [12]  702 	mov	_dim1_val,a
      0001EF EF               [12]  703 	mov	a,r7
      0001F0 34 FF            [12]  704 	addc	a,#0xff
      0001F2 F5 15            [12]  705 	mov	(_dim1_val + 1),a
                                    706 ;	assignBit
      0001F4 D2 81            [12]  707 	setb	_P0_1
                                    708 ;	assignBit
      0001F6 C2 80            [12]  709 	clr	_P0_0
                                    710 ;	assignBit
      0001F8 C2 A6            [12]  711 	clr	_P2_6
      0001FA 80 28            [24]  712 	sjmp	00125$
      0001FC                        713 00124$:
                                    714 ;	Receiver.c:83: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      0001FC E5 16            [12]  715 	mov	a,_dim1_val2
      0001FE 45 17            [12]  716 	orl	a,(_dim1_val2 + 1)
      000200 60 16            [24]  717 	jz	00121$
      000202 AE 16            [24]  718 	mov	r6,_dim1_val2
      000204 AF 17            [24]  719 	mov	r7,(_dim1_val2 + 1)
      000206 EE               [12]  720 	mov	a,r6
      000207 24 FF            [12]  721 	add	a,#0xff
      000209 F5 16            [12]  722 	mov	_dim1_val2,a
      00020B EF               [12]  723 	mov	a,r7
      00020C 34 FF            [12]  724 	addc	a,#0xff
      00020E F5 17            [12]  725 	mov	(_dim1_val2 + 1),a
                                    726 ;	assignBit
      000210 C2 81            [12]  727 	clr	_P0_1
                                    728 ;	assignBit
      000212 C2 80            [12]  729 	clr	_P0_0
                                    730 ;	assignBit
      000214 C2 A6            [12]  731 	clr	_P2_6
      000216 80 0C            [24]  732 	sjmp	00125$
      000218                        733 00121$:
                                    734 ;	Receiver.c:85: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      000218 85 10 14         [24]  735 	mov	_dim1_val,_dim_val
      00021B 85 11 15         [24]  736 	mov	(_dim1_val + 1),(_dim_val + 1)
      00021E 85 12 16         [24]  737 	mov	_dim1_val2,_dim_val2
      000221 85 13 17         [24]  738 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      000224                        739 00125$:
                                    740 ;	Receiver.c:87: if(auto_flag)
      000224 20 00 03         [24]  741 	jb	_auto_flag,00422$
      000227 02 05 7D         [24]  742 	ljmp	00230$
      00022A                        743 00422$:
                                    744 ;	Receiver.c:88: up_led=1;
                                    745 ;	assignBit
      00022A D2 A7            [12]  746 	setb	_P2_7
                                    747 ;	Receiver.c:89: break;
      00022C 02 05 7D         [24]  748 	ljmp	00230$
                                    749 ;	Receiver.c:90: case 3:		if(dim1_val)
      00022F                        750 00128$:
      00022F E5 14            [12]  751 	mov	a,_dim1_val
      000231 45 15            [12]  752 	orl	a,(_dim1_val + 1)
      000233 60 16            [24]  753 	jz	00133$
                                    754 ;	Receiver.c:91: {dim1_val--;P0_1 =1;P0_0 =1;P2_6=0;}
      000235 AE 14            [24]  755 	mov	r6,_dim1_val
      000237 AF 15            [24]  756 	mov	r7,(_dim1_val + 1)
      000239 EE               [12]  757 	mov	a,r6
      00023A 24 FF            [12]  758 	add	a,#0xff
      00023C F5 14            [12]  759 	mov	_dim1_val,a
      00023E EF               [12]  760 	mov	a,r7
      00023F 34 FF            [12]  761 	addc	a,#0xff
      000241 F5 15            [12]  762 	mov	(_dim1_val + 1),a
                                    763 ;	assignBit
      000243 D2 81            [12]  764 	setb	_P0_1
                                    765 ;	assignBit
      000245 D2 80            [12]  766 	setb	_P0_0
                                    767 ;	assignBit
      000247 C2 A6            [12]  768 	clr	_P2_6
      000249 80 28            [24]  769 	sjmp	00134$
      00024B                        770 00133$:
                                    771 ;	Receiver.c:93: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      00024B E5 16            [12]  772 	mov	a,_dim1_val2
      00024D 45 17            [12]  773 	orl	a,(_dim1_val2 + 1)
      00024F 60 16            [24]  774 	jz	00130$
      000251 AE 16            [24]  775 	mov	r6,_dim1_val2
      000253 AF 17            [24]  776 	mov	r7,(_dim1_val2 + 1)
      000255 EE               [12]  777 	mov	a,r6
      000256 24 FF            [12]  778 	add	a,#0xff
      000258 F5 16            [12]  779 	mov	_dim1_val2,a
      00025A EF               [12]  780 	mov	a,r7
      00025B 34 FF            [12]  781 	addc	a,#0xff
      00025D F5 17            [12]  782 	mov	(_dim1_val2 + 1),a
                                    783 ;	assignBit
      00025F C2 81            [12]  784 	clr	_P0_1
                                    785 ;	assignBit
      000261 C2 80            [12]  786 	clr	_P0_0
                                    787 ;	assignBit
      000263 C2 A6            [12]  788 	clr	_P2_6
      000265 80 0C            [24]  789 	sjmp	00134$
      000267                        790 00130$:
                                    791 ;	Receiver.c:95: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      000267 85 10 14         [24]  792 	mov	_dim1_val,_dim_val
      00026A 85 11 15         [24]  793 	mov	(_dim1_val + 1),(_dim_val + 1)
      00026D 85 12 16         [24]  794 	mov	_dim1_val2,_dim_val2
      000270 85 13 17         [24]  795 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      000273                        796 00134$:
                                    797 ;	Receiver.c:97: if(auto_flag)
      000273 20 00 03         [24]  798 	jb	_auto_flag,00425$
      000276 02 05 7D         [24]  799 	ljmp	00230$
      000279                        800 00425$:
                                    801 ;	Receiver.c:98: up_led=1;
                                    802 ;	assignBit
      000279 D2 A7            [12]  803 	setb	_P2_7
                                    804 ;	Receiver.c:99: break;
      00027B 02 05 7D         [24]  805 	ljmp	00230$
                                    806 ;	Receiver.c:100: case 4:		if(dim1_val)
      00027E                        807 00137$:
      00027E E5 14            [12]  808 	mov	a,_dim1_val
      000280 45 15            [12]  809 	orl	a,(_dim1_val + 1)
      000282 60 16            [24]  810 	jz	00142$
                                    811 ;	Receiver.c:101: {dim1_val--;P0_1 =0;P0_0 =1;P2_6=1;}
      000284 AE 14            [24]  812 	mov	r6,_dim1_val
      000286 AF 15            [24]  813 	mov	r7,(_dim1_val + 1)
      000288 EE               [12]  814 	mov	a,r6
      000289 24 FF            [12]  815 	add	a,#0xff
      00028B F5 14            [12]  816 	mov	_dim1_val,a
      00028D EF               [12]  817 	mov	a,r7
      00028E 34 FF            [12]  818 	addc	a,#0xff
      000290 F5 15            [12]  819 	mov	(_dim1_val + 1),a
                                    820 ;	assignBit
      000292 C2 81            [12]  821 	clr	_P0_1
                                    822 ;	assignBit
      000294 D2 80            [12]  823 	setb	_P0_0
                                    824 ;	assignBit
      000296 D2 A6            [12]  825 	setb	_P2_6
      000298 80 28            [24]  826 	sjmp	00143$
      00029A                        827 00142$:
                                    828 ;	Receiver.c:103: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      00029A E5 16            [12]  829 	mov	a,_dim1_val2
      00029C 45 17            [12]  830 	orl	a,(_dim1_val2 + 1)
      00029E 60 16            [24]  831 	jz	00139$
      0002A0 AE 16            [24]  832 	mov	r6,_dim1_val2
      0002A2 AF 17            [24]  833 	mov	r7,(_dim1_val2 + 1)
      0002A4 EE               [12]  834 	mov	a,r6
      0002A5 24 FF            [12]  835 	add	a,#0xff
      0002A7 F5 16            [12]  836 	mov	_dim1_val2,a
      0002A9 EF               [12]  837 	mov	a,r7
      0002AA 34 FF            [12]  838 	addc	a,#0xff
      0002AC F5 17            [12]  839 	mov	(_dim1_val2 + 1),a
                                    840 ;	assignBit
      0002AE C2 81            [12]  841 	clr	_P0_1
                                    842 ;	assignBit
      0002B0 C2 80            [12]  843 	clr	_P0_0
                                    844 ;	assignBit
      0002B2 C2 A6            [12]  845 	clr	_P2_6
      0002B4 80 0C            [24]  846 	sjmp	00143$
      0002B6                        847 00139$:
                                    848 ;	Receiver.c:105: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      0002B6 85 10 14         [24]  849 	mov	_dim1_val,_dim_val
      0002B9 85 11 15         [24]  850 	mov	(_dim1_val + 1),(_dim_val + 1)
      0002BC 85 12 16         [24]  851 	mov	_dim1_val2,_dim_val2
      0002BF 85 13 17         [24]  852 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      0002C2                        853 00143$:
                                    854 ;	Receiver.c:107: if(auto_flag)
      0002C2 20 00 03         [24]  855 	jb	_auto_flag,00428$
      0002C5 02 05 7D         [24]  856 	ljmp	00230$
      0002C8                        857 00428$:
                                    858 ;	Receiver.c:108: down_led=1;
                                    859 ;	assignBit
      0002C8 D2 A4            [12]  860 	setb	_P2_4
                                    861 ;	Receiver.c:109: break;
      0002CA 02 05 7D         [24]  862 	ljmp	00230$
                                    863 ;	Receiver.c:110: case 5:		if(dim1_val)
      0002CD                        864 00146$:
      0002CD E5 14            [12]  865 	mov	a,_dim1_val
      0002CF 45 15            [12]  866 	orl	a,(_dim1_val + 1)
      0002D1 60 16            [24]  867 	jz	00151$
                                    868 ;	Receiver.c:111: {dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}
      0002D3 AE 14            [24]  869 	mov	r6,_dim1_val
      0002D5 AF 15            [24]  870 	mov	r7,(_dim1_val + 1)
      0002D7 EE               [12]  871 	mov	a,r6
      0002D8 24 FF            [12]  872 	add	a,#0xff
      0002DA F5 14            [12]  873 	mov	_dim1_val,a
      0002DC EF               [12]  874 	mov	a,r7
      0002DD 34 FF            [12]  875 	addc	a,#0xff
      0002DF F5 15            [12]  876 	mov	(_dim1_val + 1),a
                                    877 ;	assignBit
      0002E1 C2 81            [12]  878 	clr	_P0_1
                                    879 ;	assignBit
      0002E3 C2 80            [12]  880 	clr	_P0_0
                                    881 ;	assignBit
      0002E5 D2 A6            [12]  882 	setb	_P2_6
      0002E7 80 28            [24]  883 	sjmp	00152$
      0002E9                        884 00151$:
                                    885 ;	Receiver.c:113: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      0002E9 E5 16            [12]  886 	mov	a,_dim1_val2
      0002EB 45 17            [12]  887 	orl	a,(_dim1_val2 + 1)
      0002ED 60 16            [24]  888 	jz	00148$
      0002EF AE 16            [24]  889 	mov	r6,_dim1_val2
      0002F1 AF 17            [24]  890 	mov	r7,(_dim1_val2 + 1)
      0002F3 EE               [12]  891 	mov	a,r6
      0002F4 24 FF            [12]  892 	add	a,#0xff
      0002F6 F5 16            [12]  893 	mov	_dim1_val2,a
      0002F8 EF               [12]  894 	mov	a,r7
      0002F9 34 FF            [12]  895 	addc	a,#0xff
      0002FB F5 17            [12]  896 	mov	(_dim1_val2 + 1),a
                                    897 ;	assignBit
      0002FD C2 81            [12]  898 	clr	_P0_1
                                    899 ;	assignBit
      0002FF C2 80            [12]  900 	clr	_P0_0
                                    901 ;	assignBit
      000301 C2 A6            [12]  902 	clr	_P2_6
      000303 80 0C            [24]  903 	sjmp	00152$
      000305                        904 00148$:
                                    905 ;	Receiver.c:115: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      000305 85 10 14         [24]  906 	mov	_dim1_val,_dim_val
      000308 85 11 15         [24]  907 	mov	(_dim1_val + 1),(_dim_val + 1)
      00030B 85 12 16         [24]  908 	mov	_dim1_val2,_dim_val2
      00030E 85 13 17         [24]  909 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      000311                        910 00152$:
                                    911 ;	Receiver.c:117: if(auto_flag)
      000311 20 00 03         [24]  912 	jb	_auto_flag,00431$
      000314 02 05 7D         [24]  913 	ljmp	00230$
      000317                        914 00431$:
                                    915 ;	Receiver.c:118: down_led=1;
                                    916 ;	assignBit
      000317 D2 A4            [12]  917 	setb	_P2_4
                                    918 ;	Receiver.c:119: break;
      000319 02 05 7D         [24]  919 	ljmp	00230$
                                    920 ;	Receiver.c:120: case 6:		if(dim1_val)
      00031C                        921 00155$:
      00031C E5 14            [12]  922 	mov	a,_dim1_val
      00031E 45 15            [12]  923 	orl	a,(_dim1_val + 1)
      000320 60 16            [24]  924 	jz	00160$
                                    925 ;	Receiver.c:121: {dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}
      000322 AE 14            [24]  926 	mov	r6,_dim1_val
      000324 AF 15            [24]  927 	mov	r7,(_dim1_val + 1)
      000326 EE               [12]  928 	mov	a,r6
      000327 24 FF            [12]  929 	add	a,#0xff
      000329 F5 14            [12]  930 	mov	_dim1_val,a
      00032B EF               [12]  931 	mov	a,r7
      00032C 34 FF            [12]  932 	addc	a,#0xff
      00032E F5 15            [12]  933 	mov	(_dim1_val + 1),a
                                    934 ;	assignBit
      000330 C2 81            [12]  935 	clr	_P0_1
                                    936 ;	assignBit
      000332 C2 80            [12]  937 	clr	_P0_0
                                    938 ;	assignBit
      000334 D2 A6            [12]  939 	setb	_P2_6
      000336 80 28            [24]  940 	sjmp	00161$
      000338                        941 00160$:
                                    942 ;	Receiver.c:123: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      000338 E5 16            [12]  943 	mov	a,_dim1_val2
      00033A 45 17            [12]  944 	orl	a,(_dim1_val2 + 1)
      00033C 60 16            [24]  945 	jz	00157$
      00033E AE 16            [24]  946 	mov	r6,_dim1_val2
      000340 AF 17            [24]  947 	mov	r7,(_dim1_val2 + 1)
      000342 EE               [12]  948 	mov	a,r6
      000343 24 FF            [12]  949 	add	a,#0xff
      000345 F5 16            [12]  950 	mov	_dim1_val2,a
      000347 EF               [12]  951 	mov	a,r7
      000348 34 FF            [12]  952 	addc	a,#0xff
      00034A F5 17            [12]  953 	mov	(_dim1_val2 + 1),a
                                    954 ;	assignBit
      00034C C2 81            [12]  955 	clr	_P0_1
                                    956 ;	assignBit
      00034E C2 80            [12]  957 	clr	_P0_0
                                    958 ;	assignBit
      000350 C2 A6            [12]  959 	clr	_P2_6
      000352 80 0C            [24]  960 	sjmp	00161$
      000354                        961 00157$:
                                    962 ;	Receiver.c:125: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      000354 85 10 14         [24]  963 	mov	_dim1_val,_dim_val
      000357 85 11 15         [24]  964 	mov	(_dim1_val + 1),(_dim_val + 1)
      00035A 85 12 16         [24]  965 	mov	_dim1_val2,_dim_val2
      00035D 85 13 17         [24]  966 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      000360                        967 00161$:
                                    968 ;	Receiver.c:127: if(auto_flag)
      000360 20 00 03         [24]  969 	jb	_auto_flag,00434$
      000363 02 05 7D         [24]  970 	ljmp	00230$
      000366                        971 00434$:
                                    972 ;	Receiver.c:128: down_led=1;
                                    973 ;	assignBit
      000366 D2 A4            [12]  974 	setb	_P2_4
                                    975 ;	Receiver.c:129: break;
      000368 02 05 7D         [24]  976 	ljmp	00230$
                                    977 ;	Receiver.c:130: case 7:		if(dim1_val)
      00036B                        978 00164$:
      00036B E5 14            [12]  979 	mov	a,_dim1_val
      00036D 45 15            [12]  980 	orl	a,(_dim1_val + 1)
      00036F 60 17            [24]  981 	jz	00169$
                                    982 ;	Receiver.c:131: {dim1_val--;P0_1 =0;P0_0 =1;P2_6=0;}
      000371 AE 14            [24]  983 	mov	r6,_dim1_val
      000373 AF 15            [24]  984 	mov	r7,(_dim1_val + 1)
      000375 EE               [12]  985 	mov	a,r6
      000376 24 FF            [12]  986 	add	a,#0xff
      000378 F5 14            [12]  987 	mov	_dim1_val,a
      00037A EF               [12]  988 	mov	a,r7
      00037B 34 FF            [12]  989 	addc	a,#0xff
      00037D F5 15            [12]  990 	mov	(_dim1_val + 1),a
                                    991 ;	assignBit
      00037F C2 81            [12]  992 	clr	_P0_1
                                    993 ;	assignBit
      000381 D2 80            [12]  994 	setb	_P0_0
                                    995 ;	assignBit
      000383 C2 A6            [12]  996 	clr	_P2_6
      000385 02 05 7D         [24]  997 	ljmp	00230$
      000388                        998 00169$:
                                    999 ;	Receiver.c:133: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      000388 E5 16            [12] 1000 	mov	a,_dim1_val2
      00038A 45 17            [12] 1001 	orl	a,(_dim1_val2 + 1)
      00038C 60 17            [24] 1002 	jz	00166$
      00038E AE 16            [24] 1003 	mov	r6,_dim1_val2
      000390 AF 17            [24] 1004 	mov	r7,(_dim1_val2 + 1)
      000392 EE               [12] 1005 	mov	a,r6
      000393 24 FF            [12] 1006 	add	a,#0xff
      000395 F5 16            [12] 1007 	mov	_dim1_val2,a
      000397 EF               [12] 1008 	mov	a,r7
      000398 34 FF            [12] 1009 	addc	a,#0xff
      00039A F5 17            [12] 1010 	mov	(_dim1_val2 + 1),a
                                   1011 ;	assignBit
      00039C C2 81            [12] 1012 	clr	_P0_1
                                   1013 ;	assignBit
      00039E C2 80            [12] 1014 	clr	_P0_0
                                   1015 ;	assignBit
      0003A0 C2 A6            [12] 1016 	clr	_P2_6
      0003A2 02 05 7D         [24] 1017 	ljmp	00230$
      0003A5                       1018 00166$:
                                   1019 ;	Receiver.c:135: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      0003A5 85 10 14         [24] 1020 	mov	_dim1_val,_dim_val
      0003A8 85 11 15         [24] 1021 	mov	(_dim1_val + 1),(_dim_val + 1)
      0003AB 85 12 16         [24] 1022 	mov	_dim1_val2,_dim_val2
      0003AE 85 13 17         [24] 1023 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
                                   1024 ;	Receiver.c:136: break;
      0003B1 02 05 7D         [24] 1025 	ljmp	00230$
                                   1026 ;	Receiver.c:137: case 8:		if(dim1_val)
      0003B4                       1027 00171$:
      0003B4 E5 14            [12] 1028 	mov	a,_dim1_val
      0003B6 45 15            [12] 1029 	orl	a,(_dim1_val + 1)
      0003B8 60 16            [24] 1030 	jz	00176$
                                   1031 ;	Receiver.c:138: {dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}
      0003BA AE 14            [24] 1032 	mov	r6,_dim1_val
      0003BC AF 15            [24] 1033 	mov	r7,(_dim1_val + 1)
      0003BE EE               [12] 1034 	mov	a,r6
      0003BF 24 FF            [12] 1035 	add	a,#0xff
      0003C1 F5 14            [12] 1036 	mov	_dim1_val,a
      0003C3 EF               [12] 1037 	mov	a,r7
      0003C4 34 FF            [12] 1038 	addc	a,#0xff
      0003C6 F5 15            [12] 1039 	mov	(_dim1_val + 1),a
                                   1040 ;	assignBit
      0003C8 D2 81            [12] 1041 	setb	_P0_1
                                   1042 ;	assignBit
      0003CA C2 80            [12] 1043 	clr	_P0_0
                                   1044 ;	assignBit
      0003CC C2 A6            [12] 1045 	clr	_P2_6
      0003CE 80 28            [24] 1046 	sjmp	00177$
      0003D0                       1047 00176$:
                                   1048 ;	Receiver.c:140: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      0003D0 E5 16            [12] 1049 	mov	a,_dim1_val2
      0003D2 45 17            [12] 1050 	orl	a,(_dim1_val2 + 1)
      0003D4 60 16            [24] 1051 	jz	00173$
      0003D6 AE 16            [24] 1052 	mov	r6,_dim1_val2
      0003D8 AF 17            [24] 1053 	mov	r7,(_dim1_val2 + 1)
      0003DA EE               [12] 1054 	mov	a,r6
      0003DB 24 FF            [12] 1055 	add	a,#0xff
      0003DD F5 16            [12] 1056 	mov	_dim1_val2,a
      0003DF EF               [12] 1057 	mov	a,r7
      0003E0 34 FF            [12] 1058 	addc	a,#0xff
      0003E2 F5 17            [12] 1059 	mov	(_dim1_val2 + 1),a
                                   1060 ;	assignBit
      0003E4 C2 81            [12] 1061 	clr	_P0_1
                                   1062 ;	assignBit
      0003E6 C2 80            [12] 1063 	clr	_P0_0
                                   1064 ;	assignBit
      0003E8 C2 A6            [12] 1065 	clr	_P2_6
      0003EA 80 0C            [24] 1066 	sjmp	00177$
      0003EC                       1067 00173$:
                                   1068 ;	Receiver.c:142: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      0003EC 85 10 14         [24] 1069 	mov	_dim1_val,_dim_val
      0003EF 85 11 15         [24] 1070 	mov	(_dim1_val + 1),(_dim_val + 1)
      0003F2 85 12 16         [24] 1071 	mov	_dim1_val2,_dim_val2
      0003F5 85 13 17         [24] 1072 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      0003F8                       1073 00177$:
                                   1074 ;	Receiver.c:144: if(auto_flag)
      0003F8 20 00 03         [24] 1075 	jb	_auto_flag,00439$
      0003FB 02 05 7D         [24] 1076 	ljmp	00230$
      0003FE                       1077 00439$:
                                   1078 ;	Receiver.c:145: up_led=1;
                                   1079 ;	assignBit
      0003FE D2 A7            [12] 1080 	setb	_P2_7
                                   1081 ;	Receiver.c:146: break;
      000400 02 05 7D         [24] 1082 	ljmp	00230$
                                   1083 ;	Receiver.c:147: case 9:		if(dim1_val)
      000403                       1084 00180$:
      000403 E5 14            [12] 1085 	mov	a,_dim1_val
      000405 45 15            [12] 1086 	orl	a,(_dim1_val + 1)
      000407 60 16            [24] 1087 	jz	00185$
                                   1088 ;	Receiver.c:148: {dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}
      000409 AE 14            [24] 1089 	mov	r6,_dim1_val
      00040B AF 15            [24] 1090 	mov	r7,(_dim1_val + 1)
      00040D EE               [12] 1091 	mov	a,r6
      00040E 24 FF            [12] 1092 	add	a,#0xff
      000410 F5 14            [12] 1093 	mov	_dim1_val,a
      000412 EF               [12] 1094 	mov	a,r7
      000413 34 FF            [12] 1095 	addc	a,#0xff
      000415 F5 15            [12] 1096 	mov	(_dim1_val + 1),a
                                   1097 ;	assignBit
      000417 C2 81            [12] 1098 	clr	_P0_1
                                   1099 ;	assignBit
      000419 C2 80            [12] 1100 	clr	_P0_0
                                   1101 ;	assignBit
      00041B D2 A6            [12] 1102 	setb	_P2_6
      00041D 80 28            [24] 1103 	sjmp	00186$
      00041F                       1104 00185$:
                                   1105 ;	Receiver.c:150: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      00041F E5 16            [12] 1106 	mov	a,_dim1_val2
      000421 45 17            [12] 1107 	orl	a,(_dim1_val2 + 1)
      000423 60 16            [24] 1108 	jz	00182$
      000425 AE 16            [24] 1109 	mov	r6,_dim1_val2
      000427 AF 17            [24] 1110 	mov	r7,(_dim1_val2 + 1)
      000429 EE               [12] 1111 	mov	a,r6
      00042A 24 FF            [12] 1112 	add	a,#0xff
      00042C F5 16            [12] 1113 	mov	_dim1_val2,a
      00042E EF               [12] 1114 	mov	a,r7
      00042F 34 FF            [12] 1115 	addc	a,#0xff
      000431 F5 17            [12] 1116 	mov	(_dim1_val2 + 1),a
                                   1117 ;	assignBit
      000433 C2 81            [12] 1118 	clr	_P0_1
                                   1119 ;	assignBit
      000435 C2 80            [12] 1120 	clr	_P0_0
                                   1121 ;	assignBit
      000437 C2 A6            [12] 1122 	clr	_P2_6
      000439 80 0C            [24] 1123 	sjmp	00186$
      00043B                       1124 00182$:
                                   1125 ;	Receiver.c:152: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      00043B 85 10 14         [24] 1126 	mov	_dim1_val,_dim_val
      00043E 85 11 15         [24] 1127 	mov	(_dim1_val + 1),(_dim_val + 1)
      000441 85 12 16         [24] 1128 	mov	_dim1_val2,_dim_val2
      000444 85 13 17         [24] 1129 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      000447                       1130 00186$:
                                   1131 ;	Receiver.c:154: if(auto_flag)
      000447 20 00 03         [24] 1132 	jb	_auto_flag,00442$
      00044A 02 05 7D         [24] 1133 	ljmp	00230$
      00044D                       1134 00442$:
                                   1135 ;	Receiver.c:155: down_led=1;
                                   1136 ;	assignBit
      00044D D2 A4            [12] 1137 	setb	_P2_4
                                   1138 ;	Receiver.c:156: break;
      00044F 02 05 7D         [24] 1139 	ljmp	00230$
                                   1140 ;	Receiver.c:158: }	
      000452                       1141 00226$:
                                   1142 ;	Receiver.c:162: else if((timerCount > time_delay) &&(timerCount<time_delay*60)) // count for LED-ON delay
      000452 C3               [12] 1143 	clr	c
      000453 E5 0E            [12] 1144 	mov	a,_time_delay
      000455 95 0A            [12] 1145 	subb	a,_timerCount
      000457 E5 0F            [12] 1146 	mov	a,(_time_delay + 1)
      000459 64 80            [12] 1147 	xrl	a,#0x80
      00045B 85 0B F0         [24] 1148 	mov	b,(_timerCount + 1)
      00045E 63 F0 80         [24] 1149 	xrl	b,#0x80
      000461 95 F0            [12] 1150 	subb	a,b
      000463 40 03            [24] 1151 	jc	00443$
      000465 02 05 78         [24] 1152 	ljmp	00222$
      000468                       1153 00443$:
      000468 85 0E 1D         [24] 1154 	mov	__mulint_PARM_2,_time_delay
      00046B 85 0F 1E         [24] 1155 	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
      00046E 90 00 3C         [24] 1156 	mov	dptr,#0x003c
      000471 12 08 34         [24] 1157 	lcall	__mulint
      000474 AE 82            [24] 1158 	mov	r6,dpl
      000476 AF 83            [24] 1159 	mov	r7,dph
      000478 C3               [12] 1160 	clr	c
      000479 E5 0A            [12] 1161 	mov	a,_timerCount
      00047B 9E               [12] 1162 	subb	a,r6
      00047C E5 0B            [12] 1163 	mov	a,(_timerCount + 1)
      00047E 64 80            [12] 1164 	xrl	a,#0x80
      000480 8F F0            [24] 1165 	mov	b,r7
      000482 63 F0 80         [24] 1166 	xrl	b,#0x80
      000485 95 F0            [12] 1167 	subb	a,b
      000487 40 03            [24] 1168 	jc	00444$
      000489 02 05 78         [24] 1169 	ljmp	00222$
      00048C                       1170 00444$:
                                   1171 ;	Receiver.c:164: switch(state)
      00048C E5 19            [12] 1172 	mov	a,(_state + 1)
      00048E 30 E7 03         [24] 1173 	jnb	acc.7,00445$
      000491 02 05 7D         [24] 1174 	ljmp	00230$
      000494                       1175 00445$:
      000494 C3               [12] 1176 	clr	c
      000495 74 09            [12] 1177 	mov	a,#0x09
      000497 95 18            [12] 1178 	subb	a,_state
      000499 74 80            [12] 1179 	mov	a,#(0x00 ^ 0x80)
      00049B 85 19 F0         [24] 1180 	mov	b,(_state + 1)
      00049E 63 F0 80         [24] 1181 	xrl	b,#0x80
      0004A1 95 F0            [12] 1182 	subb	a,b
      0004A3 50 03            [24] 1183 	jnc	00446$
      0004A5 02 05 7D         [24] 1184 	ljmp	00230$
      0004A8                       1185 00446$:
      0004A8 E5 18            [12] 1186 	mov	a,_state
      0004AA 24 0B            [12] 1187 	add	a,#(00447$-3-.)
      0004AC 83               [24] 1188 	movc	a,@a+pc
      0004AD F5 82            [12] 1189 	mov	dpl,a
      0004AF E5 18            [12] 1190 	mov	a,_state
      0004B1 24 0E            [12] 1191 	add	a,#(00448$-3-.)
      0004B3 83               [24] 1192 	movc	a,@a+pc
      0004B4 F5 83            [12] 1193 	mov	dph,a
      0004B6 E4               [12] 1194 	clr	a
      0004B7 73               [24] 1195 	jmp	@a+dptr
      0004B8                       1196 00447$:
      0004B8 CC                    1197 	.db	00191$
      0004B9 DE                    1198 	.db	00201$
      0004BA D1                    1199 	.db	00200$
      0004BB D1                    1200 	.db	00200$
      0004BC D1                    1201 	.db	00200$
      0004BD D1                    1202 	.db	00200$
      0004BE 2B                    1203 	.db	00210$
      0004BF D1                    1204 	.db	00200$
      0004C0 D1                    1205 	.db	00200$
      0004C1 D1                    1206 	.db	00200$
      0004C2                       1207 00448$:
      0004C2 04                    1208 	.db	00191$>>8
      0004C3 04                    1209 	.db	00201$>>8
      0004C4 04                    1210 	.db	00200$>>8
      0004C5 04                    1211 	.db	00200$>>8
      0004C6 04                    1212 	.db	00200$>>8
      0004C7 04                    1213 	.db	00200$>>8
      0004C8 05                    1214 	.db	00210$>>8
      0004C9 04                    1215 	.db	00200$>>8
      0004CA 04                    1216 	.db	00200$>>8
      0004CB 04                    1217 	.db	00200$>>8
                                   1218 ;	Receiver.c:166: case 0:	if(auto_flag)	auto_led=0;
      0004CC                       1219 00191$:
      0004CC 30 00 02         [24] 1220 	jnb	_auto_flag,00200$
                                   1221 ;	assignBit
      0004CF C2 A1            [12] 1222 	clr	_P2_1
                                   1223 ;	Receiver.c:173: case 9:P0_1 =0;P0_0 =0;P2_6=0;up_led=0;down_led=0;break;
      0004D1                       1224 00200$:
                                   1225 ;	assignBit
      0004D1 C2 81            [12] 1226 	clr	_P0_1
                                   1227 ;	assignBit
      0004D3 C2 80            [12] 1228 	clr	_P0_0
                                   1229 ;	assignBit
      0004D5 C2 A6            [12] 1230 	clr	_P2_6
                                   1231 ;	assignBit
      0004D7 C2 A7            [12] 1232 	clr	_P2_7
                                   1233 ;	assignBit
      0004D9 C2 A4            [12] 1234 	clr	_P2_4
      0004DB 02 05 7D         [24] 1235 	ljmp	00230$
                                   1236 ;	Receiver.c:174: case 1:	if(dim1_val)
      0004DE                       1237 00201$:
      0004DE E5 14            [12] 1238 	mov	a,_dim1_val
      0004E0 45 15            [12] 1239 	orl	a,(_dim1_val + 1)
      0004E2 60 16            [24] 1240 	jz	00206$
                                   1241 ;	Receiver.c:175: {dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}
      0004E4 AE 14            [24] 1242 	mov	r6,_dim1_val
      0004E6 AF 15            [24] 1243 	mov	r7,(_dim1_val + 1)
      0004E8 EE               [12] 1244 	mov	a,r6
      0004E9 24 FF            [12] 1245 	add	a,#0xff
      0004EB F5 14            [12] 1246 	mov	_dim1_val,a
      0004ED EF               [12] 1247 	mov	a,r7
      0004EE 34 FF            [12] 1248 	addc	a,#0xff
      0004F0 F5 15            [12] 1249 	mov	(_dim1_val + 1),a
                                   1250 ;	assignBit
      0004F2 D2 81            [12] 1251 	setb	_P0_1
                                   1252 ;	assignBit
      0004F4 C2 80            [12] 1253 	clr	_P0_0
                                   1254 ;	assignBit
      0004F6 C2 A6            [12] 1255 	clr	_P2_6
      0004F8 80 28            [24] 1256 	sjmp	00207$
      0004FA                       1257 00206$:
                                   1258 ;	Receiver.c:177: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      0004FA E5 16            [12] 1259 	mov	a,_dim1_val2
      0004FC 45 17            [12] 1260 	orl	a,(_dim1_val2 + 1)
      0004FE 60 16            [24] 1261 	jz	00203$
      000500 AE 16            [24] 1262 	mov	r6,_dim1_val2
      000502 AF 17            [24] 1263 	mov	r7,(_dim1_val2 + 1)
      000504 EE               [12] 1264 	mov	a,r6
      000505 24 FF            [12] 1265 	add	a,#0xff
      000507 F5 16            [12] 1266 	mov	_dim1_val2,a
      000509 EF               [12] 1267 	mov	a,r7
      00050A 34 FF            [12] 1268 	addc	a,#0xff
      00050C F5 17            [12] 1269 	mov	(_dim1_val2 + 1),a
                                   1270 ;	assignBit
      00050E C2 81            [12] 1271 	clr	_P0_1
                                   1272 ;	assignBit
      000510 C2 80            [12] 1273 	clr	_P0_0
                                   1274 ;	assignBit
      000512 C2 A6            [12] 1275 	clr	_P2_6
      000514 80 0C            [24] 1276 	sjmp	00207$
      000516                       1277 00203$:
                                   1278 ;	Receiver.c:179: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      000516 85 10 14         [24] 1279 	mov	_dim1_val,_dim_val
      000519 85 11 15         [24] 1280 	mov	(_dim1_val + 1),(_dim_val + 1)
      00051C 85 12 16         [24] 1281 	mov	_dim1_val2,_dim_val2
      00051F 85 13 17         [24] 1282 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      000522                       1283 00207$:
                                   1284 ;	Receiver.c:180: if(auto_flag)up_led=1;down_led=0;break;
      000522 30 00 02         [24] 1285 	jnb	_auto_flag,00209$
                                   1286 ;	assignBit
      000525 D2 A7            [12] 1287 	setb	_P2_7
      000527                       1288 00209$:
                                   1289 ;	assignBit
      000527 C2 A4            [12] 1290 	clr	_P2_4
                                   1291 ;	Receiver.c:181: case 6:	if(dim1_val)
      000529 80 52            [24] 1292 	sjmp	00230$
      00052B                       1293 00210$:
      00052B E5 14            [12] 1294 	mov	a,_dim1_val
      00052D 45 15            [12] 1295 	orl	a,(_dim1_val + 1)
      00052F 60 16            [24] 1296 	jz	00215$
                                   1297 ;	Receiver.c:182: {dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}
      000531 AE 14            [24] 1298 	mov	r6,_dim1_val
      000533 AF 15            [24] 1299 	mov	r7,(_dim1_val + 1)
      000535 EE               [12] 1300 	mov	a,r6
      000536 24 FF            [12] 1301 	add	a,#0xff
      000538 F5 14            [12] 1302 	mov	_dim1_val,a
      00053A EF               [12] 1303 	mov	a,r7
      00053B 34 FF            [12] 1304 	addc	a,#0xff
      00053D F5 15            [12] 1305 	mov	(_dim1_val + 1),a
                                   1306 ;	assignBit
      00053F C2 81            [12] 1307 	clr	_P0_1
                                   1308 ;	assignBit
      000541 C2 80            [12] 1309 	clr	_P0_0
                                   1310 ;	assignBit
      000543 D2 A6            [12] 1311 	setb	_P2_6
      000545 80 28            [24] 1312 	sjmp	00216$
      000547                       1313 00215$:
                                   1314 ;	Receiver.c:184: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
      000547 E5 16            [12] 1315 	mov	a,_dim1_val2
      000549 45 17            [12] 1316 	orl	a,(_dim1_val2 + 1)
      00054B 60 16            [24] 1317 	jz	00212$
      00054D AE 16            [24] 1318 	mov	r6,_dim1_val2
      00054F AF 17            [24] 1319 	mov	r7,(_dim1_val2 + 1)
      000551 EE               [12] 1320 	mov	a,r6
      000552 24 FF            [12] 1321 	add	a,#0xff
      000554 F5 16            [12] 1322 	mov	_dim1_val2,a
      000556 EF               [12] 1323 	mov	a,r7
      000557 34 FF            [12] 1324 	addc	a,#0xff
      000559 F5 17            [12] 1325 	mov	(_dim1_val2 + 1),a
                                   1326 ;	assignBit
      00055B C2 81            [12] 1327 	clr	_P0_1
                                   1328 ;	assignBit
      00055D C2 80            [12] 1329 	clr	_P0_0
                                   1330 ;	assignBit
      00055F C2 A6            [12] 1331 	clr	_P2_6
      000561 80 0C            [24] 1332 	sjmp	00216$
      000563                       1333 00212$:
                                   1334 ;	Receiver.c:186: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
      000563 85 10 14         [24] 1335 	mov	_dim1_val,_dim_val
      000566 85 11 15         [24] 1336 	mov	(_dim1_val + 1),(_dim_val + 1)
      000569 85 12 16         [24] 1337 	mov	_dim1_val2,_dim_val2
      00056C 85 13 17         [24] 1338 	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
      00056F                       1339 00216$:
                                   1340 ;	Receiver.c:187: up_led=0;if(auto_flag)down_led=1;break;
                                   1341 ;	assignBit
      00056F C2 A7            [12] 1342 	clr	_P2_7
      000571 30 00 09         [24] 1343 	jnb	_auto_flag,00230$
                                   1344 ;	assignBit
      000574 D2 A4            [12] 1345 	setb	_P2_4
                                   1346 ;	Receiver.c:189: }
      000576 80 05            [24] 1347 	sjmp	00230$
      000578                       1348 00222$:
                                   1349 ;	Receiver.c:193: {timerCount = 0;}
      000578 E4               [12] 1350 	clr	a
      000579 F5 0A            [12] 1351 	mov	_timerCount,a
      00057B F5 0B            [12] 1352 	mov	(_timerCount + 1),a
      00057D                       1353 00230$:
                                   1354 ;	Receiver.c:195: } //timer end
      00057D D0 D0            [24] 1355 	pop	psw
      00057F D0 00            [24] 1356 	pop	(0+0)
      000581 D0 01            [24] 1357 	pop	(0+1)
      000583 D0 02            [24] 1358 	pop	(0+2)
      000585 D0 03            [24] 1359 	pop	(0+3)
      000587 D0 04            [24] 1360 	pop	(0+4)
      000589 D0 05            [24] 1361 	pop	(0+5)
      00058B D0 06            [24] 1362 	pop	(0+6)
      00058D D0 07            [24] 1363 	pop	(0+7)
      00058F D0 83            [24] 1364 	pop	dph
      000591 D0 82            [24] 1365 	pop	dpl
      000593 D0 F0            [24] 1366 	pop	b
      000595 D0 E0            [24] 1367 	pop	acc
      000597 D0 21            [24] 1368 	pop	bits
      000599 32               [24] 1369 	reti
                                   1370 ;------------------------------------------------------------
                                   1371 ;Allocation info for local variables in function 'main'
                                   1372 ;------------------------------------------------------------
                                   1373 ;	Receiver.c:198: void main()
                                   1374 ;	-----------------------------------------
                                   1375 ;	 function main
                                   1376 ;	-----------------------------------------
      00059A                       1377 _main:
                                   1378 ;	Receiver.c:200: state=20;
      00059A 75 18 14         [24] 1379 	mov	_state,#0x14
      00059D 75 19 00         [24] 1380 	mov	(_state + 1),#0x00
                                   1381 ;	Receiver.c:201: pwr_out=0;
                                   1382 ;	assignBit
      0005A0 C2 87            [12] 1383 	clr	_P0_7
                                   1384 ;	Receiver.c:202: InitTimer0();
      0005A2 12 07 6F         [24] 1385 	lcall	_InitTimer0
                                   1386 ;	Receiver.c:203: EA=1;
                                   1387 ;	assignBit
      0005A5 D2 AF            [12] 1388 	setb	_EA
                                   1389 ;	Receiver.c:204: startup();
      0005A7 12 05 BB         [24] 1390 	lcall	_startup
                                   1391 ;	Receiver.c:205: start=1;
      0005AA 75 08 01         [24] 1392 	mov	_start,#0x01
                                   1393 ;	Receiver.c:206: UART_Init();
      0005AD 12 06 43         [24] 1394 	lcall	_UART_Init
                                   1395 ;	Receiver.c:207: handshake();
      0005B0 12 06 58         [24] 1396 	lcall	_handshake
                                   1397 ;	Receiver.c:208: while(1)
      0005B3                       1398 00102$:
                                   1399 ;	Receiver.c:211: check_switches();
      0005B3 12 07 7D         [24] 1400 	lcall	_check_switches
                                   1401 ;	Receiver.c:212: check_data();
      0005B6 12 06 85         [24] 1402 	lcall	_check_data
                                   1403 ;	Receiver.c:214: } //main
      0005B9 80 F8            [24] 1404 	sjmp	00102$
                                   1405 ;------------------------------------------------------------
                                   1406 ;Allocation info for local variables in function 'startup'
                                   1407 ;------------------------------------------------------------
                                   1408 ;	Receiver.c:217: void startup()
                                   1409 ;	-----------------------------------------
                                   1410 ;	 function startup
                                   1411 ;	-----------------------------------------
      0005BB                       1412 _startup:
                                   1413 ;	Receiver.c:219: P0=0x00;
      0005BB 75 80 00         [24] 1414 	mov	_P0,#0x00
                                   1415 ;	Receiver.c:220: P2=0x00;
      0005BE 75 A0 00         [24] 1416 	mov	_P2,#0x00
                                   1417 ;	Receiver.c:222: pwr_key=1;
                                   1418 ;	assignBit
      0005C1 D2 97            [12] 1419 	setb	_P1_7
                                   1420 ;	Receiver.c:223: dim_key=1;
                                   1421 ;	assignBit
      0005C3 D2 94            [12] 1422 	setb	_P1_4
                                   1423 ;	Receiver.c:224: ac_key=1;
                                   1424 ;	assignBit
      0005C5 D2 93            [12] 1425 	setb	_P1_3
                                   1426 ;	Receiver.c:225: auto_key=1;
                                   1427 ;	assignBit
      0005C7 D2 92            [12] 1428 	setb	_P1_2
                                   1429 ;	Receiver.c:227: pwr_out=0;
                                   1430 ;	assignBit
      0005C9 C2 87            [12] 1431 	clr	_P0_7
                                   1432 ;	Receiver.c:228: rst_out=0;
                                   1433 ;	assignBit
      0005CB C2 96            [12] 1434 	clr	_P1_6
                                   1435 ;	Receiver.c:230: pwr_led=0;
                                   1436 ;	assignBit
      0005CD C2 A0            [12] 1437 	clr	_P2_0
                                   1438 ;	Receiver.c:231: auto_led=0;
                                   1439 ;	assignBit
      0005CF C2 A1            [12] 1440 	clr	_P2_1
                                   1441 ;	Receiver.c:232: ac_led_up=0;
                                   1442 ;	assignBit
      0005D1 C2 A2            [12] 1443 	clr	_P2_2
                                   1444 ;	Receiver.c:233: ac_led_down=0;
                                   1445 ;	assignBit
      0005D3 C2 A3            [12] 1446 	clr	_P2_3
                                   1447 ;	Receiver.c:234: up_led=0;
                                   1448 ;	assignBit
      0005D5 C2 A7            [12] 1449 	clr	_P2_7
                                   1450 ;	Receiver.c:235: down_led=0;
                                   1451 ;	assignBit
      0005D7 C2 A4            [12] 1452 	clr	_P2_4
                                   1453 ;	Receiver.c:237: pwr_led=1;
                                   1454 ;	assignBit
      0005D9 D2 A0            [12] 1455 	setb	_P2_0
                                   1456 ;	Receiver.c:238: auto_led=0;
                                   1457 ;	assignBit
      0005DB C2 A1            [12] 1458 	clr	_P2_1
                                   1459 ;	Receiver.c:239: ac_led_up=1;ac_led_down=0;
                                   1460 ;	assignBit
      0005DD D2 A2            [12] 1461 	setb	_P2_2
                                   1462 ;	assignBit
      0005DF C2 A3            [12] 1463 	clr	_P2_3
                                   1464 ;	Receiver.c:240: auto_flag = 0;
                                   1465 ;	assignBit
      0005E1 C2 00            [12] 1466 	clr	_auto_flag
                                   1467 ;	Receiver.c:242: P0_1 =1;P0_0 =1;P2_6=1;
                                   1468 ;	assignBit
      0005E3 D2 81            [12] 1469 	setb	_P0_1
                                   1470 ;	assignBit
      0005E5 D2 80            [12] 1471 	setb	_P0_0
                                   1472 ;	assignBit
      0005E7 D2 A6            [12] 1473 	setb	_P2_6
                                   1474 ;	Receiver.c:243: delay();delay();
      0005E9 12 06 1A         [24] 1475 	lcall	_delay
      0005EC 12 06 1A         [24] 1476 	lcall	_delay
                                   1477 ;	Receiver.c:244: P0_1 =0;P0_0 =0;P2_6=1;
                                   1478 ;	assignBit
      0005EF C2 81            [12] 1479 	clr	_P0_1
                                   1480 ;	assignBit
      0005F1 C2 80            [12] 1481 	clr	_P0_0
                                   1482 ;	assignBit
      0005F3 D2 A6            [12] 1483 	setb	_P2_6
                                   1484 ;	Receiver.c:245: delay();delay();
      0005F5 12 06 1A         [24] 1485 	lcall	_delay
      0005F8 12 06 1A         [24] 1486 	lcall	_delay
                                   1487 ;	Receiver.c:246: P0_1 =0;P0_0 =1;P2_6=0;
                                   1488 ;	assignBit
      0005FB C2 81            [12] 1489 	clr	_P0_1
                                   1490 ;	assignBit
      0005FD D2 80            [12] 1491 	setb	_P0_0
                                   1492 ;	assignBit
      0005FF C2 A6            [12] 1493 	clr	_P2_6
                                   1494 ;	Receiver.c:247: delay();delay();
      000601 12 06 1A         [24] 1495 	lcall	_delay
      000604 12 06 1A         [24] 1496 	lcall	_delay
                                   1497 ;	Receiver.c:248: P0_1 =1;P0_0 =0;P2_6=0;
                                   1498 ;	assignBit
      000607 D2 81            [12] 1499 	setb	_P0_1
                                   1500 ;	assignBit
      000609 C2 80            [12] 1501 	clr	_P0_0
                                   1502 ;	assignBit
      00060B C2 A6            [12] 1503 	clr	_P2_6
                                   1504 ;	Receiver.c:249: delay();delay();
      00060D 12 06 1A         [24] 1505 	lcall	_delay
      000610 12 06 1A         [24] 1506 	lcall	_delay
                                   1507 ;	Receiver.c:250: P0_1 =0;P0_0 =0;P2_6=0;
                                   1508 ;	assignBit
      000613 C2 81            [12] 1509 	clr	_P0_1
                                   1510 ;	assignBit
      000615 C2 80            [12] 1511 	clr	_P0_0
                                   1512 ;	assignBit
      000617 C2 A6            [12] 1513 	clr	_P2_6
                                   1514 ;	Receiver.c:251: }
      000619 22               [24] 1515 	ret
                                   1516 ;------------------------------------------------------------
                                   1517 ;Allocation info for local variables in function 'delay'
                                   1518 ;------------------------------------------------------------
                                   1519 ;i                         Allocated to registers r6 r7 
                                   1520 ;j                         Allocated to registers r4 r5 
                                   1521 ;------------------------------------------------------------
                                   1522 ;	Receiver.c:253: void delay()
                                   1523 ;	-----------------------------------------
                                   1524 ;	 function delay
                                   1525 ;	-----------------------------------------
      00061A                       1526 _delay:
                                   1527 ;	Receiver.c:256: for(i=0;i<0x33;i++)
      00061A 7E 00            [12] 1528 	mov	r6,#0x00
      00061C 7F 00            [12] 1529 	mov	r7,#0x00
      00061E                       1530 00106$:
                                   1531 ;	Receiver.c:257: for(j=0;j<0xff;j++);
      00061E 7C FF            [12] 1532 	mov	r4,#0xff
      000620 7D 00            [12] 1533 	mov	r5,#0x00
      000622                       1534 00105$:
      000622 EC               [12] 1535 	mov	a,r4
      000623 24 FF            [12] 1536 	add	a,#0xff
      000625 FA               [12] 1537 	mov	r2,a
      000626 ED               [12] 1538 	mov	a,r5
      000627 34 FF            [12] 1539 	addc	a,#0xff
      000629 FB               [12] 1540 	mov	r3,a
      00062A 8A 04            [24] 1541 	mov	ar4,r2
      00062C 8B 05            [24] 1542 	mov	ar5,r3
      00062E EA               [12] 1543 	mov	a,r2
      00062F 4B               [12] 1544 	orl	a,r3
      000630 70 F0            [24] 1545 	jnz	00105$
                                   1546 ;	Receiver.c:256: for(i=0;i<0x33;i++)
      000632 0E               [12] 1547 	inc	r6
      000633 BE 00 01         [24] 1548 	cjne	r6,#0x00,00124$
      000636 0F               [12] 1549 	inc	r7
      000637                       1550 00124$:
      000637 C3               [12] 1551 	clr	c
      000638 EE               [12] 1552 	mov	a,r6
      000639 94 33            [12] 1553 	subb	a,#0x33
      00063B EF               [12] 1554 	mov	a,r7
      00063C 64 80            [12] 1555 	xrl	a,#0x80
      00063E 94 80            [12] 1556 	subb	a,#0x80
      000640 40 DC            [24] 1557 	jc	00106$
                                   1558 ;	Receiver.c:258: }
      000642 22               [24] 1559 	ret
                                   1560 ;------------------------------------------------------------
                                   1561 ;Allocation info for local variables in function 'UART_Init'
                                   1562 ;------------------------------------------------------------
                                   1563 ;	Receiver.c:261: void UART_Init()
                                   1564 ;	-----------------------------------------
                                   1565 ;	 function UART_Init
                                   1566 ;	-----------------------------------------
      000643                       1567 _UART_Init:
                                   1568 ;	Receiver.c:263: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      000643 75 89 20         [24] 1569 	mov	_TMOD,#0x20
                                   1570 ;	Receiver.c:264: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      000646 75 8D FD         [24] 1571 	mov	_TH1,#0xfd
                                   1572 ;	Receiver.c:265: SCON = 0x50;		/* Mode 1, reception enable */
      000649 75 98 50         [24] 1573 	mov	_SCON,#0x50
                                   1574 ;	Receiver.c:266: TR1 = 1;		/* Start timer 1 */
                                   1575 ;	assignBit
      00064C D2 8E            [12] 1576 	setb	_TR1
                                   1577 ;	Receiver.c:267: }
      00064E 22               [24] 1578 	ret
                                   1579 ;------------------------------------------------------------
                                   1580 ;Allocation info for local variables in function 'Transmit_data'
                                   1581 ;------------------------------------------------------------
                                   1582 ;tx_data                   Allocated to registers 
                                   1583 ;------------------------------------------------------------
                                   1584 ;	Receiver.c:270: void Transmit_data(char tx_data)
                                   1585 ;	-----------------------------------------
                                   1586 ;	 function Transmit_data
                                   1587 ;	-----------------------------------------
      00064F                       1588 _Transmit_data:
      00064F 85 82 99         [24] 1589 	mov	_SBUF,dpl
                                   1590 ;	Receiver.c:273: while (TI==0);		/* Wait until stop bit transmit */
      000652                       1591 00101$:
                                   1592 ;	Receiver.c:274: TI = 0;			/* Clear TI flag */
                                   1593 ;	assignBit
      000652 10 99 02         [24] 1594 	jbc	_TI,00114$
      000655 80 FB            [24] 1595 	sjmp	00101$
      000657                       1596 00114$:
                                   1597 ;	Receiver.c:275: }
      000657 22               [24] 1598 	ret
                                   1599 ;------------------------------------------------------------
                                   1600 ;Allocation info for local variables in function 'handshake'
                                   1601 ;------------------------------------------------------------
                                   1602 ;	Receiver.c:278: void handshake()
                                   1603 ;	-----------------------------------------
                                   1604 ;	 function handshake
                                   1605 ;	-----------------------------------------
      000658                       1606 _handshake:
                                   1607 ;	Receiver.c:280: while(data_r!='y')
      000658                       1608 00101$:
      000658 74 79            [12] 1609 	mov	a,#0x79
      00065A B5 09 02         [24] 1610 	cjne	a,_data_r,00114$
      00065D 80 1D            [24] 1611 	sjmp	00103$
      00065F                       1612 00114$:
                                   1613 ;	Receiver.c:282: state=20;
      00065F 75 18 14         [24] 1614 	mov	_state,#0x14
      000662 75 19 00         [24] 1615 	mov	(_state + 1),#0x00
                                   1616 ;	Receiver.c:283: delay();
      000665 12 06 1A         [24] 1617 	lcall	_delay
                                   1618 ;	Receiver.c:284: delay();
      000668 12 06 1A         [24] 1619 	lcall	_delay
                                   1620 ;	Receiver.c:285: delay();
      00066B 12 06 1A         [24] 1621 	lcall	_delay
                                   1622 ;	Receiver.c:286: Transmit_data('x');
      00066E 75 82 78         [24] 1623 	mov	dpl,#0x78
      000671 12 06 4F         [24] 1624 	lcall	_Transmit_data
                                   1625 ;	Receiver.c:287: delay();
      000674 12 06 1A         [24] 1626 	lcall	_delay
                                   1627 ;	Receiver.c:288: data_r=SBUF;
      000677 85 99 09         [24] 1628 	mov	_data_r,_SBUF
      00067A 80 DC            [24] 1629 	sjmp	00101$
      00067C                       1630 00103$:
                                   1631 ;	Receiver.c:290: delay();
      00067C 12 06 1A         [24] 1632 	lcall	_delay
                                   1633 ;	Receiver.c:291: Transmit_data('m');
      00067F 75 82 6D         [24] 1634 	mov	dpl,#0x6d
                                   1635 ;	Receiver.c:292: }
      000682 02 06 4F         [24] 1636 	ljmp	_Transmit_data
                                   1637 ;------------------------------------------------------------
                                   1638 ;Allocation info for local variables in function 'check_data'
                                   1639 ;------------------------------------------------------------
                                   1640 ;	Receiver.c:294: void check_data()
                                   1641 ;	-----------------------------------------
                                   1642 ;	 function check_data
                                   1643 ;	-----------------------------------------
      000685                       1644 _check_data:
                                   1645 ;	Receiver.c:297: data_r = SBUF;		/* Load char in SBUF register */
      000685 85 99 09         [24] 1646 	mov	_data_r,_SBUF
                                   1647 ;	Receiver.c:298: RI = 0;			/* Clear TI flag */
                                   1648 ;	assignBit
      000688 C2 98            [12] 1649 	clr	_RI
                                   1650 ;	Receiver.c:299: if(data_r=='l')
      00068A 74 6C            [12] 1651 	mov	a,#0x6c
      00068C B5 09 0D         [24] 1652 	cjne	a,_data_r,00146$
                                   1653 ;	Receiver.c:301: time_delay=30;
      00068F 75 0E 1E         [24] 1654 	mov	_time_delay,#0x1e
                                   1655 ;	Receiver.c:302: state = 0;
      000692 E4               [12] 1656 	clr	a
      000693 F5 0F            [12] 1657 	mov	(_time_delay + 1),a
      000695 F5 18            [12] 1658 	mov	_state,a
      000697 F5 19            [12] 1659 	mov	(_state + 1),a
                                   1660 ;	Receiver.c:303: auto_led=0;
                                   1661 ;	assignBit
      000699 C2 A1            [12] 1662 	clr	_P2_1
      00069B 22               [24] 1663 	ret
      00069C                       1664 00146$:
                                   1665 ;	Receiver.c:305: else if(data_r=='a')
      00069C 74 61            [12] 1666 	mov	a,#0x61
      00069E B5 09 13         [24] 1667 	cjne	a,_data_r,00143$
                                   1668 ;	Receiver.c:307: time_delay=20;
      0006A1 75 0E 14         [24] 1669 	mov	_time_delay,#0x14
      0006A4 75 0F 00         [24] 1670 	mov	(_time_delay + 1),#0x00
                                   1671 ;	Receiver.c:308: state = 1;
      0006A7 75 18 01         [24] 1672 	mov	_state,#0x01
      0006AA 75 19 00         [24] 1673 	mov	(_state + 1),#0x00
                                   1674 ;	Receiver.c:309: if(auto_flag)	auto_led=1;
      0006AD 20 00 01         [24] 1675 	jb	_auto_flag,00230$
      0006B0 22               [24] 1676 	ret
      0006B1                       1677 00230$:
                                   1678 ;	assignBit
      0006B1 D2 A1            [12] 1679 	setb	_P2_1
      0006B3 22               [24] 1680 	ret
      0006B4                       1681 00143$:
                                   1682 ;	Receiver.c:311: else if(data_r=='b')
      0006B4 74 62            [12] 1683 	mov	a,#0x62
      0006B6 B5 09 13         [24] 1684 	cjne	a,_data_r,00140$
                                   1685 ;	Receiver.c:313: time_delay=10;
      0006B9 75 0E 0A         [24] 1686 	mov	_time_delay,#0x0a
      0006BC 75 0F 00         [24] 1687 	mov	(_time_delay + 1),#0x00
                                   1688 ;	Receiver.c:314: state = 2;
      0006BF 75 18 02         [24] 1689 	mov	_state,#0x02
      0006C2 75 19 00         [24] 1690 	mov	(_state + 1),#0x00
                                   1691 ;	Receiver.c:315: if(auto_flag)	auto_led=1;
      0006C5 20 00 01         [24] 1692 	jb	_auto_flag,00233$
      0006C8 22               [24] 1693 	ret
      0006C9                       1694 00233$:
                                   1695 ;	assignBit
      0006C9 D2 A1            [12] 1696 	setb	_P2_1
      0006CB 22               [24] 1697 	ret
      0006CC                       1698 00140$:
                                   1699 ;	Receiver.c:317: else if(data_r=='c')
      0006CC 74 63            [12] 1700 	mov	a,#0x63
      0006CE B5 09 13         [24] 1701 	cjne	a,_data_r,00137$
                                   1702 ;	Receiver.c:319: time_delay=7;
      0006D1 75 0E 07         [24] 1703 	mov	_time_delay,#0x07
      0006D4 75 0F 00         [24] 1704 	mov	(_time_delay + 1),#0x00
                                   1705 ;	Receiver.c:320: state = 3;
      0006D7 75 18 03         [24] 1706 	mov	_state,#0x03
      0006DA 75 19 00         [24] 1707 	mov	(_state + 1),#0x00
                                   1708 ;	Receiver.c:321: if(auto_flag)	auto_led=1;
      0006DD 20 00 01         [24] 1709 	jb	_auto_flag,00236$
      0006E0 22               [24] 1710 	ret
      0006E1                       1711 00236$:
                                   1712 ;	assignBit
      0006E1 D2 A1            [12] 1713 	setb	_P2_1
      0006E3 22               [24] 1714 	ret
      0006E4                       1715 00137$:
                                   1716 ;	Receiver.c:323: else if(data_r=='d')
      0006E4 74 64            [12] 1717 	mov	a,#0x64
      0006E6 B5 09 13         [24] 1718 	cjne	a,_data_r,00134$
                                   1719 ;	Receiver.c:325: time_delay=7;
      0006E9 75 0E 07         [24] 1720 	mov	_time_delay,#0x07
      0006EC 75 0F 00         [24] 1721 	mov	(_time_delay + 1),#0x00
                                   1722 ;	Receiver.c:326: state = 7;
      0006EF 75 18 07         [24] 1723 	mov	_state,#0x07
      0006F2 75 19 00         [24] 1724 	mov	(_state + 1),#0x00
                                   1725 ;	Receiver.c:327: if(auto_flag)	auto_led=1;
      0006F5 20 00 01         [24] 1726 	jb	_auto_flag,00239$
      0006F8 22               [24] 1727 	ret
      0006F9                       1728 00239$:
                                   1729 ;	assignBit
      0006F9 D2 A1            [12] 1730 	setb	_P2_1
      0006FB 22               [24] 1731 	ret
      0006FC                       1732 00134$:
                                   1733 ;	Receiver.c:329: else if(data_r=='e')
      0006FC 74 65            [12] 1734 	mov	a,#0x65
      0006FE B5 09 12         [24] 1735 	cjne	a,_data_r,00131$
                                   1736 ;	Receiver.c:331: time_delay=7;
      000701 75 0E 07         [24] 1737 	mov	_time_delay,#0x07
      000704 75 0F 00         [24] 1738 	mov	(_time_delay + 1),#0x00
                                   1739 ;	Receiver.c:332: state = 4;
      000707 75 18 04         [24] 1740 	mov	_state,#0x04
      00070A 75 19 00         [24] 1741 	mov	(_state + 1),#0x00
                                   1742 ;	Receiver.c:333: if(auto_flag)	auto_led=1;
      00070D 30 00 5E         [24] 1743 	jnb	_auto_flag,00148$
                                   1744 ;	assignBit
      000710 D2 A1            [12] 1745 	setb	_P2_1
      000712 22               [24] 1746 	ret
      000713                       1747 00131$:
                                   1748 ;	Receiver.c:335: else if(data_r=='f')
      000713 74 66            [12] 1749 	mov	a,#0x66
      000715 B5 09 12         [24] 1750 	cjne	a,_data_r,00128$
                                   1751 ;	Receiver.c:337: time_delay=10;
      000718 75 0E 0A         [24] 1752 	mov	_time_delay,#0x0a
      00071B 75 0F 00         [24] 1753 	mov	(_time_delay + 1),#0x00
                                   1754 ;	Receiver.c:338: state = 5;
      00071E 75 18 05         [24] 1755 	mov	_state,#0x05
      000721 75 19 00         [24] 1756 	mov	(_state + 1),#0x00
                                   1757 ;	Receiver.c:339: if(auto_flag)	auto_led=1;
      000724 30 00 47         [24] 1758 	jnb	_auto_flag,00148$
                                   1759 ;	assignBit
      000727 D2 A1            [12] 1760 	setb	_P2_1
      000729 22               [24] 1761 	ret
      00072A                       1762 00128$:
                                   1763 ;	Receiver.c:341: else if(data_r=='g')
      00072A 74 67            [12] 1764 	mov	a,#0x67
      00072C B5 09 12         [24] 1765 	cjne	a,_data_r,00125$
                                   1766 ;	Receiver.c:343: time_delay=20;
      00072F 75 0E 14         [24] 1767 	mov	_time_delay,#0x14
      000732 75 0F 00         [24] 1768 	mov	(_time_delay + 1),#0x00
                                   1769 ;	Receiver.c:344: state = 6;
      000735 75 18 06         [24] 1770 	mov	_state,#0x06
      000738 75 19 00         [24] 1771 	mov	(_state + 1),#0x00
                                   1772 ;	Receiver.c:345: if(auto_flag)	auto_led=1;
      00073B 30 00 30         [24] 1773 	jnb	_auto_flag,00148$
                                   1774 ;	assignBit
      00073E D2 A1            [12] 1775 	setb	_P2_1
      000740 22               [24] 1776 	ret
      000741                       1777 00125$:
                                   1778 ;	Receiver.c:347: else if(data_r=='u')
      000741 74 75            [12] 1779 	mov	a,#0x75
      000743 B5 09 12         [24] 1780 	cjne	a,_data_r,00122$
                                   1781 ;	Receiver.c:349: time_delay=15;
      000746 75 0E 0F         [24] 1782 	mov	_time_delay,#0x0f
      000749 75 0F 00         [24] 1783 	mov	(_time_delay + 1),#0x00
                                   1784 ;	Receiver.c:350: state = 9;
      00074C 75 18 09         [24] 1785 	mov	_state,#0x09
      00074F 75 19 00         [24] 1786 	mov	(_state + 1),#0x00
                                   1787 ;	Receiver.c:351: if(auto_flag)	auto_led=1;
      000752 30 00 19         [24] 1788 	jnb	_auto_flag,00148$
                                   1789 ;	assignBit
      000755 D2 A1            [12] 1790 	setb	_P2_1
      000757 22               [24] 1791 	ret
      000758                       1792 00122$:
                                   1793 ;	Receiver.c:353: else if(data_r=='n')
      000758 74 6E            [12] 1794 	mov	a,#0x6e
      00075A B5 09 11         [24] 1795 	cjne	a,_data_r,00148$
                                   1796 ;	Receiver.c:355: time_delay=15;
      00075D 75 0E 0F         [24] 1797 	mov	_time_delay,#0x0f
      000760 75 0F 00         [24] 1798 	mov	(_time_delay + 1),#0x00
                                   1799 ;	Receiver.c:356: state = 8;
      000763 75 18 08         [24] 1800 	mov	_state,#0x08
      000766 75 19 00         [24] 1801 	mov	(_state + 1),#0x00
                                   1802 ;	Receiver.c:357: if(auto_flag)	auto_led=1;
      000769 30 00 02         [24] 1803 	jnb	_auto_flag,00148$
                                   1804 ;	assignBit
      00076C D2 A1            [12] 1805 	setb	_P2_1
      00076E                       1806 00148$:
                                   1807 ;	Receiver.c:372: }
      00076E 22               [24] 1808 	ret
                                   1809 ;------------------------------------------------------------
                                   1810 ;Allocation info for local variables in function 'InitTimer0'
                                   1811 ;------------------------------------------------------------
                                   1812 ;	Receiver.c:374: void InitTimer0(void)
                                   1813 ;	-----------------------------------------
                                   1814 ;	 function InitTimer0
                                   1815 ;	-----------------------------------------
      00076F                       1816 _InitTimer0:
                                   1817 ;	Receiver.c:376: TMOD |= 0x01;    // Set timer0 in mode 1
      00076F 43 89 01         [24] 1818 	orl	_TMOD,#0x01
                                   1819 ;	Receiver.c:377: TH0 = 0xee;      // 5 msec reloading time
      000772 75 8C EE         [24] 1820 	mov	_TH0,#0xee
                                   1821 ;	Receiver.c:378: TL0 = 0x00;      // First time value
      000775 75 8A 00         [24] 1822 	mov	_TL0,#0x00
                                   1823 ;	Receiver.c:379: TR0 = 1;         // Start Timer 1
                                   1824 ;	assignBit
      000778 D2 8C            [12] 1825 	setb	_TR0
                                   1826 ;	Receiver.c:380: ET0 = 1;         // Enable Timer1 interrupts	
                                   1827 ;	assignBit
      00077A D2 A9            [12] 1828 	setb	_ET0
                                   1829 ;	Receiver.c:381: }
      00077C 22               [24] 1830 	ret
                                   1831 ;------------------------------------------------------------
                                   1832 ;Allocation info for local variables in function 'check_switches'
                                   1833 ;------------------------------------------------------------
                                   1834 ;	Receiver.c:383: void check_switches()
                                   1835 ;	-----------------------------------------
                                   1836 ;	 function check_switches
                                   1837 ;	-----------------------------------------
      00077D                       1838 _check_switches:
                                   1839 ;	Receiver.c:385: if(!ac_key)
      00077D 20 93 4F         [24] 1840 	jb	_P1_3,00111$
                                   1841 ;	Receiver.c:387: delay();
      000780 12 06 1A         [24] 1842 	lcall	_delay
                                   1843 ;	Receiver.c:388: if(!ac_key)
      000783 20 93 49         [24] 1844 	jb	_P1_3,00111$
                                   1845 ;	Receiver.c:390: ac_state++;		
      000786 05 1C            [12] 1846 	inc	_ac_state
                                   1847 ;	Receiver.c:391: if(ac_state==3)
      000788 74 03            [12] 1848 	mov	a,#0x03
      00078A B5 1C 03         [24] 1849 	cjne	a,_ac_state,00102$
                                   1850 ;	Receiver.c:392: ac_state=0;
      00078D 75 1C 00         [24] 1851 	mov	_ac_state,#0x00
      000790                       1852 00102$:
                                   1853 ;	Receiver.c:393: switch(ac_state)
      000790 E4               [12] 1854 	clr	a
      000791 B5 1C 02         [24] 1855 	cjne	a,_ac_state,00171$
      000794 80 0E            [24] 1856 	sjmp	00103$
      000796                       1857 00171$:
      000796 74 01            [12] 1858 	mov	a,#0x01
      000798 B5 1C 02         [24] 1859 	cjne	a,_ac_state,00172$
      00079B 80 16            [24] 1860 	sjmp	00104$
      00079D                       1861 00172$:
      00079D 74 02            [12] 1862 	mov	a,#0x02
                                   1863 ;	Receiver.c:395: case 0:Transmit_data('l');ac_led_up=1;ac_led_down=1;delay();break;
      00079F B5 1C 2D         [24] 1864 	cjne	a,_ac_state,00111$
      0007A2 80 1E            [24] 1865 	sjmp	00105$
      0007A4                       1866 00103$:
      0007A4 75 82 6C         [24] 1867 	mov	dpl,#0x6c
      0007A7 12 06 4F         [24] 1868 	lcall	_Transmit_data
                                   1869 ;	assignBit
      0007AA D2 A2            [12] 1870 	setb	_P2_2
                                   1871 ;	assignBit
      0007AC D2 A3            [12] 1872 	setb	_P2_3
      0007AE 12 06 1A         [24] 1873 	lcall	_delay
                                   1874 ;	Receiver.c:396: case 1:Transmit_data('m');ac_led_up=1;ac_led_down=0;delay();break;
      0007B1 80 1C            [24] 1875 	sjmp	00111$
      0007B3                       1876 00104$:
      0007B3 75 82 6D         [24] 1877 	mov	dpl,#0x6d
      0007B6 12 06 4F         [24] 1878 	lcall	_Transmit_data
                                   1879 ;	assignBit
      0007B9 D2 A2            [12] 1880 	setb	_P2_2
                                   1881 ;	assignBit
      0007BB C2 A3            [12] 1882 	clr	_P2_3
      0007BD 12 06 1A         [24] 1883 	lcall	_delay
                                   1884 ;	Receiver.c:397: case 2:Transmit_data('h');ac_led_up=0;ac_led_down=1;delay();break;
      0007C0 80 0D            [24] 1885 	sjmp	00111$
      0007C2                       1886 00105$:
      0007C2 75 82 68         [24] 1887 	mov	dpl,#0x68
      0007C5 12 06 4F         [24] 1888 	lcall	_Transmit_data
                                   1889 ;	assignBit
      0007C8 C2 A2            [12] 1890 	clr	_P2_2
                                   1891 ;	assignBit
      0007CA D2 A3            [12] 1892 	setb	_P2_3
      0007CC 12 06 1A         [24] 1893 	lcall	_delay
                                   1894 ;	Receiver.c:399: }//switch end
      0007CF                       1895 00111$:
                                   1896 ;	Receiver.c:402: if(!dim_key)
      0007CF 20 94 37         [24] 1897 	jb	_P1_4,00115$
                                   1898 ;	Receiver.c:404: delay();
      0007D2 12 06 1A         [24] 1899 	lcall	_delay
                                   1900 ;	Receiver.c:406: dim_val = dim_val + 2;
      0007D5 74 02            [12] 1901 	mov	a,#0x02
      0007D7 25 10            [12] 1902 	add	a,_dim_val
      0007D9 F5 10            [12] 1903 	mov	_dim_val,a
      0007DB E4               [12] 1904 	clr	a
      0007DC 35 11            [12] 1905 	addc	a,(_dim_val + 1)
      0007DE F5 11            [12] 1906 	mov	(_dim_val + 1),a
                                   1907 ;	Receiver.c:407: dim_val2=8-dim_val;
      0007E0 74 08            [12] 1908 	mov	a,#0x08
      0007E2 C3               [12] 1909 	clr	c
      0007E3 95 10            [12] 1910 	subb	a,_dim_val
      0007E5 F5 12            [12] 1911 	mov	_dim_val2,a
      0007E7 E4               [12] 1912 	clr	a
      0007E8 95 11            [12] 1913 	subb	a,(_dim_val + 1)
      0007EA F5 13            [12] 1914 	mov	(_dim_val2 + 1),a
                                   1915 ;	Receiver.c:408: if(dim_val>8){dim_val=2;dim_val2=6;}
      0007EC C3               [12] 1916 	clr	c
      0007ED 74 08            [12] 1917 	mov	a,#0x08
      0007EF 95 10            [12] 1918 	subb	a,_dim_val
      0007F1 74 80            [12] 1919 	mov	a,#(0x00 ^ 0x80)
      0007F3 85 11 F0         [24] 1920 	mov	b,(_dim_val + 1)
      0007F6 63 F0 80         [24] 1921 	xrl	b,#0x80
      0007F9 95 F0            [12] 1922 	subb	a,b
      0007FB 50 0C            [24] 1923 	jnc	00115$
      0007FD 75 10 02         [24] 1924 	mov	_dim_val,#0x02
      000800 75 11 00         [24] 1925 	mov	(_dim_val + 1),#0x00
      000803 75 12 06         [24] 1926 	mov	_dim_val2,#0x06
      000806 75 13 00         [24] 1927 	mov	(_dim_val2 + 1),#0x00
      000809                       1928 00115$:
                                   1929 ;	Receiver.c:412: if(!auto_key)
      000809 20 92 05         [24] 1930 	jb	_P1_2,00117$
                                   1931 ;	Receiver.c:414: delay();
      00080C 12 06 1A         [24] 1932 	lcall	_delay
                                   1933 ;	Receiver.c:415: auto_flag=!auto_flag;
      00080F B2 00            [12] 1934 	cpl	_auto_flag
      000811                       1935 00117$:
                                   1936 ;	Receiver.c:418: if(!pwr_key)
      000811 20 97 1F         [24] 1937 	jb	_P1_7,00121$
                                   1938 ;	Receiver.c:420: delay();
      000814 12 06 1A         [24] 1939 	lcall	_delay
                                   1940 ;	Receiver.c:421: pwr_led=0;P0_1 =0;P0_0 =0;P2_6=0;ac_led_up=0;ac_led_down=0;auto_led=0;
                                   1941 ;	assignBit
      000817 C2 A0            [12] 1942 	clr	_P2_0
                                   1943 ;	assignBit
      000819 C2 81            [12] 1944 	clr	_P0_1
                                   1945 ;	assignBit
      00081B C2 80            [12] 1946 	clr	_P0_0
                                   1947 ;	assignBit
      00081D C2 A6            [12] 1948 	clr	_P2_6
                                   1949 ;	assignBit
      00081F C2 A2            [12] 1950 	clr	_P2_2
                                   1951 ;	assignBit
      000821 C2 A3            [12] 1952 	clr	_P2_3
                                   1953 ;	assignBit
      000823 C2 A1            [12] 1954 	clr	_P2_1
                                   1955 ;	Receiver.c:422: TR0 = 0;         // Stop Timer 1
                                   1956 ;	assignBit
      000825 C2 8C            [12] 1957 	clr	_TR0
                                   1958 ;	Receiver.c:423: ET0 = 0;         // Enable Timer1 interrupts	
                                   1959 ;	assignBit
      000827 C2 A9            [12] 1960 	clr	_ET0
                                   1961 ;	Receiver.c:424: delay();delay();
      000829 12 06 1A         [24] 1962 	lcall	_delay
      00082C 12 06 1A         [24] 1963 	lcall	_delay
                                   1964 ;	Receiver.c:425: pwr_out=1;
                                   1965 ;	assignBit
      00082F D2 87            [12] 1966 	setb	_P0_7
                                   1967 ;	Receiver.c:426: shutdown:
      000831                       1968 00118$:
                                   1969 ;	Receiver.c:427: goto shutdown;
      000831 80 FE            [24] 1970 	sjmp	00118$
      000833                       1971 00121$:
                                   1972 ;	Receiver.c:429: }
      000833 22               [24] 1973 	ret
                                   1974 	.area CSEG    (CODE)
                                   1975 	.area CONST   (CODE)
                                   1976 	.area XINIT   (CODE)
                                   1977 	.area CABS    (ABS,CODE)
