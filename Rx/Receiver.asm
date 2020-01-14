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
	.globl _auto_flag
	.globl _ac_state
	.globl _off
	.globl _state
	.globl _time_delay
	.globl _timerCount
	.globl _data_r
	.globl _start
	.globl _startup
	.globl _delay
	.globl _UART_Init
	.globl _Transmit_data
	.globl _handshake
	.globl _check_data
	.globl _InitTimer0
	.globl _check_ac
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
_start::
	.ds 1
_data_r::
	.ds 1
_timerCount::
	.ds 2
_time_delay::
	.ds 2
_state::
	.ds 2
_off::
	.ds 2
_ac_state::
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
_auto_flag::
	.ds 1
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
;	Receiver.c:33: char start=0;
	mov	_start,#0x00
;	Receiver.c:35: volatile int timerCount = 0;
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
;	Receiver.c:36: volatile int time_delay = 15;
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
;	Receiver.c:40: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
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
;	Receiver.c:42: TH0  = 0Xee;         // ReLoad the timer value for 5ms
	mov	_TH0,#0xee
;	Receiver.c:43: TL0  = 0X00;
	mov	_TL0,#0x00
;	Receiver.c:44: timerCount++;
	mov	r6,_timerCount
	mov	r7,(_timerCount + 1)
	mov	a,#0x01
	add	a,r6
	mov	_timerCount,a
	clr	a
	addc	a,r7
	mov	(_timerCount + 1),a
;	Receiver.c:45: rst_out=!rst_out;
	cpl	_P1_6
;	Receiver.c:47: if(state!=20)
	mov	a,#0x14
	cjne	a,_state,00257$
	clr	a
	cjne	a,(_state + 1),00257$
	ljmp	00153$
00257$:
;	Receiver.c:49: if(timerCount < (time_delay*30)) // count for LED-ON delay
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
	jc	00258$
	ljmp	00150$
00258$:
;	Receiver.c:51: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00259$
	ljmp	00153$
00259$:
	clr	c
	mov	a,#0x09
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00260$
	ljmp	00153$
00260$:
	mov	a,_state
	add	a,#(00261$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_state
	add	a,#(00262$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00261$:
	.db	00101$
	.db	00104$
	.db	00107$
	.db	00110$
	.db	00113$
	.db	00116$
	.db	00119$
	.db	00122$
	.db	00123$
	.db	00126$
00262$:
	.db	00101$>>8
	.db	00104$>>8
	.db	00107$>>8
	.db	00110$>>8
	.db	00113$>>8
	.db	00116$>>8
	.db	00119$>>8
	.db	00122$>>8
	.db	00123$>>8
	.db	00126$>>8
;	Receiver.c:53: case 0:	P0_1 =!P0_1;P0_0 =0;P2_6=!P2_6;
00101$:
	cpl	_P0_1
;	assignBit
	clr	_P0_0
	cpl	_P2_6
;	Receiver.c:54: if(auto_flag)	auto_led=1;
	jnb	_auto_flag,00103$
;	assignBit
	setb	_P2_1
00103$:
;	Receiver.c:55: up_led=0;	down_led=0;
;	assignBit
	clr	_P2_7
;	assignBit
	clr	_P2_4
;	Receiver.c:56: break;	
	ljmp	00153$
;	Receiver.c:57: case 1:	P0_1 =!P0_1;P0_0 =0;P2_6=0;
00104$:
	cpl	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:58: if(auto_flag)
	jb	_auto_flag,00264$
	ljmp	00153$
00264$:
;	Receiver.c:59: up_led=1;
;	assignBit
	setb	_P2_7
;	Receiver.c:60: break;
	ljmp	00153$
;	Receiver.c:61: case 2:	P0_1 =!P0_1;P0_0 =0;P2_6=0;
00107$:
	cpl	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:62: if(auto_flag)
	jb	_auto_flag,00265$
	ljmp	00153$
00265$:
;	Receiver.c:63: up_led=1;
;	assignBit
	setb	_P2_7
;	Receiver.c:64: break;
	ljmp	00153$
;	Receiver.c:65: case 3:	P0_1 =!P0_1;P0_0 =!P0_0;P2_6=0;
00110$:
	cpl	_P0_1
	cpl	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:66: if(auto_flag)
	jb	_auto_flag,00266$
	ljmp	00153$
