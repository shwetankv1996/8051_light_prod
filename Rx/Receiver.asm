;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11418 (Linux)
;--------------------------------------------------------
	.module Receiver
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
	.globl _state
	.globl _time_delay
	.globl _timerCount
	.globl _data_r
	.globl _startup
	.globl _delay
	.globl _UART_Init
	.globl _Transmit_data
	.globl _handshake
	.globl _check_data
	.globl _InitTimer0
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
_data_r::
	.ds 1
_timerCount::
	.ds 2
_time_delay::
	.ds 2
_state::
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
;	Receiver.c:22: volatile int timerCount = 0;
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
;	Receiver.c:23: volatile int time_delay = 15;
	mov	_time_delay,#0x0f
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
;	Receiver.c:27: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
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
;	Receiver.c:29: TH0  = 0Xee;         // ReLoad the timer value for 5ms
	mov	_TH0,#0xee
;	Receiver.c:30: TL0  = 0X00;
	mov	_TL0,#0x00
;	Receiver.c:31: timerCount++;
	mov	r6,_timerCount
	mov	r7,(_timerCount + 1)
	mov	a,#0x01
	add	a,r6
	mov	_timerCount,a
	clr	a
	addc	a,r7
	mov	(_timerCount + 1),a
;	Receiver.c:32: rst_out=!rst_out;
	cpl	_P1_6
;	Receiver.c:34: if(state!=20)
	mov	a,#0x14
	cjne	a,_state,00168$
	clr	a
	cjne	a,(_state + 1),00168$
	ljmp	00134$
00168$:
;	Receiver.c:36: if(timerCount < (time_delay*30)) // count for LED-ON delay
	mov	__mulint_PARM_2,_time_delay
	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
	mov	dptr,#0x001e
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
	jc	00169$
	ljmp	00130$
00169$:
;	Receiver.c:38: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00170$
	ljmp	00134$
00170$:
	clr	c
	mov	a,#0x09
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00171$
	ljmp	00134$
00171$:
	mov	a,_state
	add	a,#(00172$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_state
	add	a,#(00173$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00172$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
00173$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
;	Receiver.c:40: case 0:	P0_1 =1;P0_0 =0;P2_6=1;break;	
00101$:
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
	ljmp	00134$
;	Receiver.c:41: case 1:	P0_1 =1;P0_0 =0;P2_6=0;break;
00102$:
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	ljmp	00134$
;	Receiver.c:42: case 2:	P0_1 =1;P0_0 =0;P2_6=0;break;
00103$:
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	ljmp	00134$
;	Receiver.c:43: case 3:	P0_1 =1;P0_0 =1;P2_6=0;break;
00104$:
;	assignBit
	setb	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	clr	_P2_6
	ljmp	00134$
;	Receiver.c:44: case 4:	P0_1 =0;P0_0 =1;P2_6=1;break;
00105$:
;	assignBit
	clr	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	setb	_P2_6
	ljmp	00134$
;	Receiver.c:45: case 5:	P0_1 =0;P0_0 =0;P2_6=1;break;
00106$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
	ljmp	00134$
;	Receiver.c:46: case 6:	P0_1 =0;P0_0 =0;P2_6=1;break;
00107$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
	ljmp	00134$
;	Receiver.c:47: case 7:	P0_1 =0;P0_0 =1;P2_6=0;break;
00108$:
;	assignBit
	clr	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	clr	_P2_6
	ljmp	00134$
;	Receiver.c:48: case 8:	P0_1 =1;P0_0 =0;P2_6=0;break;
00109$:
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	ljmp	00134$
;	Receiver.c:49: case 9:	P0_1 =0;P0_0 =0;P2_6=1;break;
00110$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
	ljmp	00134$
;	Receiver.c:51: }	
00130$:
;	Receiver.c:55: else if((timerCount > time_delay) &&(timerCount<time_delay*60)) // count for LED-ON delay
	clr	c
	mov	a,_time_delay
	subb	a,_timerCount
	mov	a,(_time_delay + 1)
	xrl	a,#0x80
	mov	b,(_timerCount + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00174$
	ljmp	00126$
00174$:
	mov	__mulint_PARM_2,_time_delay
	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
	mov	dptr,#0x003c
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
	jc	00175$
	ljmp	00126$
00175$:
;	Receiver.c:57: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00176$
	ljmp	00134$
00176$:
	clr	c
	mov	a,#0x09
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00177$
	ljmp	00134$
00177$:
	mov	a,_state
	add	a,#(00178$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_state
	add	a,#(00179$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00178$:
	.db	00120$
	.db	00121$
	.db	00120$
	.db	00120$
	.db	00120$
	.db	00120$
	.db	00122$
	.db	00120$
	.db	00120$
	.db	00120$
00179$:
	.db	00120$>>8
	.db	00121$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00122$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00120$>>8
;	Receiver.c:66: case 9:P0_1 =0;P0_0 =0;P2_6=0;break;
00120$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:67: case 1:P0_1 =1;P0_0 =0;P2_6=0;break;
	sjmp	00134$
00121$:
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:68: case 6:P0_1 =0;P0_0 =0;P2_6=1;break;
	sjmp	00134$
00122$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:70: }
	sjmp	00134$
