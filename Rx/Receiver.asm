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
	.globl _dim_flag
	.globl _auto_flag
	.globl _ac_state
	.globl _off
	.globl _state
	.globl _dim1_val2
	.globl _dim1_val
	.globl _dim_val2
	.globl _dim_val
	.globl _time_delay
	.globl _dimCount
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
	.globl _check_switches
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
_dimCount::
	.ds 2
_time_delay::
	.ds 2
_dim_val::
	.ds 2
_dim_val2::
	.ds 2
_dim1_val::
	.ds 2
_dim1_val2::
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
_dim_flag::
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
;	Receiver.c:34: char start=0;
	mov	_start,#0x00
;	Receiver.c:36: volatile int timerCount = 0;
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
;	Receiver.c:37: volatile int dimCount = 0;
	mov	_dimCount,a
	mov	(_dimCount + 1),a
;	Receiver.c:38: volatile int time_delay = 15;
	mov	_time_delay,#0x0f
;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
	mov	(_time_delay + 1),a
;	Receiver.c:39: volatile int dim_val = 8;
	mov	_dim_val,#0x08
;	1-genFromRTrack replaced	mov	(_dim_val + 1),#0x00
	mov	(_dim_val + 1),a
;	Receiver.c:40: volatile int dim_val2 = 0;
	mov	_dim_val2,a
	mov	(_dim_val2 + 1),a
;	Receiver.c:41: volatile int dim1_val = 8;
	mov	_dim1_val,#0x08
;	1-genFromRTrack replaced	mov	(_dim1_val + 1),#0x00
	mov	(_dim1_val + 1),a
;	Receiver.c:42: volatile int dim1_val2 = 0;
	mov	_dim1_val2,a
	mov	(_dim1_val2 + 1),a
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
;	Receiver.c:46: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
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
;	Receiver.c:48: TH0  = 0Xee;         // ReLoad the timer value for 5ms
	mov	_TH0,#0xee
;	Receiver.c:49: TL0  = 0X00;
	mov	_TL0,#0x00
;	Receiver.c:50: timerCount++;
	mov	r6,_timerCount
	mov	r7,(_timerCount + 1)
	mov	a,#0x01
	add	a,r6
	mov	_timerCount,a
	clr	a
	addc	a,r7
	mov	(_timerCount + 1),a
;	Receiver.c:51: dimCount++;
	mov	r6,_dimCount
	mov	r7,(_dimCount + 1)
	mov	a,#0x01
	add	a,r6
	mov	_dimCount,a
	clr	a
	addc	a,r7
	mov	(_dimCount + 1),a
;	Receiver.c:52: rst_out=!rst_out;
	cpl	_P1_6
;	Receiver.c:54: if(state!=20)
	mov	a,#0x14
	cjne	a,_state,00408$
	clr	a
	cjne	a,(_state + 1),00408$
	ljmp	00230$
00408$:
;	Receiver.c:56: if(timerCount < (time_delay*30)) // count for LED-ON delay
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
	jc	00409$
	ljmp	00226$
00409$:
;	Receiver.c:58: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00410$
	ljmp	00230$
00410$:
	clr	c
	mov	a,#0x09
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00411$
	ljmp	00230$
00411$:
	mov	a,_state
	add	a,#(00412$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_state
	add	a,#(00413$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00412$:
	.db	00101$
	.db	00110$
	.db	00119$
	.db	00128$
	.db	00137$
	.db	00146$
	.db	00155$
	.db	00164$
	.db	00171$
	.db	00180$
00413$:
	.db	00101$>>8
	.db	00110$>>8
	.db	00119$>>8
	.db	00128$>>8
	.db	00137$>>8
	.db	00146$>>8
	.db	00155$>>8
	.db	00164$>>8
	.db	00171$>>8
	.db	00180$>>8
