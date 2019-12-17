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
                                    131 	.globl _delay_s
                                    132 	.globl _delay
                                    133 	.globl _UART_Init
                                    134 	.globl _Transmit_data
                                    135 ;--------------------------------------------------------
                                    136 ; special function registers
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0	=	0x0080
                           000081   141 _SP	=	0x0081
                           000082   142 _DPL	=	0x0082
                           000083   143 _DPH	=	0x0083
                           000087   144 _PCON	=	0x0087
                           000088   145 _TCON	=	0x0088
                           000089   146 _TMOD	=	0x0089
                           00008A   147 _TL0	=	0x008a
                           00008B   148 _TL1	=	0x008b
                           00008C   149 _TH0	=	0x008c
                           00008D   150 _TH1	=	0x008d
                           000090   151 _P1	=	0x0090
                           000098   152 _SCON	=	0x0098
                           000099   153 _SBUF	=	0x0099
                           0000A0   154 _P2	=	0x00a0
                           0000A8   155 _IE	=	0x00a8
                           0000B0   156 _P3	=	0x00b0
                           0000B8   157 _IP	=	0x00b8
                           0000D0   158 _PSW	=	0x00d0
                           0000E0   159 _ACC	=	0x00e0
                           0000F0   160 _B	=	0x00f0
                           0000C8   161 _T2CON	=	0x00c8
                           0000CA   162 _RCAP2L	=	0x00ca
                           0000CB   163 _RCAP2H	=	0x00cb
                           0000CC   164 _TL2	=	0x00cc
                           0000CD   165 _TH2	=	0x00cd
                                    166 ;--------------------------------------------------------
                                    167 ; special function bits
                                    168 ;--------------------------------------------------------
                                    169 	.area RSEG    (ABS,DATA)
      000000                        170 	.org 0x0000
                           000080   171 _P0_0	=	0x0080
                           000081   172 _P0_1	=	0x0081
                           000082   173 _P0_2	=	0x0082
                           000083   174 _P0_3	=	0x0083
                           000084   175 _P0_4	=	0x0084
                           000085   176 _P0_5	=	0x0085
                           000086   177 _P0_6	=	0x0086
                           000087   178 _P0_7	=	0x0087
                           000088   179 _IT0	=	0x0088
                           000089   180 _IE0	=	0x0089
                           00008A   181 _IT1	=	0x008a
                           00008B   182 _IE1	=	0x008b
                           00008C   183 _TR0	=	0x008c
                           00008D   184 _TF0	=	0x008d
                           00008E   185 _TR1	=	0x008e
                           00008F   186 _TF1	=	0x008f
                           000090   187 _P1_0	=	0x0090
                           000091   188 _P1_1	=	0x0091
                           000092   189 _P1_2	=	0x0092
                           000093   190 _P1_3	=	0x0093
                           000094   191 _P1_4	=	0x0094
                           000095   192 _P1_5	=	0x0095
                           000096   193 _P1_6	=	0x0096
                           000097   194 _P1_7	=	0x0097
                           000098   195 _RI	=	0x0098
                           000099   196 _TI	=	0x0099
                           00009A   197 _RB8	=	0x009a
                           00009B   198 _TB8	=	0x009b
                           00009C   199 _REN	=	0x009c
                           00009D   200 _SM2	=	0x009d
                           00009E   201 _SM1	=	0x009e
                           00009F   202 _SM0	=	0x009f
                           0000A0   203 _P2_0	=	0x00a0
                           0000A1   204 _P2_1	=	0x00a1
                           0000A2   205 _P2_2	=	0x00a2
                           0000A3   206 _P2_3	=	0x00a3
                           0000A4   207 _P2_4	=	0x00a4
                           0000A5   208 _P2_5	=	0x00a5
                           0000A6   209 _P2_6	=	0x00a6
                           0000A7   210 _P2_7	=	0x00a7
                           0000A8   211 _EX0	=	0x00a8
                           0000A9   212 _ET0	=	0x00a9
                           0000AA   213 _EX1	=	0x00aa
                           0000AB   214 _ET1	=	0x00ab
                           0000AC   215 _ES	=	0x00ac
                           0000AF   216 _EA	=	0x00af
                           0000B0   217 _P3_0	=	0x00b0
                           0000B1   218 _P3_1	=	0x00b1
                           0000B2   219 _P3_2	=	0x00b2
                           0000B3   220 _P3_3	=	0x00b3
                           0000B4   221 _P3_4	=	0x00b4
                           0000B5   222 _P3_5	=	0x00b5
                           0000B6   223 _P3_6	=	0x00b6
                           0000B7   224 _P3_7	=	0x00b7
                           0000B0   225 _RXD	=	0x00b0
                           0000B1   226 _TXD	=	0x00b1
                           0000B2   227 _INT0	=	0x00b2
                           0000B3   228 _INT1	=	0x00b3
                           0000B4   229 _T0	=	0x00b4
                           0000B5   230 _T1	=	0x00b5
                           0000B6   231 _WR	=	0x00b6
                           0000B7   232 _RD	=	0x00b7
                           0000B8   233 _PX0	=	0x00b8
                           0000B9   234 _PT0	=	0x00b9
                           0000BA   235 _PX1	=	0x00ba
                           0000BB   236 _PT1	=	0x00bb
                           0000BC   237 _PS	=	0x00bc
                           0000D0   238 _P	=	0x00d0
                           0000D1   239 _F1	=	0x00d1
                           0000D2   240 _OV	=	0x00d2
                           0000D3   241 _RS0	=	0x00d3
                           0000D4   242 _RS1	=	0x00d4
                           0000D5   243 _F0	=	0x00d5
                           0000D6   244 _AC	=	0x00d6
                           0000D7   245 _CY	=	0x00d7
                           0000AD   246 _ET2	=	0x00ad
                           0000BD   247 _PT2	=	0x00bd
                           0000C8   248 _T2CON_0	=	0x00c8
                           0000C9   249 _T2CON_1	=	0x00c9
                           0000CA   250 _T2CON_2	=	0x00ca
                           0000CB   251 _T2CON_3	=	0x00cb
                           0000CC   252 _T2CON_4	=	0x00cc
                           0000CD   253 _T2CON_5	=	0x00cd
                           0000CE   254 _T2CON_6	=	0x00ce
                           0000CF   255 _T2CON_7	=	0x00cf
                           0000C8   256 _CP_RL2	=	0x00c8
                           0000C9   257 _C_T2	=	0x00c9
                           0000CA   258 _TR2	=	0x00ca
                           0000CB   259 _EXEN2	=	0x00cb
                           0000CC   260 _TCLK	=	0x00cc
                           0000CD   261 _RCLK	=	0x00cd
                           0000CE   262 _EXF2	=	0x00ce
                           0000CF   263 _TF2	=	0x00cf
                                    264 ;--------------------------------------------------------
                                    265 ; overlayable register banks
                                    266 ;--------------------------------------------------------
                                    267 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        268 	.ds 8
                                    269 ;--------------------------------------------------------
                                    270 ; internal ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area DSEG    (DATA)
                                    273 ;--------------------------------------------------------
                                    274 ; overlayable items in internal ram 
                                    275 ;--------------------------------------------------------
                                    276 	.area	OSEG    (OVR,DATA)
                                    277 	.area	OSEG    (OVR,DATA)
                                    278 ;--------------------------------------------------------
                                    279 ; Stack segment in internal ram 
                                    280 ;--------------------------------------------------------
                                    281 	.area	SSEG
      000008                        282 __start__stack:
      000008                        283 	.ds	1
                                    284 
                                    285 ;--------------------------------------------------------
                                    286 ; indirectly addressable internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area ISEG    (DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; absolute internal ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area IABS    (ABS,DATA)
                                    293 	.area IABS    (ABS,DATA)
                                    294 ;--------------------------------------------------------
                                    295 ; bit data
                                    296 ;--------------------------------------------------------
                                    297 	.area BSEG    (BIT)
                                    298 ;--------------------------------------------------------
                                    299 ; paged external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area PSEG    (PAG,XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XSEG    (XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; absolute external ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XABS    (ABS,XDATA)
                                    310 ;--------------------------------------------------------
                                    311 ; external initialized ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area XISEG   (XDATA)
                                    314 	.area HOME    (CODE)
                                    315 	.area GSINIT0 (CODE)
                                    316 	.area GSINIT1 (CODE)
                                    317 	.area GSINIT2 (CODE)
                                    318 	.area GSINIT3 (CODE)
                                    319 	.area GSINIT4 (CODE)
                                    320 	.area GSINIT5 (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 	.area GSFINAL (CODE)
                                    323 	.area CSEG    (CODE)
                                    324 ;--------------------------------------------------------
                                    325 ; interrupt vector 
                                    326 ;--------------------------------------------------------
                                    327 	.area HOME    (CODE)
      000000                        328 __interrupt_vect:
      000000 02 00 06         [24]  329 	ljmp	__sdcc_gsinit_startup
                                    330 ;--------------------------------------------------------
                                    331 ; global & static initialisations
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.area GSFINAL (CODE)
                                    336 	.area GSINIT  (CODE)
                                    337 	.globl __sdcc_gsinit_startup
                                    338 	.globl __sdcc_program_startup
                                    339 	.globl __start__stack
                                    340 	.globl __mcs51_genXINIT
                                    341 	.globl __mcs51_genXRAMCLEAR
                                    342 	.globl __mcs51_genRAMCLEAR
                                    343 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  344 	ljmp	__sdcc_program_startup
                                    345 ;--------------------------------------------------------
                                    346 ; Home
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
                                    349 	.area HOME    (CODE)
      000003                        350 __sdcc_program_startup:
      000003 02 00 62         [24]  351 	ljmp	_main
                                    352 ;	return from main will return to caller
                                    353 ;--------------------------------------------------------
                                    354 ; code
                                    355 ;--------------------------------------------------------
                                    356 	.area CSEG    (CODE)
                                    357 ;------------------------------------------------------------
                                    358 ;Allocation info for local variables in function 'main'
                                    359 ;------------------------------------------------------------
                                    360 ;	transmitter.c:8: void main(void)
                                    361 ;	-----------------------------------------
                                    362 ;	 function main
                                    363 ;	-----------------------------------------
      000062                        364 _main:
                           000007   365 	ar7 = 0x07
                           000006   366 	ar6 = 0x06
                           000005   367 	ar5 = 0x05
                           000004   368 	ar4 = 0x04
                           000003   369 	ar3 = 0x03
                           000002   370 	ar2 = 0x02
                           000001   371 	ar1 = 0x01
                           000000   372 	ar0 = 0x00
                                    373 ;	transmitter.c:10: UART_Init();
      000062 12 00 C2         [24]  374 	lcall	_UART_Init
                                    375 ;	transmitter.c:11: while(1)
      000065                        376 00102$:
                                    377 ;	transmitter.c:13: Transmit_data('X');
      000065 75 82 58         [24]  378 	mov	dpl,#0x58
      000068 12 00 CE         [24]  379 	lcall	_Transmit_data
                                    380 ;	transmitter.c:14: P2 = 0xAA; // Turn ON all LED's connected to Port1
      00006B 75 A0 AA         [24]  381 	mov	_P2,#0xaa
                                    382 ;	transmitter.c:15: delay();
      00006E 12 00 99         [24]  383 	lcall	_delay
                                    384 ;	transmitter.c:16: P2 = 0x55; // Turn OFF all LED's connected to Port1
      000071 75 A0 55         [24]  385 	mov	_P2,#0x55
                                    386 ;	transmitter.c:17: delay();
      000074 12 00 99         [24]  387 	lcall	_delay
                                    388 ;	transmitter.c:19: }
      000077 80 EC            [24]  389 	sjmp	00102$
                                    390 ;------------------------------------------------------------
                                    391 ;Allocation info for local variables in function 'delay_s'
                                    392 ;------------------------------------------------------------
                                    393 ;i                         Allocated to registers r6 r7 
                                    394 ;------------------------------------------------------------
                                    395 ;	transmitter.c:21: void delay_s(void)
                                    396 ;	-----------------------------------------
                                    397 ;	 function delay_s
                                    398 ;	-----------------------------------------
      000079                        399 _delay_s:
                                    400 ;	transmitter.c:24: for (i = 0; i<0xff; i++)
      000079 7E FF            [12]  401 	mov	r6,#0xff
      00007B 7F 00            [12]  402 	mov	r7,#0x00
      00007D                        403 00104$:
                                    404 ;	transmitter.c:25: delay();
      00007D C0 07            [24]  405 	push	ar7
      00007F C0 06            [24]  406 	push	ar6
      000081 12 00 99         [24]  407 	lcall	_delay
      000084 D0 06            [24]  408 	pop	ar6
      000086 D0 07            [24]  409 	pop	ar7
      000088 EE               [12]  410 	mov	a,r6
      000089 24 FF            [12]  411 	add	a,#0xff
      00008B FC               [12]  412 	mov	r4,a
      00008C EF               [12]  413 	mov	a,r7
      00008D 34 FF            [12]  414 	addc	a,#0xff
      00008F FD               [12]  415 	mov	r5,a
      000090 8C 06            [24]  416 	mov	ar6,r4
      000092 8D 07            [24]  417 	mov	ar7,r5
                                    418 ;	transmitter.c:24: for (i = 0; i<0xff; i++)
      000094 EC               [12]  419 	mov	a,r4
      000095 4D               [12]  420 	orl	a,r5
      000096 70 E5            [24]  421 	jnz	00104$
                                    422 ;	transmitter.c:26: }
      000098 22               [24]  423 	ret
                                    424 ;------------------------------------------------------------
                                    425 ;Allocation info for local variables in function 'delay'
                                    426 ;------------------------------------------------------------
                                    427 ;i                         Allocated to registers r6 r7 
                                    428 ;j                         Allocated to registers r4 r5 
                                    429 ;------------------------------------------------------------
                                    430 ;	transmitter.c:28: void delay(void)
                                    431 ;	-----------------------------------------
                                    432 ;	 function delay
                                    433 ;	-----------------------------------------
      000099                        434 _delay:
                                    435 ;	transmitter.c:31: for(i=0;i<0xff;i++)
      000099 7E 00            [12]  436 	mov	r6,#0x00
      00009B 7F 00            [12]  437 	mov	r7,#0x00
      00009D                        438 00106$:
                                    439 ;	transmitter.c:32: for(j=0;j<0xff;j++);
      00009D 7C FF            [12]  440 	mov	r4,#0xff
      00009F 7D 00            [12]  441 	mov	r5,#0x00
      0000A1                        442 00105$:
      0000A1 EC               [12]  443 	mov	a,r4
      0000A2 24 FF            [12]  444 	add	a,#0xff
      0000A4 FA               [12]  445 	mov	r2,a
      0000A5 ED               [12]  446 	mov	a,r5
      0000A6 34 FF            [12]  447 	addc	a,#0xff
      0000A8 FB               [12]  448 	mov	r3,a
      0000A9 8A 04            [24]  449 	mov	ar4,r2
      0000AB 8B 05            [24]  450 	mov	ar5,r3
      0000AD EA               [12]  451 	mov	a,r2
      0000AE 4B               [12]  452 	orl	a,r3
      0000AF 70 F0            [24]  453 	jnz	00105$
                                    454 ;	transmitter.c:31: for(i=0;i<0xff;i++)
      0000B1 0E               [12]  455 	inc	r6
      0000B2 BE 00 01         [24]  456 	cjne	r6,#0x00,00124$
      0000B5 0F               [12]  457 	inc	r7
      0000B6                        458 00124$:
      0000B6 C3               [12]  459 	clr	c
      0000B7 EE               [12]  460 	mov	a,r6
      0000B8 94 FF            [12]  461 	subb	a,#0xff
      0000BA EF               [12]  462 	mov	a,r7
      0000BB 64 80            [12]  463 	xrl	a,#0x80
      0000BD 94 80            [12]  464 	subb	a,#0x80
      0000BF 40 DC            [24]  465 	jc	00106$
                                    466 ;	transmitter.c:33: }
      0000C1 22               [24]  467 	ret
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'UART_Init'
                                    470 ;------------------------------------------------------------
                                    471 ;	transmitter.c:35: void UART_Init()
                                    472 ;	-----------------------------------------
                                    473 ;	 function UART_Init
                                    474 ;	-----------------------------------------
      0000C2                        475 _UART_Init:
                                    476 ;	transmitter.c:37: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
      0000C2 75 89 20         [24]  477 	mov	_TMOD,#0x20
                                    478 ;	transmitter.c:38: TH1 = 0xFD;		/* Load value for 9600 baud rate */
      0000C5 75 8D FD         [24]  479 	mov	_TH1,#0xfd
                                    480 ;	transmitter.c:39: SCON = 0x50;		/* Mode 1, reception enable */
      0000C8 75 98 50         [24]  481 	mov	_SCON,#0x50
                                    482 ;	transmitter.c:40: TR1 = 1;		/* Start timer 1 */
                                    483 ;	assignBit
      0000CB D2 8E            [12]  484 	setb	_TR1
                                    485 ;	transmitter.c:41: }
      0000CD 22               [24]  486 	ret
                                    487 ;------------------------------------------------------------
                                    488 ;Allocation info for local variables in function 'Transmit_data'
                                    489 ;------------------------------------------------------------
                                    490 ;tx_data                   Allocated to registers 
                                    491 ;------------------------------------------------------------
                                    492 ;	transmitter.c:43: void Transmit_data(char tx_data)
                                    493 ;	-----------------------------------------
                                    494 ;	 function Transmit_data
                                    495 ;	-----------------------------------------
      0000CE                        496 _Transmit_data:
      0000CE 85 82 99         [24]  497 	mov	_SBUF,dpl
                                    498 ;	transmitter.c:46: while (TI==0);		/* Wait until stop bit transmit */
      0000D1                        499 00101$:
                                    500 ;	transmitter.c:47: TI = 0;			/* Clear TI flag */
                                    501 ;	assignBit
      0000D1 10 99 02         [24]  502 	jbc	_TI,00114$
      0000D4 80 FB            [24]  503 	sjmp	00101$
      0000D6                        504 00114$:
                                    505 ;	transmitter.c:48: }
      0000D6 22               [24]  506 	ret
                                    507 	.area CSEG    (CODE)
                                    508 	.area CONST   (CODE)
                                    509 	.area XINIT   (CODE)
                                    510 	.area CABS    (ABS,CODE)
