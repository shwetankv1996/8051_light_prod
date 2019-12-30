;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11418 (Linux)
;--------------------------------------------------------
	.module transmitter_prev
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
;	transmitter_prev.c:3: int state = 0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
;	transmitter_prev.c:13: char data_r=0;
;	1-genFromRTrack replaced	mov	_data_r,#0x00
	mov	_data_r,a
;	transmitter_prev.c:14: char received=1;
	mov	_received,#0x01
;	transmitter_prev.c:15: volatile int timerCount = 0;
	mov	_timerCount,a
	mov	(_timerCount + 1),a
;	transmitter_prev.c:16: volatile int time_delay = 20;
	mov	_time_delay,#0x14
;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
	mov	(_time_delay + 1),a
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
;	transmitter_prev.c:18: void isr_timer0(void) __interrupt 1   // It is called after every 50msec
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
;	transmitter_prev.c:20: TH0  = 0X4B;         // ReLoad the timer value for 50ms
	mov	_TH0,#0x4b
;	transmitter_prev.c:21: TL0  = 0XFD;
	mov	_TL0,#0xfd
;	transmitter_prev.c:22: timerCount++;
	mov	r6,_timerCount
	mov	r7,(_timerCount + 1)
	mov	a,#0x01
	add	a,r6
	mov	_timerCount,a
	clr	a
	addc	a,r7
	mov	(_timerCount + 1),a
;	transmitter_prev.c:25: if(timerCount <= time_delay) // count for 1sec delay(50msx20 = 1000ms = 1sec)
	clr	c
	mov	a,_time_delay
	subb	a,_timerCount
	mov	a,(_time_delay + 1)
	xrl	a,#0x80
	mov	b,(_timerCount + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00158$
	ljmp	00126$
00158$:
;	transmitter_prev.c:27: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00159$
	ljmp	00128$
00159$:
	clr	c
	mov	a,#0x07
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00160$
	ljmp	00128$
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
;	transmitter_prev.c:29: case 0:		Transmit_data('l');P2 =0xA0;break;	
00101$:
	mov	dpl,#0x6c
	lcall	_Transmit_data
	mov	_P2,#0xa0
	ljmp	00128$
;	transmitter_prev.c:30: case 1:		Transmit_data('a');P2 =0x80;break;
00102$:
	mov	dpl,#0x61
	lcall	_Transmit_data
	mov	_P2,#0x80
	ljmp	00128$
;	transmitter_prev.c:31: case 2:		Transmit_data('b');P2 =0x80;break;
00103$:
	mov	dpl,#0x62
	lcall	_Transmit_data
	mov	_P2,#0x80
	ljmp	00128$
;	transmitter_prev.c:32: case 3:		Transmit_data('c');P2 =0xc0;break;
00104$:
	mov	dpl,#0x63
	lcall	_Transmit_data
	mov	_P2,#0xc0
	ljmp	00128$
;	transmitter_prev.c:33: case 4:		Transmit_data('e');P2 =0x60;break;
00105$:
	mov	dpl,#0x65
	lcall	_Transmit_data
	mov	_P2,#0x60
	ljmp	00128$
;	transmitter_prev.c:34: case 5:		Transmit_data('f');P2 =0x20;break;
00106$:
	mov	dpl,#0x66
	lcall	_Transmit_data
	mov	_P2,#0x20
	ljmp	00128$
;	transmitter_prev.c:35: case 6:		Transmit_data('g');P2 =0x20;break;
00107$:
	mov	dpl,#0x67
	lcall	_Transmit_data
	mov	_P2,#0x20
	ljmp	00128$
;	transmitter_prev.c:36: case 7:		Transmit_data('d');P2 =0x40;break;
00108$:
	mov	dpl,#0x64
	lcall	_Transmit_data
	mov	_P2,#0x40
	ljmp	00128$
;	transmitter_prev.c:37: default:break;}
00126$:
;	transmitter_prev.c:40: else if((timerCount > time_delay) &&(timerCount<time_delay*2))
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
	mov	a,_time_delay
	add	a,acc
	mov	r6,a
	mov	a,(_time_delay + 1)
	rlc	a
	mov	r7,a
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
;	transmitter_prev.c:42: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00165$
	ljmp	00128$
