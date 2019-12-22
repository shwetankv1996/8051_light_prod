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
                                     12 	.globl _TF2
                                     13 	.globl _EXF2
                                     14 	.globl _RCLK
                                     15 	.globl _TCLK
                                     16 	.globl _EXEN2
                                     17 	.globl _TR2
                                     18 	.globl _C_T2
                                     19 	.globl _CP_RL2
                                     20 	.globl _T2CON_7
                                     21 	.globl _T2CON_6
                                     22 	.globl _T2CON_5
                                     23 	.globl _T2CON_4
                                     24 	.globl _T2CON_3
                                     25 	.globl _T2CON_2
                                     26 	.globl _T2CON_1
                                     27 	.globl _T2CON_0
                                     28 	.globl _PT2
                                     29 	.globl _ET2
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _PS
                                     39 	.globl _PT1
                                     40 	.globl _PX1
                                     41 	.globl _PT0
                                     42 	.globl _PX0
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _EA
                                     60 	.globl _ES
                                     61 	.globl _ET1
                                     62 	.globl _EX1
                                     63 	.globl _ET0
                                     64 	.globl _EX0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _SM0
                                     74 	.globl _SM1
                                     75 	.globl _SM2
                                     76 	.globl _REN
                                     77 	.globl _TB8
                                     78 	.globl _RB8
                                     79 	.globl _TI
                                     80 	.globl _RI
                                     81 	.globl _P1_7
                                     82 	.globl _P1_6
                                     83 	.globl _P1_5
                                     84 	.globl _P1_4
                                     85 	.globl _P1_3
                                     86 	.globl _P1_2
                                     87 	.globl _P1_1
                                     88 	.globl _P1_0
                                     89 	.globl _TF1
                                     90 	.globl _TR1
                                     91 	.globl _TF0
                                     92 	.globl _TR0
                                     93 	.globl _IE1
                                     94 	.globl _IT1
                                     95 	.globl _IE0
                                     96 	.globl _IT0
                                     97 	.globl _P0_7
                                     98 	.globl _P0_6
                                     99 	.globl _P0_5
                                    100 	.globl _P0_4
                                    101 	.globl _P0_3
                                    102 	.globl _P0_2
                                    103 	.globl _P0_1
                                    104 	.globl _P0_0
                                    105 	.globl _TH2
                                    106 	.globl _TL2
                                    107 	.globl _RCAP2H
                                    108 	.globl _RCAP2L
                                    109 	.globl _T2CON
                                    110 	.globl _B
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _IP
                                    114 	.globl _P3
                                    115 	.globl _IE
                                    116 	.globl _P2
                                    117 	.globl _SBUF
                                    118 	.globl _SCON
                                    119 	.globl _P1
                                    120 	.globl _TH1
                                    121 	.globl _TH0
                                    122 	.globl _TL1
                                    123 	.globl _TL0
                                    124 	.globl _TMOD
                                    125 	.globl _TCON
                                    126 	.globl _PCON
                                    127 	.globl _DPH
                                    128 	.globl _DPL
                                    129 	.globl _SP
                                    130 	.globl _P0
                                    131 	.globl _data_r
                                    132 	.globl _state
                                    133 	.globl _delay
                                    134 	.globl _UART_Init
                                    135 	.globl _Transmit_data
                                    136 	.globl _receive_data
                                    137 	.globl _check_x
                                    138 	.globl _startup
                                    139 	.globl _touch
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000D0   163 _PSW	=	0x00d0
                           0000E0   164 _ACC	=	0x00e0
                           0000F0   165 _B	=	0x00f0
                           0000C8   166 _T2CON	=	0x00c8
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                                    171 ;--------------------------------------------------------
                                    172 ; special function bits
                                    173 ;--------------------------------------------------------
                                    174 	.area RSEG    (ABS,DATA)
      000000                        175 	.org 0x0000
                           000080   176 _P0_0	=	0x0080
                           000081   177 _P0_1	=	0x0081
                           000082   178 _P0_2	=	0x0082
                           000083   179 _P0_3	=	0x0083
                           000084   180 _P0_4	=	0x0084
                           000085   181 _P0_5	=	0x0085
                           000086   182 _P0_6	=	0x0086
                           000087   183 _P0_7	=	0x0087
                           000088   184 _IT0	=	0x0088
                           000089   185 _IE0	=	0x0089
                           00008A   186 _IT1	=	0x008a
                           00008B   187 _IE1	=	0x008b
                           00008C   188 _TR0	=	0x008c
                           00008D   189 _TF0	=	0x008d
                           00008E   190 _TR1	=	0x008e
                           00008F   191 _TF1	=	0x008f
                           000090   192 _P1_0	=	0x0090
                           000091   193 _P1_1	=	0x0091
                           000092   194 _P1_2	=	0x0092
                           000093   195 _P1_3	=	0x0093
                           000094   196 _P1_4	=	0x0094
                           000095   197 _P1_5	=	0x0095
                           000096   198 _P1_6	=	0x0096
                           000097   199 _P1_7	=	0x0097
                           000098   200 _RI	=	0x0098
                           000099   201 _TI	=	0x0099
                           00009A   202 _RB8	=	0x009a
                           00009B   203 _TB8	=	0x009b
                           00009C   204 _REN	=	0x009c
                           00009D   205 _SM2	=	0x009d
                           00009E   206 _SM1	=	0x009e
                           00009F   207 _SM0	=	0x009f
                           0000A0   208 _P2_0	=	0x00a0
                           0000A1   209 _P2_1	=	0x00a1
                           0000A2   210 _P2_2	=	0x00a2
                           0000A3   211 _P2_3	=	0x00a3
                           0000A4   212 _P2_4	=	0x00a4
                           0000A5   213 _P2_5	=	0x00a5
                           0000A6   214 _P2_6	=	0x00a6
                           0000A7   215 _P2_7	=	0x00a7
                           0000A8   216 _EX0	=	0x00a8
                           0000A9   217 _ET0	=	0x00a9
                           0000AA   218 _EX1	=	0x00aa
                           0000AB   219 _ET1	=	0x00ab
                           0000AC   220 _ES	=	0x00ac
                           0000AF   221 _EA	=	0x00af
                           0000B0   222 _P3_0	=	0x00b0
                           0000B1   223 _P3_1	=	0x00b1
                           0000B2   224 _P3_2	=	0x00b2
                           0000B3   225 _P3_3	=	0x00b3
                           0000B4   226 _P3_4	=	0x00b4
                           0000B5   227 _P3_5	=	0x00b5
                           0000B6   228 _P3_6	=	0x00b6
                           0000B7   229 _P3_7	=	0x00b7
                           0000B0   230 _RXD	=	0x00b0
                           0000B1   231 _TXD	=	0x00b1
                           0000B2   232 _INT0	=	0x00b2
                           0000B3   233 _INT1	=	0x00b3
                           0000B4   234 _T0	=	0x00b4
                           0000B5   235 _T1	=	0x00b5
                           0000B6   236 _WR	=	0x00b6
                           0000B7   237 _RD	=	0x00b7
                           0000B8   238 _PX0	=	0x00b8
                           0000B9   239 _PT0	=	0x00b9
                           0000BA   240 _PX1	=	0x00ba
                           0000BB   241 _PT1	=	0x00bb
                           0000BC   242 _PS	=	0x00bc
                           0000D0   243 _P	=	0x00d0
                           0000D1   244 _F1	=	0x00d1
                           0000D2   245 _OV	=	0x00d2
                           0000D3   246 _RS0	=	0x00d3
                           0000D4   247 _RS1	=	0x00d4
                           0000D5   248 _F0	=	0x00d5
                           0000D6   249 _AC	=	0x00d6
                           0000D7   250 _CY	=	0x00d7
                           0000AD   251 _ET2	=	0x00ad
                           0000BD   252 _PT2	=	0x00bd
                           0000C8   253 _T2CON_0	=	0x00c8
                           0000C9   254 _T2CON_1	=	0x00c9
                           0000CA   255 _T2CON_2	=	0x00ca
                           0000CB   256 _T2CON_3	=	0x00cb
                           0000CC   257 _T2CON_4	=	0x00cc
                           0000CD   258 _T2CON_5	=	0x00cd
                           0000CE   259 _T2CON_6	=	0x00ce
                           0000CF   260 _T2CON_7	=	0x00cf
                           0000C8   261 _CP_RL2	=	0x00c8
                           0000C9   262 _C_T2	=	0x00c9
                           0000CA   263 _TR2	=	0x00ca
                           0000CB   264 _EXEN2	=	0x00cb
                           0000CC   265 _TCLK	=	0x00cc
                           0000CD   266 _RCLK	=	0x00cd
                           0000CE   267 _EXF2	=	0x00ce
                           0000CF   268 _TF2	=	0x00cf
                                    269 ;--------------------------------------------------------
                                    270 ; overlayable register banks
                                    271 ;--------------------------------------------------------
                                    272 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        273 	.ds 8
                                    274 ;--------------------------------------------------------
                                    275 ; internal ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area DSEG    (DATA)
      000008                        278 _state::
      000008                        279 	.ds 2
      00000A                        280 _data_r::
      00000A                        281 	.ds 1
                                    282 ;--------------------------------------------------------
                                    283 ; overlayable items in internal ram 
                                    284 ;--------------------------------------------------------
                                    285 	.area	OSEG    (OVR,DATA)
                                    286 	.area	OSEG    (OVR,DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; Stack segment in internal ram 
                                    289 ;--------------------------------------------------------
                                    290 	.area	SSEG
      00000B                        291 __start__stack:
      00000B                        292 	.ds	1
                                    293 
                                    294 ;--------------------------------------------------------
                                    295 ; indirectly addressable internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area ISEG    (DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; absolute internal ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area IABS    (ABS,DATA)
                                    302 	.area IABS    (ABS,DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; bit data
                                    305 ;--------------------------------------------------------
                                    306 	.area BSEG    (BIT)
                                    307 ;--------------------------------------------------------
                                    308 ; paged external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area PSEG    (PAG,XDATA)
                                    311 ;--------------------------------------------------------
                                    312 ; external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XSEG    (XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; absolute external ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XABS    (ABS,XDATA)
                                    319 ;--------------------------------------------------------
                                    320 ; external initialized ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area XISEG   (XDATA)
                                    323 	.area HOME    (CODE)
                                    324 	.area GSINIT0 (CODE)
                                    325 	.area GSINIT1 (CODE)
                                    326 	.area GSINIT2 (CODE)
                                    327 	.area GSINIT3 (CODE)
                                    328 	.area GSINIT4 (CODE)
                                    329 	.area GSINIT5 (CODE)
                                    330 	.area GSINIT  (CODE)
                                    331 	.area GSFINAL (CODE)
                                    332 	.area CSEG    (CODE)
                                    333 ;--------------------------------------------------------
                                    334 ; interrupt vector 
                                    335 ;--------------------------------------------------------
                                    336 	.area HOME    (CODE)
      000000                        337 __interrupt_vect:
      000000 02 00 06         [24]  338 	ljmp	__sdcc_gsinit_startup
                                    339 ;--------------------------------------------------------
                                    340 ; global & static initialisations
                                    341 ;--------------------------------------------------------
                                    342 	.area HOME    (CODE)
                                    343 	.area GSINIT  (CODE)
                                    344 	.area GSFINAL (CODE)
                                    345 	.area GSINIT  (CODE)
                                    346 	.globl __sdcc_gsinit_startup
                                    347 	.globl __sdcc_program_startup
                                    348 	.globl __start__stack
                                    349 	.globl __mcs51_genXINIT
                                    350 	.globl __mcs51_genXRAMCLEAR
                                    351 	.globl __mcs51_genRAMCLEAR
                                    352 ;	transmitter.c:3: int state = 0;
      00005F E4               [12]  353 	clr	a
      000060 F5 08            [12]  354 	mov	_state,a
      000062 F5 09            [12]  355 	mov	(_state + 1),a
                                    356 ;	transmitter.c:13: char data_r=0;
                                    357 ;	1-genFromRTrack replaced	mov	_data_r,#0x00
      000064 F5 0A            [12]  358 	mov	_data_r,a
                                    359 	.area GSFINAL (CODE)
      000066 02 00 03         [24]  360 	ljmp	__sdcc_program_startup
                                    361 ;--------------------------------------------------------
                                    362 ; Home
                                    363 ;--------------------------------------------------------
                                    364 	.area HOME    (CODE)
                                    365 	.area HOME    (CODE)
      000003                        366 __sdcc_program_startup:
      000003 02 00 69         [24]  367 	ljmp	_main
                                    368 ;	return from main will return to caller
                                    369 ;--------------------------------------------------------
                                    370 ; code
                                    371 ;--------------------------------------------------------
                                    372 	.area CSEG    (CODE)
                                    373 ;------------------------------------------------------------
                                    374 ;Allocation info for local variables in function 'main'
                                    375 ;------------------------------------------------------------
                                    376 ;	transmitter.c:14: void main(void)
                                    377 ;	-----------------------------------------
                                    378 ;	 function main
                                    379 ;	-----------------------------------------
      000069                        380 _main:
                           000007   381 	ar7 = 0x07
                           000006   382 	ar6 = 0x06
                           000005   383 	ar5 = 0x05
                           000004   384 	ar4 = 0x04
                           000003   385 	ar3 = 0x03
                           000002   386 	ar2 = 0x02
                           000001   387 	ar1 = 0x01
                           000000   388 	ar0 = 0x00
                                    389 ;	transmitter.c:17: P1 = 0xff;
      000069 75 90 FF         [24]  390 	mov	_P1,#0xff
                                    391 ;	transmitter.c:18: P2 = 0x00;
                                    392 ;	transmitter.c:19: state = 0;
      00006C E4               [12]  393 	clr	a
      00006D F5 A0            [12]  394 	mov	_P2,a
      00006F F5 08            [12]  395 	mov	_state,a
      000071 F5 09            [12]  396 	mov	(_state + 1),a
                                    397 ;	transmitter.c:20: UART_Init();
      000073 12 00 CF         [24]  398 	lcall	_UART_Init
                                    399 ;	transmitter.c:21: startup();
      000076 12 01 00         [24]  400 	lcall	_startup
                                    401 ;	transmitter.c:22: start:while(!data_r)
      000079                        402 00102$:
      000079 E5 0A            [12]  403 	mov	a,_data_r
      00007B 70 13            [24]  404 	jnz	00104$
                                    405 ;	transmitter.c:23: {		data_r=SBUF;
      00007D 85 99 0A         [24]  406 	mov	_data_r,_SBUF
                                    407 ;	transmitter.c:24: RI=0;
                                    408 ;	assignBit
      000080 C2 98            [12]  409 	clr	_RI
                                    410 ;	transmitter.c:25: P2 = 0xA0; // Turn ON all LED's connected to Port1
      000082 75 A0 A0         [24]  411 	mov	_P2,#0xa0
                                    412 ;	transmitter.c:26: delay();
      000085 12 00 A6         [24]  413 	lcall	_delay
                                    414 ;	transmitter.c:27: P2 = 0x00; // Turn OFF all LED's connected to Port1
      000088 75 A0 00         [24]  415 	mov	_P2,#0x00
                                    416 ;	transmitter.c:28: delay();
      00008B 12 00 A6         [24]  417 	lcall	_delay
      00008E 80 E9            [24]  418 	sjmp	00102$
      000090                        419 00104$:
                                    420 ;	transmitter.c:31: if(data_r=='x')
      000090 74 78            [12]  421 	mov	a,#0x78
      000092 B5 0A E4         [24]  422 	cjne	a,_data_r,00102$
                                    423 ;	transmitter.c:33: Transmit_data('y');
      000095 75 82 79         [24]  424 	mov	dpl,#0x79
      000098 12 00 DB         [24]  425 	lcall	_Transmit_data
                                    426 ;	transmitter.c:34: data_r=0;
      00009B 75 0A 00         [24]  427 	mov	_data_r,#0x00
                                    428 ;	transmitter.c:38: while(1)
      00009E                        429 00109$:
                                    430 ;	transmitter.c:40: touch();
      00009E 12 01 3C         [24]  431 	lcall	_touch
                                    432 ;	transmitter.c:41: check_x();
      0000A1 12 00 ED         [24]  433 	lcall	_check_x
                                    434 ;	transmitter.c:44: }
      0000A4 80 F8            [24]  435 	sjmp	00109$
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function 'delay'
                                    438 ;------------------------------------------------------------
                                    439 ;i                         Allocated to registers r6 r7 
                                    440 ;j                         Allocated to registers r4 r5 
                                    441 ;------------------------------------------------------------
                                    442 ;	transmitter.c:47: void delay(void)
                                    443 ;	-----------------------------------------
                                    444 ;	 function delay
                                    445 ;	-----------------------------------------
      0000A6                        446 _delay:
                                    447 ;	transmitter.c:50: for(i=0;i<0x33;i++)
      0000A6 7E 00            [12]  448 	mov	r6,#0x00
      0000A8 7F 00            [12]  449 	mov	r7,#0x00
      0000AA                        450 00106$:
                                    451 ;	transmitter.c:51: for(j=0;j<0xff;j++);
      0000AA 7C FF            [12]  452 	mov	r4,#0xff
      0000AC 7D 00            [12]  453 	mov	r5,#0x00
      0000AE                        454 00105$:
      0000AE EC               [12]  455 	mov	a,r4
      0000AF 24 FF            [12]  456 	add	a,#0xff
      0000B1 FA               [12]  457 	mov	r2,a
      0000B2 ED               [12]  458 	mov	a,r5
      0000B3 34 FF            [12]  459 	addc	a,#0xff
      0000B5 FB               [12]  460 	mov	r3,a
      0000B6 8A 04            [24]  461 	mov	ar4,r2
      0000B8 8B 05            [24]  462 	mov	ar5,r3
      0000BA EA               [12]  463 	mov	a,r2
      0000BB 4B               [12]  464 	orl	a,r3
      0000BC 70 F0            [24]  465 	jnz	00105$
                                    466 ;	transmitter.c:50: for(i=0;i<0x33;i++)
      0000BE 0E               [12]  467 	inc	r6
      0000BF BE 00 01         [24]  468 	cjne	r6,#0x00,00124$
      0000C2 0F               [12]  469 	inc	r7
      0000C3                        470 00124$:
      0000C3 C3               [12]  471 	clr	c
      0000C4 EE               [12]  472 	mov	a,r6
      0000C5 94 33            [12]  473 	subb	a,#0x33
      0000C7 EF               [12]  474 	mov	a,r7
      0000C8 64 80            [12]  475 	xrl	a,#0x80
      0000CA 94 80            [12]  476 	subb	a,#0x80
      0000CC 40 DC            [24]  477 	jc	00106$
                                    478 ;	transmitter.c:52: }
      0000CE 22               [24]  479 	ret
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'UART_Init'
                                    482 ;------------------------------------------------------------
                                    483 ;	transmitter.c:54: void UART_Init()
                                    484 ;	-----------------------------------------
                                    485 ;	 function UART_Init
                                    486 ;	-----------------------------------------
      0000CF                        487 _UART_Init:
                                    488 ;	transmitter.c:56: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      0000CF 75 89 20         [24]  489 	mov	_TMOD,#0x20
                                    490 ;	transmitter.c:57: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      0000D2 75 8D FD         [24]  491 	mov	_TH1,#0xfd
                                    492 ;	transmitter.c:58: SCON = 0x50;		/* Mode 1, reception enable */
      0000D5 75 98 50         [24]  493 	mov	_SCON,#0x50
                                    494 ;	transmitter.c:59: TR1 = 1;		/* Start timer 1 */
                                    495 ;	assignBit
      0000D8 D2 8E            [12]  496 	setb	_TR1
                                    497 ;	transmitter.c:60: }
      0000DA 22               [24]  498 	ret
                                    499 ;------------------------------------------------------------
                                    500 ;Allocation info for local variables in function 'Transmit_data'
                                    501 ;------------------------------------------------------------
                                    502 ;tx_data                   Allocated to registers 
                                    503 ;------------------------------------------------------------
                                    504 ;	transmitter.c:62: void Transmit_data(char tx_data)
                                    505 ;	-----------------------------------------
                                    506 ;	 function Transmit_data
                                    507 ;	-----------------------------------------
      0000DB                        508 _Transmit_data:
      0000DB 85 82 99         [24]  509 	mov	_SBUF,dpl
                                    510 ;	transmitter.c:65: while (TI==0);		/* Wait until stop bit transmit */
      0000DE                        511 00101$:
                                    512 ;	transmitter.c:66: TI = 0;			/* Clear TI flag */
                                    513 ;	assignBit
      0000DE 10 99 02         [24]  514 	jbc	_TI,00114$
      0000E1 80 FB            [24]  515 	sjmp	00101$
      0000E3                        516 00114$:
                                    517 ;	transmitter.c:67: }
      0000E3 22               [24]  518 	ret
                                    519 ;------------------------------------------------------------
                                    520 ;Allocation info for local variables in function 'receive_data'
                                    521 ;------------------------------------------------------------
                                    522 ;	transmitter.c:69: void receive_data()
                                    523 ;	-----------------------------------------
                                    524 ;	 function receive_data
                                    525 ;	-----------------------------------------
      0000E4                        526 _receive_data:
                                    527 ;	transmitter.c:71: while (RI==0);		/* Wait until stop bit transmit */
      0000E4                        528 00101$:
      0000E4 30 98 FD         [24]  529 	jnb	_RI,00101$
                                    530 ;	transmitter.c:72: data_r = SBUF;		/* Load char in SBUF register */
      0000E7 85 99 0A         [24]  531 	mov	_data_r,_SBUF
                                    532 ;	transmitter.c:73: RI = 0;			/* Clear TI flag */
                                    533 ;	assignBit
      0000EA C2 98            [12]  534 	clr	_RI
                                    535 ;	transmitter.c:74: }
      0000EC 22               [24]  536 	ret
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'check_x'
                                    539 ;------------------------------------------------------------
                                    540 ;	transmitter.c:77: void check_x()
                                    541 ;	-----------------------------------------
                                    542 ;	 function check_x
                                    543 ;	-----------------------------------------
      0000ED                        544 _check_x:
                                    545 ;	transmitter.c:80: TI=0;
                                    546 ;	assignBit
      0000ED C2 99            [12]  547 	clr	_TI
                                    548 ;	transmitter.c:81: data_r = SBUF;		/* Load char in SBUF register */
      0000EF 85 99 0A         [24]  549 	mov	_data_r,_SBUF
                                    550 ;	transmitter.c:82: RI = 0;			/* Clear TI flag */
                                    551 ;	assignBit
      0000F2 C2 98            [12]  552 	clr	_RI
                                    553 ;	transmitter.c:83: if(data_r=='x')
      0000F4 74 78            [12]  554 	mov	a,#0x78
      0000F6 B5 0A 06         [24]  555 	cjne	a,_data_r,00103$
                                    556 ;	transmitter.c:84: Transmit_data('y');
      0000F9 75 82 79         [24]  557 	mov	dpl,#0x79
                                    558 ;	transmitter.c:85: }
      0000FC 02 00 DB         [24]  559 	ljmp	_Transmit_data
      0000FF                        560 00103$:
      0000FF 22               [24]  561 	ret
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'startup'
                                    564 ;------------------------------------------------------------
                                    565 ;	transmitter.c:86: void startup(void)
                                    566 ;	-----------------------------------------
                                    567 ;	 function startup
                                    568 ;	-----------------------------------------
      000100                        569 _startup:
                                    570 ;	transmitter.c:88: P2 = 0x00;
      000100 75 A0 00         [24]  571 	mov	_P2,#0x00
                                    572 ;	transmitter.c:89: delay();delay();delay();
      000103 12 00 A6         [24]  573 	lcall	_delay
      000106 12 00 A6         [24]  574 	lcall	_delay
      000109 12 00 A6         [24]  575 	lcall	_delay
                                    576 ;	transmitter.c:90: P2 = 0xE0;
      00010C 75 A0 E0         [24]  577 	mov	_P2,#0xe0
                                    578 ;	transmitter.c:91: delay();delay();delay();
      00010F 12 00 A6         [24]  579 	lcall	_delay
      000112 12 00 A6         [24]  580 	lcall	_delay
      000115 12 00 A6         [24]  581 	lcall	_delay
                                    582 ;	transmitter.c:92: P2 = 0x80;
      000118 75 A0 80         [24]  583 	mov	_P2,#0x80
                                    584 ;	transmitter.c:93: delay();delay();delay();
      00011B 12 00 A6         [24]  585 	lcall	_delay
      00011E 12 00 A6         [24]  586 	lcall	_delay
      000121 12 00 A6         [24]  587 	lcall	_delay
                                    588 ;	transmitter.c:94: P2 = 0x40;
      000124 75 A0 40         [24]  589 	mov	_P2,#0x40
                                    590 ;	transmitter.c:95: delay();delay();delay();
      000127 12 00 A6         [24]  591 	lcall	_delay
      00012A 12 00 A6         [24]  592 	lcall	_delay
      00012D 12 00 A6         [24]  593 	lcall	_delay
                                    594 ;	transmitter.c:96: P2 = 0x20;
      000130 75 A0 20         [24]  595 	mov	_P2,#0x20
                                    596 ;	transmitter.c:97: delay();delay();delay();
      000133 12 00 A6         [24]  597 	lcall	_delay
      000136 12 00 A6         [24]  598 	lcall	_delay
                                    599 ;	transmitter.c:98: }
      000139 02 00 A6         [24]  600 	ljmp	_delay
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'touch'
                                    603 ;------------------------------------------------------------
                                    604 ;	transmitter.c:100: void touch(void)
                                    605 ;	-----------------------------------------
                                    606 ;	 function touch
                                    607 ;	-----------------------------------------
      00013C                        608 _touch:
                                    609 ;	transmitter.c:102: switch(P1)
      00013C AF 90            [24]  610 	mov	r7,_P1
      00013E BF 1F 03         [24]  611 	cjne	r7,#0x1f,00140$
      000141 02 02 0A         [24]  612 	ljmp	00107$
      000144                        613 00140$:
      000144 BF 2F 03         [24]  614 	cjne	r7,#0x2f,00141$
      000147 02 01 EC         [24]  615 	ljmp	00106$
      00014A                        616 00141$:
      00014A BF 37 03         [24]  617 	cjne	r7,#0x37,00142$
      00014D 02 01 CE         [24]  618 	ljmp	00105$
      000150                        619 00142$:
      000150 BF 3B 02         [24]  620 	cjne	r7,#0x3b,00143$
      000153 80 5B            [24]  621 	sjmp	00104$
      000155                        622 00143$:
      000155 BF 3D 02         [24]  623 	cjne	r7,#0x3d,00144$
      000158 80 38            [24]  624 	sjmp	00103$
      00015A                        625 00144$:
      00015A BF 3E 02         [24]  626 	cjne	r7,#0x3e,00145$
      00015D 80 24            [24]  627 	sjmp	00102$
      00015F                        628 00145$:
      00015F BF 3F 02         [24]  629 	cjne	r7,#0x3f,00146$
      000162 80 01            [24]  630 	sjmp	00147$
      000164                        631 00146$:
      000164 22               [24]  632 	ret
      000165                        633 00147$:
                                    634 ;	transmitter.c:105: Transmit_data('l');
      000165 75 82 6C         [24]  635 	mov	dpl,#0x6c
      000168 12 00 DB         [24]  636 	lcall	_Transmit_data
                                    637 ;	transmitter.c:106: P2 = 0xA0; // Turn ON all LED's connected to Port1
      00016B 75 A0 A0         [24]  638 	mov	_P2,#0xa0
                                    639 ;	transmitter.c:107: delay();
      00016E 12 00 A6         [24]  640 	lcall	_delay
                                    641 ;	transmitter.c:108: delay();
      000171 12 00 A6         [24]  642 	lcall	_delay
                                    643 ;	transmitter.c:109: delay();
      000174 12 00 A6         [24]  644 	lcall	_delay
                                    645 ;	transmitter.c:110: P2 = 0x00; // Turn OFF all LED's connected to Port1
      000177 75 A0 00         [24]  646 	mov	_P2,#0x00
                                    647 ;	transmitter.c:111: delay();
      00017A 12 00 A6         [24]  648 	lcall	_delay
                                    649 ;	transmitter.c:112: delay();
      00017D 12 00 A6         [24]  650 	lcall	_delay
                                    651 ;	transmitter.c:113: delay();
                                    652 ;	transmitter.c:114: break;
      000180 02 00 A6         [24]  653 	ljmp	_delay
                                    654 ;	transmitter.c:115: case 0x3e:				Transmit_data('a');
      000183                        655 00102$:
      000183 75 82 61         [24]  656 	mov	dpl,#0x61
      000186 12 00 DB         [24]  657 	lcall	_Transmit_data
                                    658 ;	transmitter.c:116: P2 = 0x80; // Turn ON all LED's connected to Port1
      000189 75 A0 80         [24]  659 	mov	_P2,#0x80
                                    660 ;	transmitter.c:117: delay();
      00018C 12 00 A6         [24]  661 	lcall	_delay
                                    662 ;	transmitter.c:118: delay();
                                    663 ;	transmitter.c:119: break;
      00018F 02 00 A6         [24]  664 	ljmp	_delay
                                    665 ;	transmitter.c:120: case 0x3d:				Transmit_data('b');
      000192                        666 00103$:
      000192 75 82 62         [24]  667 	mov	dpl,#0x62
      000195 12 00 DB         [24]  668 	lcall	_Transmit_data
                                    669 ;	transmitter.c:121: P2 = 0x80; // Turn ON all LED's connected to Port1
      000198 75 A0 80         [24]  670 	mov	_P2,#0x80
                                    671 ;	transmitter.c:122: delay();
      00019B 12 00 A6         [24]  672 	lcall	_delay
                                    673 ;	transmitter.c:123: delay();
      00019E 12 00 A6         [24]  674 	lcall	_delay
                                    675 ;	transmitter.c:124: delay();
      0001A1 12 00 A6         [24]  676 	lcall	_delay
                                    677 ;	transmitter.c:125: P2 = 0x00; // Turn OFF all LED's connected to Port1
      0001A4 75 A0 00         [24]  678 	mov	_P2,#0x00
                                    679 ;	transmitter.c:126: delay();
      0001A7 12 00 A6         [24]  680 	lcall	_delay
                                    681 ;	transmitter.c:127: delay();
      0001AA 12 00 A6         [24]  682 	lcall	_delay
                                    683 ;	transmitter.c:128: delay();
                                    684 ;	transmitter.c:129: break;
                                    685 ;	transmitter.c:130: case 0x3b:				Transmit_data('c');
      0001AD 02 00 A6         [24]  686 	ljmp	_delay
      0001B0                        687 00104$:
      0001B0 75 82 63         [24]  688 	mov	dpl,#0x63
      0001B3 12 00 DB         [24]  689 	lcall	_Transmit_data
                                    690 ;	transmitter.c:131: P2 = 0xC0; // Turn ON all LED's connected to Port1
      0001B6 75 A0 C0         [24]  691 	mov	_P2,#0xc0
                                    692 ;	transmitter.c:132: delay();
      0001B9 12 00 A6         [24]  693 	lcall	_delay
                                    694 ;	transmitter.c:133: delay();
      0001BC 12 00 A6         [24]  695 	lcall	_delay
                                    696 ;	transmitter.c:134: delay();
      0001BF 12 00 A6         [24]  697 	lcall	_delay
                                    698 ;	transmitter.c:135: P2 = 0x00; // Turn OFF all LED's connected to Port1
      0001C2 75 A0 00         [24]  699 	mov	_P2,#0x00
                                    700 ;	transmitter.c:136: delay();
      0001C5 12 00 A6         [24]  701 	lcall	_delay
                                    702 ;	transmitter.c:137: delay();
      0001C8 12 00 A6         [24]  703 	lcall	_delay
                                    704 ;	transmitter.c:138: delay();
                                    705 ;	transmitter.c:140: break;
                                    706 ;	transmitter.c:141: case 0x37:				Transmit_data('e');
      0001CB 02 00 A6         [24]  707 	ljmp	_delay
      0001CE                        708 00105$:
      0001CE 75 82 65         [24]  709 	mov	dpl,#0x65
      0001D1 12 00 DB         [24]  710 	lcall	_Transmit_data
                                    711 ;	transmitter.c:142: P2 = 0x60; // Turn ON all LED's connected to Port1
      0001D4 75 A0 60         [24]  712 	mov	_P2,#0x60
                                    713 ;	transmitter.c:143: delay();
      0001D7 12 00 A6         [24]  714 	lcall	_delay
                                    715 ;	transmitter.c:144: delay();
      0001DA 12 00 A6         [24]  716 	lcall	_delay
                                    717 ;	transmitter.c:145: delay();
      0001DD 12 00 A6         [24]  718 	lcall	_delay
                                    719 ;	transmitter.c:146: P2 = 0x00; // Turn OFF all LED's connected to Port1
      0001E0 75 A0 00         [24]  720 	mov	_P2,#0x00
                                    721 ;	transmitter.c:147: delay();
      0001E3 12 00 A6         [24]  722 	lcall	_delay
                                    723 ;	transmitter.c:148: delay();
      0001E6 12 00 A6         [24]  724 	lcall	_delay
                                    725 ;	transmitter.c:149: delay();
                                    726 ;	transmitter.c:150: break;
                                    727 ;	transmitter.c:151: case 0x2f:				Transmit_data('f');
      0001E9 02 00 A6         [24]  728 	ljmp	_delay
      0001EC                        729 00106$:
      0001EC 75 82 66         [24]  730 	mov	dpl,#0x66
      0001EF 12 00 DB         [24]  731 	lcall	_Transmit_data
                                    732 ;	transmitter.c:152: P2 = 0x20; // Turn ON all LED's connected to Port1
      0001F2 75 A0 20         [24]  733 	mov	_P2,#0x20
                                    734 ;	transmitter.c:153: delay();
      0001F5 12 00 A6         [24]  735 	lcall	_delay
                                    736 ;	transmitter.c:154: delay();
      0001F8 12 00 A6         [24]  737 	lcall	_delay
                                    738 ;	transmitter.c:155: delay();
      0001FB 12 00 A6         [24]  739 	lcall	_delay
                                    740 ;	transmitter.c:156: P2 = 0x00; // Turn OFF all LED's connected to Port1
      0001FE 75 A0 00         [24]  741 	mov	_P2,#0x00
                                    742 ;	transmitter.c:157: delay();
      000201 12 00 A6         [24]  743 	lcall	_delay
                                    744 ;	transmitter.c:158: delay();
      000204 12 00 A6         [24]  745 	lcall	_delay
                                    746 ;	transmitter.c:159: delay();
                                    747 ;	transmitter.c:160: break;
                                    748 ;	transmitter.c:161: case 0x1f:				Transmit_data('g');
      000207 02 00 A6         [24]  749 	ljmp	_delay
      00020A                        750 00107$:
      00020A 75 82 67         [24]  751 	mov	dpl,#0x67
      00020D 12 00 DB         [24]  752 	lcall	_Transmit_data
                                    753 ;	transmitter.c:162: P2 = 0x20; // Turn ON all LED's connected to Port1
      000210 75 A0 20         [24]  754 	mov	_P2,#0x20
                                    755 ;	transmitter.c:163: delay();
      000213 12 00 A6         [24]  756 	lcall	_delay
                                    757 ;	transmitter.c:164: delay();
                                    758 ;	transmitter.c:167: }
                                    759 ;	transmitter.c:168: }
      000216 02 00 A6         [24]  760 	ljmp	_delay
                                    761 	.area CSEG    (CODE)
                                    762 	.area CONST   (CODE)
                                    763 	.area XINIT   (CODE)
                                    764 	.area CABS    (ABS,CODE)