00266$:
;	Receiver.c:67: up_led=1;
;	assignBit
	setb	_P2_7
;	Receiver.c:68: break;
	ljmp	00153$
;	Receiver.c:69: case 4:	P0_1 =0;P0_0 =!P0_0;P2_6=!P2_6;
00113$:
;	assignBit
	clr	_P0_1
	cpl	_P0_0
	cpl	_P2_6
;	Receiver.c:70: if(auto_flag)
	jb	_auto_flag,00267$
	ljmp	00153$
00267$:
;	Receiver.c:71: down_led=1;
;	assignBit
	setb	_P2_4
;	Receiver.c:72: break;
	ljmp	00153$
;	Receiver.c:73: case 5:	P0_1 =0;P0_0 =0;P2_6=!P2_6;
00116$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
	cpl	_P2_6
;	Receiver.c:74: if(auto_flag)
	jb	_auto_flag,00268$
	ljmp	00153$
00268$:
;	Receiver.c:75: down_led=1;
;	assignBit
	setb	_P2_4
;	Receiver.c:76: break;
	ljmp	00153$
;	Receiver.c:77: case 6:	P0_1 =0;P0_0 =0;P2_6=!P2_6;
00119$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
	cpl	_P2_6
;	Receiver.c:78: if(auto_flag)
	jb	_auto_flag,00269$
	ljmp	00153$
00269$:
;	Receiver.c:79: down_led=1;
;	assignBit
	setb	_P2_4
;	Receiver.c:80: break;
	ljmp	00153$
;	Receiver.c:81: case 7:	P0_1 =0;P0_0 =!P0_0;P2_6=0;break;
00122$:
;	assignBit
	clr	_P0_1
	cpl	_P0_0
;	assignBit
	clr	_P2_6
	ljmp	00153$
;	Receiver.c:82: case 8:	P0_1 =!P0_1;P0_0 =0;P2_6=0;
00123$:
	cpl	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:83: if(auto_flag)
	jb	_auto_flag,00270$
	ljmp	00153$
00270$:
;	Receiver.c:84: up_led=1;
;	assignBit
	setb	_P2_7
;	Receiver.c:85: break;
	ljmp	00153$
;	Receiver.c:86: case 9:	P0_1 =0;P0_0 =0;P2_6=!P2_6;
00126$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
	cpl	_P2_6
;	Receiver.c:87: if(auto_flag)
	jb	_auto_flag,00271$
	ljmp	00153$
00271$:
;	Receiver.c:88: down_led=1;
;	assignBit
	setb	_P2_4
;	Receiver.c:89: break;
	ljmp	00153$
;	Receiver.c:91: }	
00150$:
;	Receiver.c:95: else if((timerCount > time_delay) &&(timerCount<time_delay*60)) // count for LED-ON delay
	clr	c
	mov	a,_time_delay
	subb	a,_timerCount
	mov	a,(_time_delay + 1)
	xrl	a,#0x80
	mov	b,(_timerCount + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00272$
	ljmp	00146$
00272$:
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
	jc	00273$
	ljmp	00146$
00273$:
;	Receiver.c:97: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00274$
	ljmp	00153$
00274$:
	clr	c
	mov	a,#0x09
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00275$
	ljmp	00153$
00275$:
	mov	a,_state
	add	a,#(00276$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_state
	add	a,#(00277$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00276$:
	.db	00131$
	.db	00141$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00142$
	.db	00140$
	.db	00140$
	.db	00140$
00277$:
	.db	00131$>>8
	.db	00141$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00142$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
;	Receiver.c:99: case 0:	if(auto_flag)	auto_led=0;
00131$:
	jnb	_auto_flag,00140$
;	assignBit
	clr	_P2_1
;	Receiver.c:106: case 9:P0_1 =0;P0_0 =0;P2_6=0;up_led=0;down_led=0;break;
00140$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	assignBit
	clr	_P2_7
;	assignBit
	clr	_P2_4
;	Receiver.c:107: case 1:P0_1 =!P0_1;P0_0 =0;P2_6=0;up_led=1;down_led=0;break;
	sjmp	00153$
00141$:
	cpl	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	assignBit
	setb	_P2_7
;	assignBit
	clr	_P2_4
;	Receiver.c:108: case 6:P0_1 =0;P0_0 =0;P2_6=!P2_6;up_led=0;down_led=1;break;
	sjmp	00153$
00142$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
	cpl	_P2_6
;	assignBit
	clr	_P2_7
;	assignBit
	setb	_P2_4
;	Receiver.c:110: }
	sjmp	00153$