00126$:
;	Receiver.c:74: timerCount = 0;
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
00134$:
;	Receiver.c:77: }
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
;	Receiver.c:80: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	Receiver.c:82: P1=0x80;
	mov	_P1,#0x80
;	Receiver.c:83: P0=0x00;
	mov	_P0,#0x00
;	Receiver.c:84: P2=0x00;
	mov	_P2,#0x00
;	Receiver.c:85: state=20;
	mov	_state,#0x14
	mov	(_state + 1),#0x00
;	Receiver.c:86: pwr_out=0;
;	assignBit
	clr	_P0_7
;	Receiver.c:87: InitTimer0();
	lcall	_InitTimer0
;	Receiver.c:88: EA=1;
;	assignBit
	setb	_EA
;	Receiver.c:89: pwr_led = 1;
;	assignBit
	setb	_P2_0
;	Receiver.c:90: startup();
	lcall	_startup
;	Receiver.c:91: UART_Init();
	lcall	_UART_Init
;	Receiver.c:92: handshake();
	lcall	_handshake
;	Receiver.c:93: while(1)
00102$:
;	Receiver.c:95: check_data();
	lcall	_check_data
;	Receiver.c:97: } //main
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'startup'
;------------------------------------------------------------
;	Receiver.c:100: void startup()
;	-----------------------------------------
;	 function startup
;	-----------------------------------------
_startup:
;	Receiver.c:102: pwr_key=1;
;	assignBit
	setb	_P1_7
;	Receiver.c:103: pwr_led=0;
;	assignBit
	clr	_P2_0
;	Receiver.c:104: pwr_out=0;
;	assignBit
	clr	_P0_7
;	Receiver.c:105: rst_out=0;
;	assignBit
	clr	_P1_6