00165$:
	clr	c
	mov	a,#0x07
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00166$
	ljmp	00128$
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
;	transmitter_prev.c:49: case 7:P2 =0x00;break;
00116$:
	mov	_P2,#0x00
;	transmitter_prev.c:50: case 2:P2 =0x80;break;
	sjmp	00128$
00117$:
	mov	_P2,#0x80
;	transmitter_prev.c:51: case 5:P2 =0x20;break;
	sjmp	00128$
00118$:
	mov	_P2,#0x20
;	transmitter_prev.c:52: default:break;}
	sjmp	00128$
00122$:
;	transmitter_prev.c:56: timerCount = 0;
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
00128$:
;	transmitter_prev.c:57: }
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
;	transmitter_prev.c:59: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	transmitter_prev.c:61: P1 = 0xff;
	mov	_P1,#0xff
;	transmitter_prev.c:62: P2 = 0x00;
;	transmitter_prev.c:63: state = 0;
	clr	a
	mov	_P2,a
	mov	_state,a
	mov	(_state + 1),a
;	transmitter_prev.c:64: startup();
	lcall	_startup
;	transmitter_prev.c:65: P2 = 0x00;
	mov	_P2,#0x00
;	transmitter_prev.c:66: UART_Init();
	lcall	_UART_Init
;	transmitter_prev.c:67: start:while(!data_r)
00102$:
	mov	a,_data_r
	jnz	00104$
;	transmitter_prev.c:69: data_r=SBUF;
	mov	_data_r,_SBUF
;	transmitter_prev.c:70: RI=0;
;	assignBit
	clr	_RI
;	transmitter_prev.c:71: P2 = 0xA0; // Turn ON all LED's connected to Port1
	mov	_P2,#0xa0
;	transmitter_prev.c:72: delay();
	lcall	_delay
;	transmitter_prev.c:73: P2 = 0x00; // Turn OFF all LED's connected to Port1
	mov	_P2,#0x00
;	transmitter_prev.c:74: delay();
	lcall	_delay
	sjmp	00102$
00104$:
;	transmitter_prev.c:77: if(data_r=='x')
	mov	a,#0x78
	cjne	a,_data_r,00102$
;	transmitter_prev.c:79: Transmit_data('y');
	mov	dpl,#0x79
	lcall	_Transmit_data
;	transmitter_prev.c:80: data_r=0;
	mov	_data_r,#0x00
;	transmitter_prev.c:85: InitTimer1();
	lcall	_InitTimer1
;	transmitter_prev.c:86: ET0 = 1;         // Enable Timer1 interrupts	
;	assignBit
	setb	_ET0
;	transmitter_prev.c:87: EA  = 1;         // Global interrupt enable
;	assignBit
	setb	_EA
;	transmitter_prev.c:89: while(1)
00109$:
;	transmitter_prev.c:91: touch();
	lcall	_touch
;	transmitter_prev.c:92: check_x();
	lcall	_check_x