00146$:
;	Receiver.c:114: timerCount = 0;
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
00153$:
;	Receiver.c:117: if((!pwr_key)&&(start))
	jb	_P1_7,00160$
	mov	a,_start
	jz	00160$
;	Receiver.c:119: off++;
	inc	_off
	clr	a
	cjne	a,_off,00281$
	inc	(_off + 1)
00281$:
;	Receiver.c:120: if(off>50)
	clr	c
	mov	a,#0x32
	subb	a,_off
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_off + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00163$
;	Receiver.c:121: {pwr_out=1;
;	assignBit
	setb	_P0_7
;	Receiver.c:122: pwr_led=0;P0_1 =0;P0_0 =0;P2_6=0;ac_led_up=0;ac_led_down=0;auto_led=0;
;	assignBit
	clr	_P2_0
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	assignBit
	clr	_P2_2
;	assignBit
	clr	_P2_3
;	assignBit
	clr	_P2_1
;	Receiver.c:123: TR0 = 0;         // Start Timer 1
;	assignBit
	clr	_TR0
;	Receiver.c:124: while(!pwr_key);}
00154$:
	jnb	_P1_7,00154$
	sjmp	00163$
00160$:
;	Receiver.c:127: else off=0;
	clr	a
	mov	_off,a
	mov	(_off + 1),a
00163$:
;	Receiver.c:128: }
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
;	Receiver.c:131: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	Receiver.c:133: state=20;
	mov	_state,#0x14
	mov	(_state + 1),#0x00
;	Receiver.c:134: pwr_out=0;
;	assignBit
	clr	_P0_7
;	Receiver.c:135: InitTimer0();
	lcall	_InitTimer0
;	Receiver.c:136: EA=1;
;	assignBit
	setb	_EA
;	Receiver.c:137: startup();
	lcall	_startup
;	Receiver.c:138: start=1;
	mov	_start,#0x01
;	Receiver.c:139: UART_Init();
	lcall	_UART_Init
;	Receiver.c:140: handshake();
	lcall	_handshake
;	Receiver.c:141: while(1)
00102$:
;	Receiver.c:143: check_ac();
	lcall	_check_ac
;	Receiver.c:144: check_data();
	lcall	_check_data
;	Receiver.c:146: } //main
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'startup'
;------------------------------------------------------------
;	Receiver.c:149: void startup()
;	-----------------------------------------
;	 function startup
;	-----------------------------------------
_startup:
;	Receiver.c:151: P0=0x00;
	mov	_P0,#0x00
;	Receiver.c:152: P2=0x00;
	mov	_P2,#0x00
;	Receiver.c:154: pwr_key=1;
;	assignBit
	setb	_P1_7
;	Receiver.c:155: dim_key=1;
;	assignBit
	setb	_P1_4
;	Receiver.c:156: ac_key=1;
;	assignBit
	setb	_P1_3
;	Receiver.c:157: auto_key=1;
;	assignBit
	setb	_P1_2
;	Receiver.c:159: pwr_out=0;
;	assignBit
	clr	_P0_7
;	Receiver.c:160: rst_out=0;
;	assignBit
	clr	_P1_6
;	Receiver.c:162: pwr_led=0;
;	assignBit
	clr	_P2_0
;	Receiver.c:163: auto_led=0;
;	assignBit
	clr	_P2_1
;	Receiver.c:164: ac_led_up=0;
;	assignBit
	clr	_P2_2
;	Receiver.c:165: ac_led_down=0;
;	assignBit
	clr	_P2_3
;	Receiver.c:166: up_led=0;
;	assignBit
	clr	_P2_7
;	Receiver.c:167: down_led=0;
;	assignBit
	clr	_P2_4
;	Receiver.c:169: pwr_led=1;
;	assignBit
	setb	_P2_0