;	Receiver.c:60: case 0:	if(dim1_val)
00101$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00106$
;	Receiver.c:61: {dim1_val--;P0_1 =1;P0_0 =0;P2_6=1;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
	sjmp	00107$
00106$:
;	Receiver.c:63: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00103$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00107$
00103$:
;	Receiver.c:65: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00107$:
;	Receiver.c:67: if(auto_flag)auto_led=1;
	jnb	_auto_flag,00109$
;	assignBit
	setb	_P2_1
00109$:
;	Receiver.c:68: up_led=0;	down_led=0;
;	assignBit
	clr	_P2_7
;	assignBit
	clr	_P2_4
;	Receiver.c:69: break;	
	ljmp	00230$
;	Receiver.c:70: case 1:	if(dim1_val)
00110$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00115$
;	Receiver.c:71: {dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00116$
00115$:
;	Receiver.c:73: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00112$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00116$
00112$:
;	Receiver.c:75: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00116$:
;	Receiver.c:77: if(auto_flag)
	jb	_auto_flag,00419$
	ljmp	00230$
00419$:
;	Receiver.c:78: up_led=1;
;	assignBit
	setb	_P2_7
;	Receiver.c:79: break;
	ljmp	00230$
;	Receiver.c:80: case 2:		if(dim1_val)
00119$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00124$
;	Receiver.c:81: {dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00125$
00124$:
;	Receiver.c:83: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00121$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00125$
00121$:
;	Receiver.c:85: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00125$:
;	Receiver.c:87: if(auto_flag)
	jb	_auto_flag,00422$
	ljmp	00230$
00422$:
;	Receiver.c:88: up_led=1;
;	assignBit
	setb	_P2_7
;	Receiver.c:89: break;
	ljmp	00230$
;	Receiver.c:90: case 3:		if(dim1_val)
00128$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00133$
;	Receiver.c:91: {dim1_val--;P0_1 =1;P0_0 =1;P2_6=0;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	setb	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00134$
00133$:
;	Receiver.c:93: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00130$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00134$
00130$:
;	Receiver.c:95: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00134$:
;	Receiver.c:97: if(auto_flag)
	jb	_auto_flag,00425$
	ljmp	00230$
00425$:
;	Receiver.c:98: up_led=1;
;	assignBit
	setb	_P2_7
;	Receiver.c:99: break;
	ljmp	00230$
;	Receiver.c:100: case 4:		if(dim1_val)
00137$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00142$
;	Receiver.c:101: {dim1_val--;P0_1 =0;P0_0 =1;P2_6=1;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	setb	_P2_6
	sjmp	00143$
00142$:
;	Receiver.c:103: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00139$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00143$
00139$:
;	Receiver.c:105: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00143$:
;	Receiver.c:107: if(auto_flag)
	jb	_auto_flag,00428$
	ljmp	00230$
00428$:
;	Receiver.c:108: down_led=1;
;	assignBit
	setb	_P2_4
;	Receiver.c:109: break;
	ljmp	00230$
;	Receiver.c:110: case 5:		if(dim1_val)
00146$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00151$
;	Receiver.c:111: {dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
	sjmp	00152$
00151$:
;	Receiver.c:113: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00148$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00152$
00148$:
;	Receiver.c:115: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00152$:
;	Receiver.c:117: if(auto_flag)
	jb	_auto_flag,00431$
	ljmp	00230$
00431$:
;	Receiver.c:118: down_led=1;
;	assignBit
	setb	_P2_4
;	Receiver.c:119: break;
	ljmp	00230$
;	Receiver.c:120: case 6:		if(dim1_val)
00155$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00160$
;	Receiver.c:121: {dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
	sjmp	00161$
00160$:
;	Receiver.c:123: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00157$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00161$
00157$:
;	Receiver.c:125: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00161$:
;	Receiver.c:127: if(auto_flag)
	jb	_auto_flag,00434$
	ljmp	00230$
00434$:
;	Receiver.c:128: down_led=1;
;	assignBit
	setb	_P2_4
;	Receiver.c:129: break;
	ljmp	00230$
;	Receiver.c:130: case 7:		if(dim1_val)
00164$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00169$
;	Receiver.c:131: {dim1_val--;P0_1 =0;P0_0 =1;P2_6=0;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	clr	_P2_6
	ljmp	00230$
00169$:
;	Receiver.c:133: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00166$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	ljmp	00230$
00166$:
;	Receiver.c:135: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
;	Receiver.c:136: break;
	ljmp	00230$
;	Receiver.c:137: case 8:		if(dim1_val)
00171$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00176$
;	Receiver.c:138: {dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00177$
00176$:
;	Receiver.c:140: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00173$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00177$
00173$:
;	Receiver.c:142: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00177$:
;	Receiver.c:144: if(auto_flag)
	jb	_auto_flag,00439$
	ljmp	00230$
00439$:
;	Receiver.c:145: up_led=1;
;	assignBit
	setb	_P2_7
;	Receiver.c:146: break;
	ljmp	00230$
;	Receiver.c:147: case 9:		if(dim1_val)
00180$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00185$
;	Receiver.c:148: {dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
	sjmp	00186$
00185$:
;	Receiver.c:150: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00182$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00186$
00182$:
;	Receiver.c:152: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00186$:
;	Receiver.c:154: if(auto_flag)
	jb	_auto_flag,00442$
	ljmp	00230$
00442$:
;	Receiver.c:155: down_led=1;
;	assignBit
	setb	_P2_4
;	Receiver.c:156: break;
	ljmp	00230$
;	Receiver.c:158: }	
00226$:
;	Receiver.c:162: else if((timerCount > time_delay) &&(timerCount<time_delay*60)) // count for LED-ON delay
	clr	c
	mov	a,_time_delay
	subb	a,_timerCount
	mov	a,(_time_delay + 1)
	xrl	a,#0x80
	mov	b,(_timerCount + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00443$
	ljmp	00222$
00443$:
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
	jc	00444$
	ljmp	00222$
00444$:
;	Receiver.c:164: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00445$
	ljmp	00230$
00445$:
	clr	c
	mov	a,#0x09
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00446$
	ljmp	00230$
00446$:
	mov	a,_state
	add	a,#(00447$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_state
	add	a,#(00448$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00447$:
	.db	00191$
	.db	00201$
	.db	00200$
	.db	00200$
	.db	00200$
	.db	00200$
	.db	00210$
	.db	00200$
	.db	00200$
	.db	00200$
00448$:
	.db	00191$>>8
	.db	00201$>>8
	.db	00200$>>8
	.db	00200$>>8
	.db	00200$>>8
	.db	00200$>>8
	.db	00210$>>8
	.db	00200$>>8
	.db	00200$>>8
	.db	00200$>>8
;	Receiver.c:166: case 0:	if(auto_flag)	auto_led=0;
00191$:
	jnb	_auto_flag,00200$
;	assignBit
	clr	_P2_1
;	Receiver.c:173: case 9:P0_1 =0;P0_0 =0;P2_6=0;up_led=0;down_led=0;break;
00200$:
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
	ljmp	00230$
;	Receiver.c:174: case 1:	if(dim1_val)
00201$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00206$
;	Receiver.c:175: {dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00207$
00206$:
;	Receiver.c:177: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00203$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00207$
00203$:
;	Receiver.c:179: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00207$:
;	Receiver.c:180: if(auto_flag)up_led=1;down_led=0;break;
	jnb	_auto_flag,00209$
;	assignBit
	setb	_P2_7
00209$:
;	assignBit
	clr	_P2_4
;	Receiver.c:181: case 6:	if(dim1_val)
	sjmp	00230$
00210$:
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00215$
;	Receiver.c:182: {dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
	sjmp	00216$
00215$:
;	Receiver.c:184: else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00212$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
	sjmp	00216$
00212$:
;	Receiver.c:186: else {dim1_val = dim_val;dim1_val2 = dim_val2;}
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00216$:
;	Receiver.c:187: up_led=0;if(auto_flag)down_led=1;break;
;	assignBit
	clr	_P2_7
	jnb	_auto_flag,00230$
;	assignBit
	setb	_P2_4
;	Receiver.c:189: }
	sjmp	00230$
00222$:
;	Receiver.c:193: {timerCount = 0;}
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
00230$:
;	Receiver.c:195: } //timer end
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
;	Receiver.c:198: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	Receiver.c:200: state=20;
	mov	_state,#0x14
	mov	(_state + 1),#0x00
;	Receiver.c:201: pwr_out=0;
;	assignBit
	clr	_P0_7
;	Receiver.c:202: InitTimer0();
	lcall	_InitTimer0
;	Receiver.c:203: EA=1;
;	assignBit
	setb	_EA
;	Receiver.c:204: startup();
	lcall	_startup
;	Receiver.c:205: start=1;
	mov	_start,#0x01
;	Receiver.c:206: UART_Init();
	lcall	_UART_Init
;	Receiver.c:207: handshake();
	lcall	_handshake
;	Receiver.c:208: while(1)
00102$:
;	Receiver.c:211: check_switches();
	lcall	_check_switches
;	Receiver.c:212: check_data();
	lcall	_check_data
;	Receiver.c:214: } //main
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'startup'
;------------------------------------------------------------
;	Receiver.c:217: void startup()
;	-----------------------------------------
;	 function startup
;	-----------------------------------------
_startup:
;	Receiver.c:219: P0=0x00;
	mov	_P0,#0x00
;	Receiver.c:220: P2=0x00;
	mov	_P2,#0x00
;	Receiver.c:222: pwr_key=1;
;	assignBit
	setb	_P1_7
;	Receiver.c:223: dim_key=1;
;	assignBit
	setb	_P1_4
;	Receiver.c:224: ac_key=1;
;	assignBit
	setb	_P1_3
;	Receiver.c:225: auto_key=1;
;	assignBit
	setb	_P1_2
;	Receiver.c:227: pwr_out=0;
;	assignBit
	clr	_P0_7
;	Receiver.c:228: rst_out=0;
;	assignBit
	clr	_P1_6
;	Receiver.c:230: pwr_led=0;
;	assignBit
	clr	_P2_0
;	Receiver.c:231: auto_led=0;
;	assignBit
	clr	_P2_1
;	Receiver.c:232: ac_led_up=0;
;	assignBit
	clr	_P2_2
;	Receiver.c:233: ac_led_down=0;
;	assignBit
	clr	_P2_3
;	Receiver.c:234: up_led=0;
;	assignBit
	clr	_P2_7
;	Receiver.c:235: down_led=0;
;	assignBit
	clr	_P2_4
;	Receiver.c:237: pwr_led=1;
;	assignBit
	setb	_P2_0
;	Receiver.c:238: auto_led=0;
;	assignBit
	clr	_P2_1
;	Receiver.c:239: ac_led_up=1;ac_led_down=0;
;	assignBit
	setb	_P2_2
;	assignBit
	clr	_P2_3
;	Receiver.c:240: auto_flag = 0;
;	assignBit
	clr	_auto_flag
;	Receiver.c:242: P0_1 =1;P0_0 =1;P2_6=1;
;	assignBit
	setb	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:243: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:244: P0_1 =0;P0_0 =0;P2_6=1;
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:245: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:246: P0_1 =0;P0_0 =1;P2_6=0;
;	assignBit
	clr	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:247: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:248: P0_1 =1;P0_0 =0;P2_6=0;
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:249: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:250: P0_1 =0;P0_0 =0;P2_6=0;
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:251: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	Receiver.c:253: void delay()
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	Receiver.c:256: for(i=0;i<0x33;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	Receiver.c:257: for(j=0;j<0xff;j++);
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
;	Receiver.c:256: for(i=0;i<0x33;i++)
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
;	Receiver.c:258: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	Receiver.c:261: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	Receiver.c:263: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	mov	_TMOD,#0x20
;	Receiver.c:264: TH1 = 0xFD;		/* Load value for 9600 baud rate */
	mov	_TH1,#0xfd
;	Receiver.c:265: SCON = 0x50;		/* Mode 1, reception enable */
	mov	_SCON,#0x50
;	Receiver.c:266: TR1 = 1;		/* Start timer 1 */
;	assignBit
	setb	_TR1
;	Receiver.c:267: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Transmit_data'
;------------------------------------------------------------
;tx_data                   Allocated to registers 
;------------------------------------------------------------
;	Receiver.c:270: void Transmit_data(char tx_data)
;	-----------------------------------------
;	 function Transmit_data
;	-----------------------------------------
_Transmit_data:
	mov	_SBUF,dpl
;	Receiver.c:273: while (TI==0);		/* Wait until stop bit transmit */
00101$:
;	Receiver.c:274: TI = 0;			/* Clear TI flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	Receiver.c:275: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handshake'
;------------------------------------------------------------
;	Receiver.c:278: void handshake()
;	-----------------------------------------
;	 function handshake
;	-----------------------------------------
_handshake:
;	Receiver.c:280: while(data_r!='y')
00101$:
	mov	a,#0x79
	cjne	a,_data_r,00114$
	sjmp	00103$
00114$:
;	Receiver.c:282: state=20;
	mov	_state,#0x14
	mov	(_state + 1),#0x00
;	Receiver.c:283: delay();
	lcall	_delay
;	Receiver.c:284: delay();
	lcall	_delay
;	Receiver.c:285: delay();
	lcall	_delay
;	Receiver.c:286: Transmit_data('x');
	mov	dpl,#0x78
	lcall	_Transmit_data
;	Receiver.c:287: delay();
	lcall	_delay
;	Receiver.c:288: data_r=SBUF;
	mov	_data_r,_SBUF
	sjmp	00101$
00103$:
;	Receiver.c:290: delay();
	lcall	_delay
;	Receiver.c:291: Transmit_data('m');
	mov	dpl,#0x6d
;	Receiver.c:292: }
	ljmp	_Transmit_data
;------------------------------------------------------------
;Allocation info for local variables in function 'check_data'
;------------------------------------------------------------
;	Receiver.c:294: void check_data()
;	-----------------------------------------
;	 function check_data
;	-----------------------------------------
_check_data:
;	Receiver.c:297: data_r = SBUF;		/* Load char in SBUF register */
	mov	_data_r,_SBUF
;	Receiver.c:298: RI = 0;			/* Clear TI flag */
;	assignBit
	clr	_RI
;	Receiver.c:299: if(data_r=='l')
	mov	a,#0x6c
	cjne	a,_data_r,00146$
;	Receiver.c:301: time_delay=30;
	mov	_time_delay,#0x1e
;	Receiver.c:302: state = 0;
	clr	a
	mov	(_time_delay + 1),a
	mov	_state,a
	mov	(_state + 1),a
;	Receiver.c:303: auto_led=0;
;	assignBit
	clr	_P2_1
	ret
00146$:
;	Receiver.c:305: else if(data_r=='a')
	mov	a,#0x61
	cjne	a,_data_r,00143$
;	Receiver.c:307: time_delay=20;
	mov	_time_delay,#0x14
	mov	(_time_delay + 1),#0x00
;	Receiver.c:308: state = 1;
	mov	_state,#0x01
	mov	(_state + 1),#0x00
;	Receiver.c:309: if(auto_flag)	auto_led=1;
	jb	_auto_flag,00230$
	ret
00230$:
;	assignBit
	setb	_P2_1
	ret
00143$:
;	Receiver.c:311: else if(data_r=='b')
	mov	a,#0x62
	cjne	a,_data_r,00140$
;	Receiver.c:313: time_delay=10;
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	Receiver.c:314: state = 2;
	mov	_state,#0x02
	mov	(_state + 1),#0x00
;	Receiver.c:315: if(auto_flag)	auto_led=1;
	jb	_auto_flag,00233$
	ret
00233$:
;	assignBit
	setb	_P2_1
	ret
00140$:
;	Receiver.c:317: else if(data_r=='c')
	mov	a,#0x63
	cjne	a,_data_r,00137$
;	Receiver.c:319: time_delay=7;
	mov	_time_delay,#0x07
	mov	(_time_delay + 1),#0x00
;	Receiver.c:320: state = 3;
	mov	_state,#0x03
	mov	(_state + 1),#0x00
;	Receiver.c:321: if(auto_flag)	auto_led=1;
	jb	_auto_flag,00236$
	ret
00236$:
;	assignBit
	setb	_P2_1
	ret
00137$:
;	Receiver.c:323: else if(data_r=='d')
	mov	a,#0x64
	cjne	a,_data_r,00134$
;	Receiver.c:325: time_delay=7;
	mov	_time_delay,#0x07
	mov	(_time_delay + 1),#0x00
;	Receiver.c:326: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
;	Receiver.c:327: if(auto_flag)	auto_led=1;
	jb	_auto_flag,00239$
	ret
00239$:
;	assignBit
	setb	_P2_1
	ret
00134$:
;	Receiver.c:329: else if(data_r=='e')
	mov	a,#0x65
	cjne	a,_data_r,00131$
;	Receiver.c:331: time_delay=7;
	mov	_time_delay,#0x07
	mov	(_time_delay + 1),#0x00
;	Receiver.c:332: state = 4;
	mov	_state,#0x04
	mov	(_state + 1),#0x00
;	Receiver.c:333: if(auto_flag)	auto_led=1;
	jnb	_auto_flag,00148$
;	assignBit
	setb	_P2_1
	ret
00131$:
;	Receiver.c:335: else if(data_r=='f')
	mov	a,#0x66
	cjne	a,_data_r,00128$
;	Receiver.c:337: time_delay=10;
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	Receiver.c:338: state = 5;
	mov	_state,#0x05
	mov	(_state + 1),#0x00
;	Receiver.c:339: if(auto_flag)	auto_led=1;
	jnb	_auto_flag,00148$
;	assignBit
	setb	_P2_1
	ret
00128$:
;	Receiver.c:341: else if(data_r=='g')
	mov	a,#0x67
	cjne	a,_data_r,00125$
;	Receiver.c:343: time_delay=20;
	mov	_time_delay,#0x14
	mov	(_time_delay + 1),#0x00
;	Receiver.c:344: state = 6;
	mov	_state,#0x06
	mov	(_state + 1),#0x00
;	Receiver.c:345: if(auto_flag)	auto_led=1;
	jnb	_auto_flag,00148$
;	assignBit
	setb	_P2_1
	ret
00125$:
;	Receiver.c:347: else if(data_r=='u')
	mov	a,#0x75
	cjne	a,_data_r,00122$
;	Receiver.c:349: time_delay=15;
	mov	_time_delay,#0x0f
	mov	(_time_delay + 1),#0x00
;	Receiver.c:350: state = 9;
	mov	_state,#0x09
	mov	(_state + 1),#0x00
;	Receiver.c:351: if(auto_flag)	auto_led=1;
	jnb	_auto_flag,00148$
;	assignBit
	setb	_P2_1
	ret
00122$:
;	Receiver.c:353: else if(data_r=='n')
	mov	a,#0x6e
	cjne	a,_data_r,00148$
;	Receiver.c:355: time_delay=15;
	mov	_time_delay,#0x0f
	mov	(_time_delay + 1),#0x00
;	Receiver.c:356: state = 8;
	mov	_state,#0x08
	mov	(_state + 1),#0x00
;	Receiver.c:357: if(auto_flag)	auto_led=1;
	jnb	_auto_flag,00148$
;	assignBit
	setb	_P2_1
00148$:
;	Receiver.c:372: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer0'
;------------------------------------------------------------
;	Receiver.c:374: void InitTimer0(void)
;	-----------------------------------------
;	 function InitTimer0
;	-----------------------------------------
_InitTimer0:
;	Receiver.c:376: TMOD |= 0x01;    // Set timer0 in mode 1
	orl	_TMOD,#0x01
;	Receiver.c:377: TH0 = 0xee;      // 5 msec reloading time
	mov	_TH0,#0xee
;	Receiver.c:378: TL0 = 0x00;      // First time value
	mov	_TL0,#0x00
;	Receiver.c:379: TR0 = 1;         // Start Timer 1
;	assignBit
	setb	_TR0
;	Receiver.c:380: ET0 = 1;         // Enable Timer1 interrupts	
;	assignBit
	setb	_ET0
;	Receiver.c:381: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_switches'
;------------------------------------------------------------
;	Receiver.c:383: void check_switches()
;	-----------------------------------------
;	 function check_switches
;	-----------------------------------------
_check_switches:
;	Receiver.c:385: if(!ac_key)
	jb	_P1_3,00111$
;	Receiver.c:387: delay();
	lcall	_delay
;	Receiver.c:388: if(!ac_key)
	jb	_P1_3,00111$
;	Receiver.c:390: ac_state++;		
	inc	_ac_state
;	Receiver.c:391: if(ac_state==3)
	mov	a,#0x03
	cjne	a,_ac_state,00102$
;	Receiver.c:392: ac_state=0;
	mov	_ac_state,#0x00
00102$:
;	Receiver.c:393: switch(ac_state)
	clr	a
	cjne	a,_ac_state,00171$
	sjmp	00103$
00171$:
	mov	a,#0x01
	cjne	a,_ac_state,00172$
	sjmp	00104$
00172$:
	mov	a,#0x02
;	Receiver.c:395: case 0:Transmit_data('l');ac_led_up=1;ac_led_down=1;delay();break;
	cjne	a,_ac_state,00111$
	sjmp	00105$
00103$:
	mov	dpl,#0x6c
	lcall	_Transmit_data
;	assignBit
	setb	_P2_2
;	assignBit
	setb	_P2_3
	lcall	_delay
;	Receiver.c:396: case 1:Transmit_data('m');ac_led_up=1;ac_led_down=0;delay();break;
	sjmp	00111$
00104$:
	mov	dpl,#0x6d
	lcall	_Transmit_data
;	assignBit
	setb	_P2_2
;	assignBit
	clr	_P2_3
	lcall	_delay
;	Receiver.c:397: case 2:Transmit_data('h');ac_led_up=0;ac_led_down=1;delay();break;
	sjmp	00111$
00105$:
	mov	dpl,#0x68
	lcall	_Transmit_data
;	assignBit
	clr	_P2_2
;	assignBit
	setb	_P2_3
	lcall	_delay
;	Receiver.c:399: }//switch end
00111$:
;	Receiver.c:402: if(!dim_key)
	jb	_P1_4,00115$
;	Receiver.c:404: delay();
	lcall	_delay
;	Receiver.c:406: dim_val = dim_val + 2;
	mov	a,#0x02
	add	a,_dim_val
	mov	_dim_val,a
	clr	a
	addc	a,(_dim_val + 1)
	mov	(_dim_val + 1),a
;	Receiver.c:407: dim_val2=8-dim_val;
	mov	a,#0x08
	clr	c
	subb	a,_dim_val
	mov	_dim_val2,a
	clr	a
	subb	a,(_dim_val + 1)
	mov	(_dim_val2 + 1),a
;	Receiver.c:408: if(dim_val>8){dim_val=2;dim_val2=6;}
	clr	c
	mov	a,#0x08
	subb	a,_dim_val
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_dim_val + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00115$
	mov	_dim_val,#0x02
	mov	(_dim_val + 1),#0x00
	mov	_dim_val2,#0x06
	mov	(_dim_val2 + 1),#0x00
00115$:
;	Receiver.c:412: if(!auto_key)
	jb	_P1_2,00117$
;	Receiver.c:414: delay();
	lcall	_delay
;	Receiver.c:415: auto_flag=!auto_flag;
	cpl	_auto_flag
00117$:
;	Receiver.c:418: if(!pwr_key)
	jb	_P1_7,00121$
;	Receiver.c:420: delay();
	lcall	_delay
;	Receiver.c:421: pwr_led=0;P0_1 =0;P0_0 =0;P2_6=0;ac_led_up=0;ac_led_down=0;auto_led=0;
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
;	Receiver.c:422: TR0 = 0;         // Stop Timer 1
;	assignBit
	clr	_TR0
;	Receiver.c:423: ET0 = 0;         // Enable Timer1 interrupts	
;	assignBit
	clr	_ET0
;	Receiver.c:424: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:425: pwr_out=1;
;	assignBit
	setb	_P0_7
;	Receiver.c:426: shutdown:
00118$:
;	Receiver.c:427: goto shutdown;
	sjmp	00118$
00121$:
;	Receiver.c:429: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