;	transmitter_prev.c:94: }
	sjmp	00109$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	transmitter_prev.c:97: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	transmitter_prev.c:100: for(i=0;i<0x33;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	transmitter_prev.c:101: for(j=0;j<0xff;j++);
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
;	transmitter_prev.c:100: for(i=0;i<0x33;i++)
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
;	transmitter_prev.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	transmitter_prev.c:104: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	transmitter_prev.c:106: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	mov	_TMOD,#0x20
;	transmitter_prev.c:107: TH1 = 0xFD;		/* Load value for 9600 baud rate */
	mov	_TH1,#0xfd
;	transmitter_prev.c:108: SCON = 0x50;		/* Mode 1, reception enable */
	mov	_SCON,#0x50
;	transmitter_prev.c:109: TR1 = 1;		/* Start timer 1 */
;	assignBit
	setb	_TR1
;	transmitter_prev.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Transmit_data'
;------------------------------------------------------------
;tx_data                   Allocated to registers 
;------------------------------------------------------------
;	transmitter_prev.c:112: void Transmit_data(char tx_data)
;	-----------------------------------------
;	 function Transmit_data
;	-----------------------------------------
_Transmit_data:
	mov	_SBUF,dpl
;	transmitter_prev.c:115: while (TI==0);		/* Wait until stop bit transmit */
00101$:
;	transmitter_prev.c:116: TI = 0;			/* Clear TI flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	transmitter_prev.c:117: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_x'
;------------------------------------------------------------
;	transmitter_prev.c:121: void check_x()
;	-----------------------------------------
;	 function check_x
;	-----------------------------------------
_check_x:
;	transmitter_prev.c:124: TI=0;
;	assignBit
	clr	_TI
;	transmitter_prev.c:125: data_r = SBUF;		/* Load char in SBUF register */
	mov	_data_r,_SBUF
;	transmitter_prev.c:126: RI = 0;			/* Clear TI flag */
;	assignBit
	clr	_RI
;	transmitter_prev.c:127: if(data_r=='x')
	mov	a,#0x78
	cjne	a,_data_r,00108$
;	transmitter_prev.c:128: Transmit_data('y');
	mov	dpl,#0x79
	ljmp	_Transmit_data
00108$:
;	transmitter_prev.c:129: else if((data_r=='m')||(data_r=='h'))
	mov	a,#0x6d
	cjne	a,_data_r,00126$
	sjmp	00103$
00126$:
	mov	a,#0x68
	cjne	a,_data_r,00104$
00103$:
;	transmitter_prev.c:130: received = 0;
	mov	_received,#0x00
	ret
00104$:
;	transmitter_prev.c:131: else if(data_r=='l')
	mov	a,#0x6c
	cjne	a,_data_r,00110$
;	transmitter_prev.c:132: received = 1;
	mov	_received,#0x01
00110$:
;	transmitter_prev.c:133: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startup'
;------------------------------------------------------------
;	transmitter_prev.c:134: void startup(void)
;	-----------------------------------------
;	 function startup
;	-----------------------------------------
_startup:
;	transmitter_prev.c:136: P2 = 0x00;
	mov	_P2,#0x00
;	transmitter_prev.c:137: delay();delay();
	lcall	_delay
	lcall	_delay
;	transmitter_prev.c:138: P2 = 0xE0;
	mov	_P2,#0xe0
;	transmitter_prev.c:139: delay();
	lcall	_delay
;	transmitter_prev.c:140: P2 = 0x80;
	mov	_P2,#0x80
;	transmitter_prev.c:141: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	transmitter_prev.c:142: P2 = 0x40;
	mov	_P2,#0x40
;	transmitter_prev.c:143: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	transmitter_prev.c:144: P2 = 0x20;
	mov	_P2,#0x20
;	transmitter_prev.c:145: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	transmitter_prev.c:146: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'touch'
;------------------------------------------------------------
;	transmitter_prev.c:148: void touch(void)
;	-----------------------------------------
;	 function touch
;	-----------------------------------------
_touch:
;	transmitter_prev.c:150: switch(P1)
	mov	r7,_P1
	cjne	r7,#0x1f,00154$
	ljmp	00113$
00154$:
	cjne	r7,#0x2f,00155$
	ljmp	00112$
00155$:
	cjne	r7,#0x37,00156$
	ljmp	00108$
00156$:
	cjne	r7,#0x3b,00157$
	sjmp	00104$
00157$:
	cjne	r7,#0x3d,00158$
	sjmp	00103$
00158$:
	cjne	r7,#0x3e,00159$
	sjmp	00102$
00159$:
	cjne	r7,#0x3f,00160$
	sjmp	00161$
00160$:
	ret
00161$:
;	transmitter_prev.c:153: Transmit_data('l');
	mov	dpl,#0x6c
	lcall	_Transmit_data
;	transmitter_prev.c:154: time_delay=10;
	mov	_time_delay,#0x0a
;	transmitter_prev.c:155: state = 0;
	clr	a
	mov	(_time_delay + 1),a
	mov	_state,a
	mov	(_state + 1),a
;	transmitter_prev.c:156: break;
	ret
;	transmitter_prev.c:158: case 0x3e:
00102$:
;	transmitter_prev.c:159: Transmit_data('a');
	mov	dpl,#0x61
	lcall	_Transmit_data
;	transmitter_prev.c:160: time_delay=120;
	mov	_time_delay,#0x78
	mov	(_time_delay + 1),#0x00
;	transmitter_prev.c:161: state = 1;
	mov	_state,#0x01
	mov	(_state + 1),#0x00
;	transmitter_prev.c:162: break;
	ret
;	transmitter_prev.c:164: case 0x3d:
00103$:
;	transmitter_prev.c:165: Transmit_data('b');
	mov	dpl,#0x62
	lcall	_Transmit_data
;	transmitter_prev.c:166: state = 2;
	mov	_state,#0x02
	mov	(_state + 1),#0x00
;	transmitter_prev.c:167: time_delay=5;
	mov	_time_delay,#0x05
	mov	(_time_delay + 1),#0x00
;	transmitter_prev.c:168: break;
;	transmitter_prev.c:170: case 0x3b:
	ret
00104$:
;	transmitter_prev.c:171: if(received)
	mov	a,_received
	jz	00106$
;	transmitter_prev.c:172: {Transmit_data('d');
	mov	dpl,#0x64
	lcall	_Transmit_data
;	transmitter_prev.c:173: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
	sjmp	00107$
00106$:
;	transmitter_prev.c:176: {Transmit_data('c');
	mov	dpl,#0x63
	lcall	_Transmit_data
;	transmitter_prev.c:177: state = 3;
	mov	_state,#0x03
	mov	(_state + 1),#0x00
00107$:
;	transmitter_prev.c:179: time_delay=10;
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	transmitter_prev.c:180: break;
;	transmitter_prev.c:182: case 0x37:
	ret
00108$:
;	transmitter_prev.c:183: if(received)
	mov	a,_received
	jz	00110$
;	transmitter_prev.c:184: {Transmit_data('d');
	mov	dpl,#0x64
	lcall	_Transmit_data
;	transmitter_prev.c:185: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
	sjmp	00111$
00110$:
;	transmitter_prev.c:188: {Transmit_data('e');
	mov	dpl,#0x65
	lcall	_Transmit_data
;	transmitter_prev.c:189: state = 4;
	mov	_state,#0x04
	mov	(_state + 1),#0x00
00111$:
;	transmitter_prev.c:191: time_delay=10;
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	transmitter_prev.c:192: break;
;	transmitter_prev.c:194: case 0x2f:
	ret
00112$:
;	transmitter_prev.c:195: Transmit_data('f');
	mov	dpl,#0x66
	lcall	_Transmit_data
;	transmitter_prev.c:196: state = 5;
	mov	_state,#0x05
	mov	(_state + 1),#0x00
;	transmitter_prev.c:197: time_delay=5;
	mov	_time_delay,#0x05
	mov	(_time_delay + 1),#0x00
;	transmitter_prev.c:198: break;
;	transmitter_prev.c:200: case 0x1f:
	ret
00113$:
;	transmitter_prev.c:201: state = 6;
	mov	_state,#0x06
	mov	(_state + 1),#0x00
;	transmitter_prev.c:202: time_delay=120;
	mov	_time_delay,#0x78
	mov	(_time_delay + 1),#0x00
;	transmitter_prev.c:206: }
;	transmitter_prev.c:207: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer1'
;------------------------------------------------------------
;	transmitter_prev.c:211: void InitTimer1(void)
;	-----------------------------------------
;	 function InitTimer1
;	-----------------------------------------
_InitTimer1:
;	transmitter_prev.c:213: TMOD |= 0x01;    // Set timer0 in mode 1
	orl	_TMOD,#0x01
;	transmitter_prev.c:214: TH0 = 0x4B;      // 50 msec reloading time
	mov	_TH0,#0x4b
;	transmitter_prev.c:215: TL0 = 0xFD;      // First time value
	mov	_TL0,#0xfd
;	transmitter_prev.c:216: TR0 = 1;         // Start Timer 1
;	assignBit
	setb	_TR0
;	transmitter_prev.c:217: ET0 = 1;         // Enable Timer1 interrupts	
;	assignBit
	setb	_ET0
;	transmitter_prev.c:218: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