;	Receiver.c:170: auto_led=0;
;	assignBit
	clr	_P2_1
;	Receiver.c:171: ac_led_up=1;ac_led_down=0;
;	assignBit
	setb	_P2_2
;	assignBit
	clr	_P2_3
;	Receiver.c:172: auto_flag = 0;
;	assignBit
	clr	_auto_flag
;	Receiver.c:174: P0_1 =1;P0_0 =1;P2_6=1;
;	assignBit
	setb	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:175: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:176: P0_1 =0;P0_0 =0;P2_6=1;
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:177: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:178: P0_1 =0;P0_0 =1;P2_6=0;
;	assignBit
	clr	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:179: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:180: P0_1 =1;P0_0 =0;P2_6=0;
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:181: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:182: P0_1 =0;P0_0 =0;P2_6=0;
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:183: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	Receiver.c:185: void delay()
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	Receiver.c:188: for(i=0;i<0x33;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	Receiver.c:189: for(j=0;j<0xff;j++);
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
;	Receiver.c:188: for(i=0;i<0x33;i++)
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
;	Receiver.c:190: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	Receiver.c:193: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	Receiver.c:195: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	mov	_TMOD,#0x20
;	Receiver.c:196: TH1 = 0xFD;		/* Load value for 9600 baud rate */
	mov	_TH1,#0xfd
;	Receiver.c:197: SCON = 0x50;		/* Mode 1, reception enable */
	mov	_SCON,#0x50
;	Receiver.c:198: TR1 = 1;		/* Start timer 1 */
;	assignBit
	setb	_TR1
;	Receiver.c:199: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Transmit_data'
;------------------------------------------------------------
;tx_data                   Allocated to registers 
;------------------------------------------------------------
;	Receiver.c:202: void Transmit_data(char tx_data)
;	-----------------------------------------
;	 function Transmit_data
;	-----------------------------------------
_Transmit_data:
	mov	_SBUF,dpl
;	Receiver.c:205: while (TI==0);		/* Wait until stop bit transmit */
00101$:
;	Receiver.c:206: TI = 0;			/* Clear TI flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	Receiver.c:207: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handshake'
;------------------------------------------------------------
;	Receiver.c:210: void handshake()
;	-----------------------------------------
;	 function handshake
;	-----------------------------------------
_handshake:
;	Receiver.c:212: while(data_r!='y')
00103$:
	mov	a,#0x79
	cjne	a,_data_r,00120$
	sjmp	00105$
00120$:
;	Receiver.c:214: Transmit_data('x');
	mov	dpl,#0x78
	lcall	_Transmit_data
;	Receiver.c:215: state=20;
	mov	_state,#0x14
	mov	(_state + 1),#0x00
;	Receiver.c:216: data_r=SBUF;
	mov	_data_r,_SBUF
;	Receiver.c:217: delay();
	lcall	_delay
;	Receiver.c:218: delay();
	lcall	_delay
;	Receiver.c:219: delay();
	lcall	_delay
;	Receiver.c:220: delay();
	lcall	_delay
;	Receiver.c:221: if(timerCount>10000)timerCount=0;
	clr	c
	mov	a,#0x10
	subb	a,_timerCount
	mov	a,#(0x27 ^ 0x80)
	mov	b,(_timerCount + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
	sjmp	00103$
00105$:
;	Receiver.c:223: delay();
	lcall	_delay
;	Receiver.c:224: Transmit_data('m');
	mov	dpl,#0x6d
;	Receiver.c:225: }
	ljmp	_Transmit_data
;------------------------------------------------------------
;Allocation info for local variables in function 'check_data'
;------------------------------------------------------------
;	Receiver.c:227: void check_data()
;	-----------------------------------------
;	 function check_data
;	-----------------------------------------
_check_data:
;	Receiver.c:230: data_r = SBUF;		/* Load char in SBUF register */
	mov	_data_r,_SBUF
;	Receiver.c:231: RI = 0;			/* Clear TI flag */
;	assignBit
	clr	_RI
;	Receiver.c:232: if(data_r=='l')
	mov	a,#0x6c
	cjne	a,_data_r,00149$
;	Receiver.c:234: time_delay=20;
	mov	_time_delay,#0x14
;	Receiver.c:235: state = 0;
	clr	a
	mov	(_time_delay + 1),a
	mov	_state,a
	mov	(_state + 1),a
;	Receiver.c:236: auto_led=0;
;	assignBit
	clr	_P2_1
	ret
00149$:
;	Receiver.c:238: else if(data_r=='a')
	mov	a,#0x61
	cjne	a,_data_r,00146$
;	Receiver.c:240: time_delay=20;
	mov	_time_delay,#0x14
	mov	(_time_delay + 1),#0x00
;	Receiver.c:241: state = 1;
	mov	_state,#0x01
	mov	(_state + 1),#0x00
;	Receiver.c:242: if(auto_flag)	auto_led=1;
	jb	_auto_flag,00237$
	ret
00237$:
;	assignBit
	setb	_P2_1
	ret
00146$:
;	Receiver.c:244: else if(data_r=='b')
	mov	a,#0x62
	cjne	a,_data_r,00143$
;	Receiver.c:246: time_delay=10;
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	Receiver.c:247: state = 2;
	mov	_state,#0x02
	mov	(_state + 1),#0x00
;	Receiver.c:248: if(auto_flag)	auto_led=1;
	jb	_auto_flag,00240$
	ret
00240$:
;	assignBit
	setb	_P2_1
	ret
00143$:
;	Receiver.c:250: else if(data_r=='c')
	mov	a,#0x63
	cjne	a,_data_r,00140$
;	Receiver.c:252: time_delay=7;
	mov	_time_delay,#0x07
	mov	(_time_delay + 1),#0x00
;	Receiver.c:253: state = 3;
	mov	_state,#0x03
	mov	(_state + 1),#0x00
;	Receiver.c:254: if(auto_flag)	auto_led=1;
	jb	_auto_flag,00243$
	ret
00243$:
;	assignBit
	setb	_P2_1
	ret
00140$:
;	Receiver.c:256: else if(data_r=='d')
	mov	a,#0x64
	cjne	a,_data_r,00137$
;	Receiver.c:258: time_delay=7;
	mov	_time_delay,#0x07
	mov	(_time_delay + 1),#0x00
;	Receiver.c:259: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
;	Receiver.c:260: if(auto_flag)	auto_led=1;
	jb	_auto_flag,00246$
	ret
00246$:
;	assignBit
	setb	_P2_1
	ret
00137$:
;	Receiver.c:262: else if(data_r=='e')
	mov	a,#0x65
	cjne	a,_data_r,00134$
;	Receiver.c:264: time_delay=7;
	mov	_time_delay,#0x07
	mov	(_time_delay + 1),#0x00
;	Receiver.c:265: state = 4;
	mov	_state,#0x04
	mov	(_state + 1),#0x00
;	Receiver.c:266: if(auto_flag)	auto_led=1;
	jb	_auto_flag,00249$
	ret
00249$:
;	assignBit
	setb	_P2_1
	ret
00134$:
;	Receiver.c:268: else if(data_r=='f')
	mov	a,#0x66
	cjne	a,_data_r,00131$
;	Receiver.c:270: time_delay=10;
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	Receiver.c:271: state = 5;
	mov	_state,#0x05
	mov	(_state + 1),#0x00
;	Receiver.c:272: if(auto_flag)	auto_led=1;
	jnb	_auto_flag,00151$
;	assignBit
	setb	_P2_1
	ret
00131$:
;	Receiver.c:274: else if(data_r=='g')
	mov	a,#0x67
	cjne	a,_data_r,00128$
;	Receiver.c:276: time_delay=15;
	mov	_time_delay,#0x0f
	mov	(_time_delay + 1),#0x00
;	Receiver.c:277: state = 6;
	mov	_state,#0x06
	mov	(_state + 1),#0x00
;	Receiver.c:278: if(auto_flag)	auto_led=1;
	jnb	_auto_flag,00151$
;	assignBit
	setb	_P2_1
	ret
00128$:
;	Receiver.c:280: else if(data_r=='u')
	mov	a,#0x75
	cjne	a,_data_r,00125$
;	Receiver.c:282: time_delay=8;
	mov	_time_delay,#0x08
	mov	(_time_delay + 1),#0x00
;	Receiver.c:283: state = 9;
	mov	_state,#0x09
	mov	(_state + 1),#0x00
;	Receiver.c:284: if(auto_flag)	auto_led=1;
	jnb	_auto_flag,00151$
;	assignBit
	setb	_P2_1
	ret
00125$:
;	Receiver.c:286: else if(data_r=='n')
	mov	a,#0x6e
	cjne	a,_data_r,00122$
;	Receiver.c:288: time_delay=8;
	mov	_time_delay,#0x08
	mov	(_time_delay + 1),#0x00
;	Receiver.c:289: state = 8;
	mov	_state,#0x08
	mov	(_state + 1),#0x00
;	Receiver.c:290: if(auto_flag)	auto_led=1;
	jnb	_auto_flag,00151$
;	assignBit
	setb	_P2_1
	ret
00122$:
;	Receiver.c:293: if(timerCount>1200)handshake();}
	clr	c
	mov	a,#0xb0
	subb	a,_timerCount
	mov	a,#(0x04 ^ 0x80)
	mov	b,(_timerCount + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00151$
;	Receiver.c:294: }
	ljmp	_handshake
