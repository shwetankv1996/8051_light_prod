;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11418 (Linux)
;--------------------------------------------------------
	.module transmitter
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _isr_timer0
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _button
	.globl _time_delay
	.globl _timerCount
	.globl _received
	.globl _data_r
	.globl _state
	.globl _delay
	.globl _UART_Init
	.globl _Transmit_data
	.globl _check_x
	.globl _startup
	.globl _touch
	.globl _InitTimer1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_state::
	.ds 2
_data_r::
	.ds 1
_received::
	.ds 1
_timerCount::
	.ds 2
_time_delay::
	.ds 2
_button::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_isr_timer0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	transmitter.c:3: int state = 0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
;	transmitter.c:13: char data_r=0;
;	1-genFromRTrack replaced	mov	_data_r,#0x00
	mov	_data_r,a
;	transmitter.c:14: char received=1;
	mov	_received,#0x01
;	transmitter.c:15: volatile int timerCount = 0;
	mov	_timerCount,a
	mov	(_timerCount + 1),a
;	transmitter.c:16: volatile int time_delay = 15;
	mov	_time_delay,#0x0f
;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
	mov	(_time_delay + 1),a
;	transmitter.c:17: char button='l';
	mov	_button,#0x6c
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'isr_timer0'
;------------------------------------------------------------
;	transmitter.c:19: void isr_timer0(void) __interrupt 1   // It is called after every 50msec
;	-----------------------------------------
;	 function isr_timer0
;	-----------------------------------------
_isr_timer0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	transmitter.c:21: TH0  = 0XDC;         // ReLoad the timer value for 50ms
	mov	_TH0,#0xdc
;	transmitter.c:22: TL0  = 0X00;
	mov	_TL0,#0x00
;	transmitter.c:23: timerCount++;
	mov	r6,_timerCount
	mov	r7,(_timerCount + 1)
	mov	a,#0x01
	add	a,r6
	mov	_timerCount,a
	clr	a
	addc	a,r7
	mov	(_timerCount + 1),a
;	transmitter.c:24: switch(P1)
	mov	r7,_P1
	cjne	r7,#0x1f,00160$
	ljmp	00113$
00160$:
	cjne	r7,#0x2f,00161$
	ljmp	00112$
00161$:
	cjne	r7,#0x37,00162$
	sjmp	00108$
00162$:
	cjne	r7,#0x3b,00163$
	sjmp	00104$
00163$:
	cjne	r7,#0x3d,00164$
	sjmp	00103$
00164$:
	cjne	r7,#0x3e,00165$
	sjmp	00102$
00165$:
	cjne	r7,#0x3f,00166$
	sjmp	00167$
00166$:
	ljmp	00115$
00167$:
;	transmitter.c:28: time_delay=10;
	mov	_time_delay,#0x0a
;	transmitter.c:29: state = 0;
	clr	a
	mov	(_time_delay + 1),a
	mov	_state,a
	mov	(_state + 1),a
;	transmitter.c:30: button = 'l';
	mov	_button,#0x6c
;	transmitter.c:31: break;
	ljmp	00115$
;	transmitter.c:33: case 0x3e:
00102$:
;	transmitter.c:35: time_delay=120;
	mov	_time_delay,#0x78
	mov	(_time_delay + 1),#0x00
;	transmitter.c:36: state = 1;
	mov	_state,#0x01
	mov	(_state + 1),#0x00
;	transmitter.c:37: button = 'a';
	mov	_button,#0x61
;	transmitter.c:38: break;
;	transmitter.c:40: case 0x3d:
	sjmp	00115$
00103$:
;	transmitter.c:42: state = 2;
	mov	_state,#0x02
	mov	(_state + 1),#0x00
;	transmitter.c:43: time_delay=5;
	mov	_time_delay,#0x05
	mov	(_time_delay + 1),#0x00
;	transmitter.c:44: button = 'b';
	mov	_button,#0x62
;	transmitter.c:45: break;
;	transmitter.c:47: case 0x3b:
	sjmp	00115$
00104$:
;	transmitter.c:48: if(received)
	mov	a,_received
	jz	00106$
;	transmitter.c:50: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
;	transmitter.c:51: button = 'd';
	mov	_button,#0x64
	sjmp	00107$