;	Receiver.c:106: P0_1 =1;P0_0 =1;P2_6=1;
;	assignBit
	setb	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:107: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:108: P0_1 =0;P0_0 =0;P2_6=1;
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:109: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:110: P0_1 =0;P0_0 =1;P2_6=0;
;	assignBit
	clr	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:111: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:112: P0_1 =1;P0_0 =0;P2_6=0;
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:113: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:114: P0_1 =0;P0_0 =0;P2_6=0;
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:115: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	Receiver.c:117: void delay()
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	Receiver.c:120: for(i=0;i<0x33;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	Receiver.c:121: for(j=0;j<0xff;j++);
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
;	Receiver.c:120: for(i=0;i<0x33;i++)
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
;	Receiver.c:122: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	Receiver.c:125: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	Receiver.c:127: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	mov	_TMOD,#0x20
;	Receiver.c:128: TH1 = 0xFD;		/* Load value for 9600 baud rate */
	mov	_TH1,#0xfd
;	Receiver.c:129: SCON = 0x50;		/* Mode 1, reception enable */
	mov	_SCON,#0x50
;	Receiver.c:130: TR1 = 1;		/* Start timer 1 */
;	assignBit
	setb	_TR1
;	Receiver.c:131: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Transmit_data'
;------------------------------------------------------------
;tx_data                   Allocated to registers 
;------------------------------------------------------------
;	Receiver.c:134: void Transmit_data(char tx_data)
;	-----------------------------------------
;	 function Transmit_data
;	-----------------------------------------
_Transmit_data:
	mov	_SBUF,dpl
;	Receiver.c:137: while (TI==0);		/* Wait until stop bit transmit */
00101$:
;	Receiver.c:138: TI = 0;			/* Clear TI flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	Receiver.c:139: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handshake'
;------------------------------------------------------------
;	Receiver.c:142: void handshake()
;	-----------------------------------------
;	 function handshake
;	-----------------------------------------
_handshake:
;	Receiver.c:144: while(data_r!='y')
00101$:
	mov	a,#0x79
	cjne	a,_data_r,00114$
	ret
00114$:
;	Receiver.c:146: Transmit_data('x');
	mov	dpl,#0x78
	lcall	_Transmit_data
;	Receiver.c:147: state=20;
	mov	_state,#0x14
	mov	(_state + 1),#0x00
;	Receiver.c:148: data_r=SBUF;
	mov	_data_r,_SBUF
;	Receiver.c:149: delay();
	lcall	_delay
;	Receiver.c:150: delay();
	lcall	_delay
;	Receiver.c:151: delay();
	lcall	_delay
;	Receiver.c:152: delay();
	lcall	_delay
;	Receiver.c:154: }
	sjmp	00101$
;------------------------------------------------------------
;Allocation info for local variables in function 'check_data'
;------------------------------------------------------------
;	Receiver.c:156: void check_data()
;	-----------------------------------------
;	 function check_data
;	-----------------------------------------
_check_data:
;	Receiver.c:159: data_r = SBUF;		/* Load char in SBUF register */
	mov	_data_r,_SBUF
;	Receiver.c:160: RI = 0;			/* Clear TI flag */
;	assignBit
	clr	_RI
;	Receiver.c:161: if(data_r=='l')
	mov	a,#0x6c
	cjne	a,_data_r,00128$
;	Receiver.c:162: state = 0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
	ret
00128$:
;	Receiver.c:163: else if(data_r=='a')
	mov	a,#0x61
	cjne	a,_data_r,00125$
;	Receiver.c:164: state = 1;
	mov	_state,#0x01
	mov	(_state + 1),#0x00
	ret
00125$:
;	Receiver.c:165: else if(data_r=='b')
	mov	a,#0x62
	cjne	a,_data_r,00122$
;	Receiver.c:166: state = 2;
	mov	_state,#0x02
	mov	(_state + 1),#0x00
	ret
00122$:
;	Receiver.c:167: else if(data_r=='c')
	mov	a,#0x63
	cjne	a,_data_r,00119$
;	Receiver.c:168: state = 3;
	mov	_state,#0x03
	mov	(_state + 1),#0x00
	ret
00119$:
;	Receiver.c:169: else if(data_r=='d')
	mov	a,#0x64
	cjne	a,_data_r,00116$
;	Receiver.c:170: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
	ret
00116$:
;	Receiver.c:171: else if(data_r=='e')
	mov	a,#0x65
	cjne	a,_data_r,00113$
;	Receiver.c:172: state = 4;
	mov	_state,#0x04
	mov	(_state + 1),#0x00
	ret
00113$:
;	Receiver.c:173: else if(data_r=='f')
	mov	a,#0x66
	cjne	a,_data_r,00110$
;	Receiver.c:174: state = 5;
	mov	_state,#0x05
	mov	(_state + 1),#0x00
	ret
00110$:
;	Receiver.c:175: else if(data_r=='g')
	mov	a,#0x67
	cjne	a,_data_r,00107$
;	Receiver.c:176: state = 6;
	mov	_state,#0x06
	mov	(_state + 1),#0x00
	ret
00107$:
;	Receiver.c:177: else if(data_r=='u')
	mov	a,#0x75
	cjne	a,_data_r,00104$
;	Receiver.c:178: state = 8;
	mov	_state,#0x08
	mov	(_state + 1),#0x00
	ret
00104$:
;	Receiver.c:179: else if(data_r=='n')
	mov	a,#0x6e
	cjne	a,_data_r,00130$
;	Receiver.c:180: state = 9;
	mov	_state,#0x09
	mov	(_state + 1),#0x00
00130$:
;	Receiver.c:182: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer0'
;------------------------------------------------------------
;	Receiver.c:184: void InitTimer0(void)
;	-----------------------------------------
;	 function InitTimer0
;	-----------------------------------------
_InitTimer0:
;	Receiver.c:186: TMOD |= 0x01;    // Set timer0 in mode 1
	orl	_TMOD,#0x01
;	Receiver.c:187: TH0 = 0xee;      // 5 msec reloading time
	mov	_TH0,#0xee
;	Receiver.c:188: TL0 = 0x00;      // First time value
	mov	_TL0,#0x00
;	Receiver.c:189: TR0 = 1;         // Start Timer 1
;	assignBit
	setb	_TR0
;	Receiver.c:190: ET0 = 1;         // Enable Timer1 interrupts	
;	assignBit
	setb	_ET0
;	Receiver.c:191: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