00151$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer0'
;------------------------------------------------------------
;	Receiver.c:296: void InitTimer0(void)
;	-----------------------------------------
;	 function InitTimer0
;	-----------------------------------------
_InitTimer0:
;	Receiver.c:298: TMOD |= 0x01;    // Set timer0 in mode 1
	orl	_TMOD,#0x01
;	Receiver.c:299: TH0 = 0xee;      // 5 msec reloading time
	mov	_TH0,#0xee
;	Receiver.c:300: TL0 = 0x00;      // First time value
	mov	_TL0,#0x00
;	Receiver.c:301: TR0 = 1;         // Start Timer 1
;	assignBit
	setb	_TR0
;	Receiver.c:302: ET0 = 1;         // Enable Timer1 interrupts	
;	assignBit
	setb	_ET0
;	Receiver.c:303: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_ac'
;------------------------------------------------------------
;	Receiver.c:305: void check_ac()
;	-----------------------------------------
;	 function check_ac
;	-----------------------------------------
_check_ac:
;	Receiver.c:307: if(!ac_key)
	jb	_P1_3,00109$
;	Receiver.c:309: ac_state++;		
	inc	_ac_state
;	Receiver.c:310: if(ac_state==3)
	mov	a,#0x03
	cjne	a,_ac_state,00102$