00106$:
;	transmitter.c:55: state = 3;
	mov	_state,#0x03
	mov	(_state + 1),#0x00
;	transmitter.c:56: button = 'c';
	mov	_button,#0x63
00107$:
;	transmitter.c:58: time_delay=10;
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	transmitter.c:59: break;
;	transmitter.c:61: case 0x37:
	sjmp	00115$
00108$:
;	transmitter.c:62: if(received)
	mov	a,_received
	jz	00110$
;	transmitter.c:64: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
;	transmitter.c:65: button = 'd';
	mov	_button,#0x64
	sjmp	00111$
00110$:
;	transmitter.c:69: state = 4;
	mov	_state,#0x04
	mov	(_state + 1),#0x00
;	transmitter.c:70: button = 'e';
	mov	_button,#0x65
00111$:
;	transmitter.c:72: time_delay=10;
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	transmitter.c:73: break;
;	transmitter.c:75: case 0x2f:
	sjmp	00115$
00112$:
;	transmitter.c:77: state = 5;
	mov	_state,#0x05
	mov	(_state + 1),#0x00
;	transmitter.c:78: time_delay=5;
	mov	_time_delay,#0x05
	mov	(_time_delay + 1),#0x00
;	transmitter.c:79: button = 'f';
	mov	_button,#0x66
;	transmitter.c:80: break;
;	transmitter.c:82: case 0x1f:
	sjmp	00115$
00113$:
;	transmitter.c:84: state = 6;
	mov	_state,#0x06
	mov	(_state + 1),#0x00
;	transmitter.c:85: button = 'g';
	mov	_button,#0x67
;	transmitter.c:86: time_delay=120;
	mov	_time_delay,#0x78
	mov	(_time_delay + 1),#0x00
;	transmitter.c:90: }
00115$:
;	transmitter.c:92: if(timerCount == 30)
	mov	a,#0x1e
	cjne	a,_timerCount,00170$
	clr	a
	cjne	a,(_timerCount + 1),00170$
	sjmp	00171$
00170$:
	sjmp	00118$
00171$:
;	transmitter.c:93: Transmit_data(button);
	mov	dpl,_button
	lcall	_Transmit_data
00118$:
;	transmitter.c:94: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	transmitter.c:96: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	transmitter.c:98: P1 = 0xff;
	mov	_P1,#0xff
;	transmitter.c:99: P2 = 0x00;
;	transmitter.c:100: state = 0;
	clr	a
	mov	_P2,a
	mov	_state,a
	mov	(_state + 1),a
;	transmitter.c:101: startup();
	lcall	_startup
;	transmitter.c:102: P2 = 0x00;
	mov	_P2,#0x00
;	transmitter.c:103: UART_Init();
	lcall	_UART_Init
;	transmitter.c:104: start:while(!data_r)
00102$:
	mov	a,_data_r
	jnz	00104$
;	transmitter.c:106: data_r=SBUF;
	mov	_data_r,_SBUF
;	transmitter.c:107: RI=0;
;	assignBit
	clr	_RI
;	transmitter.c:108: P2 = 0xA0; // Turn ON all LED's connected to Port1
	mov	_P2,#0xa0
;	transmitter.c:109: delay();
	lcall	_delay
;	transmitter.c:110: P2 = 0x00; // Turn OFF all LED's connected to Port1
	mov	_P2,#0x00
;	transmitter.c:111: delay();
	lcall	_delay
	sjmp	00102$
00104$:
;	transmitter.c:114: if(data_r=='x')
	mov	a,#0x78
	cjne	a,_data_r,00102$
;	transmitter.c:116: Transmit_data('y');
	mov	dpl,#0x79
	lcall	_Transmit_data
;	transmitter.c:117: data_r=0;
	mov	_data_r,#0x00
;	transmitter.c:122: InitTimer1();
	lcall	_InitTimer1
;	transmitter.c:123: ET0 = 1;         // Enable Timer1 interrupts	
;	assignBit
	setb	_ET0
;	transmitter.c:124: EA  = 1;         // Global interrupt enable
;	assignBit
	setb	_EA