;	Receiver.c:311: ac_state=0;
	mov	_ac_state,#0x00
00102$:
;	Receiver.c:312: switch(ac_state)
	clr	a
	cjne	a,_ac_state,00141$
	sjmp	00103$
00141$:
	mov	a,#0x01
	cjne	a,_ac_state,00142$
	sjmp	00104$
00142$:
	mov	a,#0x02
;	Receiver.c:314: case 0:Transmit_data('l');ac_led_up=1;ac_led_down=1;delay();break;
	cjne	a,_ac_state,00109$
	sjmp	00105$
00103$:
	mov	dpl,#0x6c
	lcall	_Transmit_data
;	assignBit
	setb	_P2_2
;	assignBit
	setb	_P2_3
	lcall	_delay
;	Receiver.c:315: case 1:Transmit_data('m');ac_led_up=1;ac_led_down=0;delay();break;
	sjmp	00109$
00104$:
	mov	dpl,#0x6d
	lcall	_Transmit_data
;	assignBit
	setb	_P2_2
;	assignBit
	clr	_P2_3
	lcall	_delay
;	Receiver.c:316: case 2:Transmit_data('h');ac_led_up=0;ac_led_down=1;delay();break;
	sjmp	00109$
00105$:
	mov	dpl,#0x68
	lcall	_Transmit_data
;	assignBit
	clr	_P2_2
;	assignBit
	setb	_P2_3
	lcall	_delay
;	Receiver.c:318: }//switch end
00109$:
;	Receiver.c:321: if(!dim_key)
	mov	c,_P1_4
;	Receiver.c:326: if(!auto_key)
	jb	_P1_2,00112$
;	Receiver.c:328: delay();
	lcall	_delay
;	Receiver.c:329: auto_flag=!auto_flag;
	cpl	_auto_flag
00112$:
;	Receiver.c:331: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