;	transmitter.c:126: while(1)
00109$:
;	transmitter.c:128: touch();
	lcall	_touch
;	transmitter.c:129: check_x();
	lcall	_check_x
;	transmitter.c:131: }
	sjmp	00109$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	transmitter.c:134: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	transmitter.c:137: for(i=0;i<0x33;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	transmitter.c:138: for(j=0;j<0xff;j++);
	mov	r4,#0xff
	mov	r5,#0x00
00105$:
	mov	a,r4
	add	a,#0xff
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r3,a
	mov	ar4,r2
	mov	ar5,r3
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	transmitter.c:137: for(i=0;i<0x33;i++)
	inc	r6
	cjne	r6,#0x00,00124$
	inc	r7
00124$:
	clr	c
	mov	a,r6
	subb	a,#0x33
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00106$
;	transmitter.c:139: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	transmitter.c:141: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	transmitter.c:143: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	mov	_TMOD,#0x20
;	transmitter.c:144: TH1 = 0xFD;		/* Load value for 9600 baud rate */
	mov	_TH1,#0xfd
;	transmitter.c:145: SCON = 0x50;		/* Mode 1, reception enable */
	mov	_SCON,#0x50
;	transmitter.c:146: TR1 = 1;		/* Start timer 1 */
;	assignBit
	setb	_TR1
;	transmitter.c:147: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Transmit_data'
;------------------------------------------------------------
;tx_data                   Allocated to registers 
;------------------------------------------------------------
;	transmitter.c:149: void Transmit_data(char tx_data)
;	-----------------------------------------
;	 function Transmit_data
;	-----------------------------------------
_Transmit_data:
	mov	_SBUF,dpl
;	transmitter.c:152: while (TI==0);		/* Wait until stop bit transmit */
00101$:
;	transmitter.c:153: TI = 0;			/* Clear TI flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	transmitter.c:154: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_x'
;------------------------------------------------------------
;	transmitter.c:158: void check_x()
;	-----------------------------------------
;	 function check_x
;	-----------------------------------------
_check_x:
;	transmitter.c:161: TI=0;
;	assignBit
	clr	_TI
;	transmitter.c:162: data_r = SBUF;		/* Load char in SBUF register */
	mov	_data_r,_SBUF
;	transmitter.c:163: RI = 0;			/* Clear TI flag */
;	assignBit
	clr	_RI
;	transmitter.c:164: if(data_r=='x')
	mov	a,#0x78
	cjne	a,_data_r,00108$
;	transmitter.c:165: Transmit_data('y');
	mov	dpl,#0x79
	ljmp	_Transmit_data
00108$:
;	transmitter.c:166: else if((data_r=='m')||(data_r=='h'))
	mov	a,#0x6d
	cjne	a,_data_r,00126$
	sjmp	00103$
00126$:
	mov	a,#0x68
	cjne	a,_data_r,00104$
00103$:
;	transmitter.c:167: received = 0;
	mov	_received,#0x00
	ret
00104$:
;	transmitter.c:168: else if(data_r=='l')
	mov	a,#0x6c
	cjne	a,_data_r,00110$
;	transmitter.c:169: received = 1;
	mov	_received,#0x01
00110$:
;	transmitter.c:170: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startup'
;------------------------------------------------------------
;	transmitter.c:171: void startup(void)
;	-----------------------------------------
;	 function startup
;	-----------------------------------------
_startup:
;	transmitter.c:173: P2 = 0x00;
	mov	_P2,#0x00
;	transmitter.c:174: delay();delay();
	lcall	_delay
	lcall	_delay
;	transmitter.c:175: P2 = 0xE0;
	mov	_P2,#0xe0
;	transmitter.c:176: delay();
	lcall	_delay
;	transmitter.c:177: P2 = 0x80;
	mov	_P2,#0x80
;	transmitter.c:178: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	transmitter.c:179: P2 = 0x40;
	mov	_P2,#0x40
;	transmitter.c:180: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	transmitter.c:181: P2 = 0x20;
	mov	_P2,#0x20
;	transmitter.c:182: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	transmitter.c:183: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'touch'
;------------------------------------------------------------
;	transmitter.c:185: void touch(void)
;	-----------------------------------------
;	 function touch
;	-----------------------------------------
_touch:
;	transmitter.c:187: if(timerCount <= (time_delay*5)) // count for 1sec delay(50msx20 = 1000ms = 1sec)
	mov	__mulint_PARM_2,_time_delay
	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,r6
	subb	a,_timerCount
	mov	a,r7
	xrl	a,#0x80
	mov	b,(_timerCount + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00158$
	ljmp	00126$
00158$:
;	transmitter.c:189: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00159$
	ret
00159$:
	clr	c
	mov	a,#0x07
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00160$
	ret
00160$:
	mov	a,_state
	add	a,#(00161$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_state
	add	a,#(00162$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00161$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
00162$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
;	transmitter.c:191: case 0:	P2 =0xA0;break;	
00101$:
	mov	_P2,#0xa0
	ret
;	transmitter.c:192: case 1:	P2 =0x80;break;
00102$:
	mov	_P2,#0x80
	ret
;	transmitter.c:193: case 2:	P2 =0x80;break;
00103$:
	mov	_P2,#0x80
	ret
;	transmitter.c:194: case 3:	P2 =0xc0;break;
00104$:
	mov	_P2,#0xc0
	ret
;	transmitter.c:195: case 4:	P2 =0x60;break;
00105$:
	mov	_P2,#0x60
	ret
;	transmitter.c:196: case 5:	P2 =0x20;break;
00106$:
	mov	_P2,#0x20
	ret
;	transmitter.c:197: case 6:	P2 =0x20;break;
00107$:
	mov	_P2,#0x20
	ret
;	transmitter.c:198: case 7:	P2 =0x40;break;
00108$:
	mov	_P2,#0x40
	ret
;	transmitter.c:199: default:break;}
00126$:
;	transmitter.c:205: else if((timerCount > time_delay) &&(timerCount<time_delay*10))
	clr	c
	mov	a,_time_delay
	subb	a,_timerCount
	mov	a,(_time_delay + 1)
	xrl	a,#0x80
	mov	b,(_timerCount + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00163$
	ljmp	00122$
00163$:
	mov	__mulint_PARM_2,_time_delay
	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,_timerCount
	subb	a,r6
	mov	a,(_timerCount + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00164$
	ljmp	00122$
00164$:
;	transmitter.c:207: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00165$
	ret
00165$:
	clr	c
	mov	a,#0x07
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00166$
	ret
00166$:
	mov	a,_state
	add	a,#(00167$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_state
	add	a,#(00168$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00167$:
	.db	00116$
	.db	00116$
	.db	00117$
	.db	00116$
	.db	00116$
	.db	00118$
	.db	00116$
	.db	00116$
00168$:
	.db	00116$>>8
	.db	00116$>>8
	.db	00117$>>8
	.db	00116$>>8
	.db	00116$>>8
	.db	00118$>>8
	.db	00116$>>8
	.db	00116$>>8
;	transmitter.c:214: case 7:P2 =0x00;break;
00116$:
	mov	_P2,#0x00
;	transmitter.c:215: case 2:P2 =0x80;break;
	ret
00117$:
	mov	_P2,#0x80
;	transmitter.c:216: case 5:P2 =0x20;break;
	ret
00118$:
	mov	_P2,#0x20
;	transmitter.c:217: default:break;}
	ret
00122$:
;	transmitter.c:221: timerCount = 0;
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
;	transmitter.c:223: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer1'
;------------------------------------------------------------
;	transmitter.c:227: void InitTimer1(void)
;	-----------------------------------------
;	 function InitTimer1
;	-----------------------------------------
_InitTimer1:
;	transmitter.c:229: TMOD |= 0x01;    // Set timer0 in mode 1
	orl	_TMOD,#0x01
;	transmitter.c:230: TH0 = 0xDC;      // 50 msec reloading time
	mov	_TH0,#0xdc
;	transmitter.c:231: TL0 = 0x00;      // First time value
	mov	_TL0,#0x00
;	transmitter.c:232: TR0 = 1;         // Start Timer 1
;	assignBit
	setb	_TR0
;	transmitter.c:233: ET0 = 1;         // Enable Timer1 interrupts	
;	assignBit
	setb	_ET0
;	transmitter.c:234: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
