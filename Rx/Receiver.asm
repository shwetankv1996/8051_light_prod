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
	.globl _timer1_ISR
	.globl _isr_timer0
	.globl _serial_isr
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
	.globl _dim1_val2
	.globl _dim1_val
	.globl _dim_val2
	.globl _dim_val
	.globl _time_delay
	.globl _timerCount2
	.globl _serialCount
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
_serialCount::
	.ds 2
_timerCount2::
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
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_serial_isr
	.ds	5
	ljmp	_timer1_ISR
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
;	Receiver.c:40: char start=0;
	mov	_start,#0x00
;	Receiver.c:42: volatile int timerCount = 0;
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
;	Receiver.c:43: volatile int serialCount = 0;
	mov	_serialCount,a
	mov	(_serialCount + 1),a
;	Receiver.c:44: volatile int timerCount2 = 0;
	mov	_timerCount2,a
	mov	(_timerCount2 + 1),a
;	Receiver.c:45: volatile int time_delay = 15;
	mov	_time_delay,#0x0f
;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
	mov	(_time_delay + 1),a
;	Receiver.c:46: volatile int dim_val = 1;
	mov	_dim_val,#0x01
;	1-genFromRTrack replaced	mov	(_dim_val + 1),#0x00
	mov	(_dim_val + 1),a
;	Receiver.c:47: volatile int dim_val2 = 50;
	mov	_dim_val2,#0x32
;	1-genFromRTrack replaced	mov	(_dim_val2 + 1),#0x00
	mov	(_dim_val2 + 1),a
;	Receiver.c:48: volatile int dim1_val = 1;
	mov	_dim1_val,#0x01
;	1-genFromRTrack replaced	mov	(_dim1_val + 1),#0x00
	mov	(_dim1_val + 1),a
;	Receiver.c:49: volatile int dim1_val2 = 50;
	mov	_dim1_val2,#0x32
;	1-genFromRTrack replaced	mov	(_dim1_val2 + 1),#0x00
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
;Allocation info for local variables in function 'serial_isr'
;------------------------------------------------------------
;	Receiver.c:54: void serial_isr() __interrupt 4 
;	-----------------------------------------
;	 function serial_isr
;	-----------------------------------------
_serial_isr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	psw
;	Receiver.c:56: if(RI == 1)
	jnb	_RI,00106$
;	Receiver.c:58: data_r = SBUF; // Copy the received char
	mov	_data_r,_SBUF
;	Receiver.c:59: RI = 0;              // Clear the Receive interrupt flag
;	assignBit
	clr	_RI
;	Receiver.c:60: if(data_r!='y')serialCount=0;
	mov	a,#0x79
	cjne	a,_data_r,00123$
	sjmp	00108$
00123$:
	clr	a
	mov	_serialCount,a
	mov	(_serialCount + 1),a
	sjmp	00108$
00106$:
;	Receiver.c:62: else if(TI == 1)
;	Receiver.c:64: TI = 0;              // Clear the Transmit interrupt flag
;	assignBit
	jbc	_TI,00124$
	sjmp	00108$
00124$:
00108$:
;	Receiver.c:66: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'isr_timer0'
;------------------------------------------------------------
;	Receiver.c:68: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
;	-----------------------------------------
;	 function isr_timer0
;	-----------------------------------------
_isr_timer0:
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
;	Receiver.c:70: TH0  = 0Xee;         // ReLoad the timer value for 5ms
	mov	_TH0,#0xee
;	Receiver.c:71: TL0  = 0X00;
	mov	_TL0,#0x00
;	Receiver.c:72: timerCount++;
	mov	r6,_timerCount
	mov	r7,(_timerCount + 1)
	mov	a,#0x01
	add	a,r6
	mov	_timerCount,a
	clr	a
	addc	a,r7
	mov	(_timerCount + 1),a
;	Receiver.c:74: if(state!=20)
	mov	a,#0x14
	cjne	a,_state,00240$
	clr	a
	cjne	a,(_state + 1),00240$
	ljmp	00158$
00240$:
;	Receiver.c:76: if(timerCount < (time_delay*30)) // count for LED-ON delay
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
	jc	00241$
	ljmp	00154$
00241$:
;	Receiver.c:78: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00242$
	ljmp	00158$
00242$:
	clr	c
	mov	a,#0x09
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00243$
	ljmp	00158$
00243$:
	mov	a,_state
	add	a,#(00244$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_state
	add	a,#(00245$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00244$:
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
00245$:
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
;	Receiver.c:80: case 0:up_led_main =1;center_led =0;down_led_main=1;									
00101$:
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:81: if(auto_flag)auto_led=1;
	jnb	_auto_flag,00103$
;	assignBit
	setb	_P2_1
00103$:
;	Receiver.c:82: up_led=0;down_led=0;main_out1=1;main_out2=1;
;	assignBit
	clr	_P2_7
;	assignBit
	clr	_P2_4
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
;	Receiver.c:83: break;	
	ljmp	00158$
;	Receiver.c:84: case 1:up_led_main =1;center_led =0;down_led_main=0;
00104$:
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:86: if(auto_flag)
	jb	_auto_flag,00247$
	ljmp	00158$
00247$:
;	Receiver.c:87: {main_out1=0;up_led=1;}
;	assignBit
	clr	_P3_6
;	assignBit
	setb	_P2_7
;	Receiver.c:88: break;
	ljmp	00158$
;	Receiver.c:89: case 2:up_led_main =1;center_led =0;down_led_main=0;
00107$:
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:91: if(auto_flag)
	jb	_auto_flag,00248$
	ljmp	00158$
00248$:
;	Receiver.c:93: up_led=1;}
;	assignBit
	setb	_P2_7
;	Receiver.c:94: break;
	ljmp	00158$
;	Receiver.c:95: case 3:up_led_main =1;center_led =1;down_led_main=0;
00110$:
;	assignBit
	setb	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:97: if(auto_flag)
	jb	_auto_flag,00249$
	ljmp	00158$
00249$:
;	Receiver.c:99: up_led=1;}
;	assignBit
	setb	_P2_7
;	Receiver.c:100: break;
	ljmp	00158$
;	Receiver.c:101: case 4:	up_led_main =0;center_led =1;down_led_main=1;
00113$:
;	assignBit
	clr	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:102: if(auto_flag)
	jb	_auto_flag,00250$
	ljmp	00158$
00250$:
;	Receiver.c:104: down_led=1;}
;	assignBit
	setb	_P2_4
;	Receiver.c:105: break;
	ljmp	00158$
;	Receiver.c:106: case 5:up_led_main =0;center_led =0;down_led_main=1;
00116$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:108: if(auto_flag)
	jb	_auto_flag,00251$
	ljmp	00158$
00251$:
;	Receiver.c:110: down_led=1;}
;	assignBit
	setb	_P2_4
;	Receiver.c:111: break;
	ljmp	00158$
;	Receiver.c:112: case 6:	up_led_main =0;center_led =0;down_led_main=1;		
00119$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:113: if(auto_flag)
	jb	_auto_flag,00252$
	ljmp	00158$
00252$:
;	Receiver.c:114: {main_out2=0;down_led=1;}
;	assignBit
	clr	_P3_7
;	assignBit
	setb	_P2_4
;	Receiver.c:115: break;
	ljmp	00158$
;	Receiver.c:116: case 7:up_led_main =0;center_led =1;down_led_main=1;
00122$:
;	assignBit
	clr	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:117: break;
	ljmp	00158$
;	Receiver.c:119: case 8:up_led_main =1;center_led =0;down_led_main=0;
00123$:
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:120: main_out1=1;main_out2=1;
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
;	Receiver.c:121: if(auto_flag)
	jb	_auto_flag,00253$
	ljmp	00158$
00253$:
;	Receiver.c:122: up_led=1;
;	assignBit
	setb	_P2_7
;	Receiver.c:123: break;
	ljmp	00158$
;	Receiver.c:125: case 9:	up_led_main =0;center_led =0;down_led_main=1;
00126$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:126: main_out1=1;main_out2=1;
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
;	Receiver.c:127: if(auto_flag)
	jb	_auto_flag,00254$
	ljmp	00158$
00254$:
;	Receiver.c:128: down_led=1;
;	assignBit
	setb	_P2_4
;	Receiver.c:129: break;
	ljmp	00158$
;	Receiver.c:131: }	
00154$:
;	Receiver.c:135: else if((timerCount > time_delay) &&(timerCount<time_delay*60)) // count for LED-ON delay
	clr	c
	mov	a,_time_delay
	subb	a,_timerCount
	mov	a,(_time_delay + 1)
	xrl	a,#0x80
	mov	b,(_timerCount + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00255$
	ljmp	00150$
00255$:
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
	jc	00256$
	ljmp	00150$
00256$:
;	Receiver.c:137: switch(state)
	mov	a,(_state + 1)
	jnb	acc.7,00257$
	ljmp	00158$
00257$:
	clr	c
	mov	a,#0x09
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00258$
	ljmp	00158$
00258$:
	mov	a,_state
	add	a,#(00259$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_state
	add	a,#(00260$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00259$:
	.db	00131$
	.db	00141$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00140$
	.db	00144$
	.db	00140$
	.db	00140$
	.db	00140$
00260$:
	.db	00131$>>8
	.db	00141$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00144$>>8
	.db	00140$>>8
	.db	00140$>>8
	.db	00140$>>8
;	Receiver.c:139: case 0:	if(auto_flag)	{auto_led=0;main_out1=1;main_out2=1;}
00131$:
	jnb	_auto_flag,00140$
;	assignBit
	clr	_P2_1
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
;	Receiver.c:146: case 9:up_led_main =0;center_led =0;down_led_main=0;up_led=0;down_led=0;break;
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
;	Receiver.c:147: case 1:up_led_main =1;center_led =0;down_led_main=0;
	sjmp	00158$
00141$:
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:148: if(auto_flag)	{main_out1=0;up_led=1;down_led=0;}break;
	jnb	_auto_flag,00158$
;	assignBit
	clr	_P3_6
;	assignBit
	setb	_P2_7
;	assignBit
	clr	_P2_4
;	Receiver.c:150: case 6:	up_led_main =0;center_led =0;down_led_main=1;
	sjmp	00158$
00144$:
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:151: up_led=0;if(auto_flag){main_out2=0;down_led=1;}break;
;	assignBit
	clr	_P2_7
	jnb	_auto_flag,00158$
;	assignBit
	clr	_P3_7
;	assignBit
	setb	_P2_4
;	Receiver.c:154: }
	sjmp	00158$
00150$:
;	Receiver.c:158: {timerCount = 0;}
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
00158$:
;	Receiver.c:160: } //timer end
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
;Allocation info for local variables in function 'timer1_ISR'
;------------------------------------------------------------
;	Receiver.c:163: void timer1_ISR (void) __interrupt 5
;	-----------------------------------------
;	 function timer1_ISR
;	-----------------------------------------
_timer1_ISR:
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
;	Receiver.c:165: TF2 = 0;            /* Clear the interrupt request */
;	assignBit
	clr	_TF2
;	Receiver.c:166: timerCount2++;
	mov	r6,_timerCount2
	mov	r7,(_timerCount2 + 1)
	mov	a,#0x01
	add	a,r6
	mov	_timerCount2,a
	clr	a
	addc	a,r7
	mov	(_timerCount2 + 1),a
;	Receiver.c:167: serialCount++;
	mov	r6,_serialCount
	mov	r7,(_serialCount + 1)
	mov	a,#0x01
	add	a,r6
	mov	_serialCount,a
	clr	a
	addc	a,r7
	mov	(_serialCount + 1),a
;	Receiver.c:168: rst_out=!rst_out;
	cpl	_P1_6
;	Receiver.c:169: if(dim1_val)
	mov	a,_dim1_val
	orl	a,(_dim1_val + 1)
	jz	00105$
;	Receiver.c:170: {dim1_val--;dim_out=1;}
	mov	r6,_dim1_val
	mov	r7,(_dim1_val + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val + 1),a
;	assignBit
	setb	_P0_2
	sjmp	00106$
00105$:
;	Receiver.c:172: else if(dim1_val2){dim1_val2--;dim_out=0;}
	mov	a,_dim1_val2
	orl	a,(_dim1_val2 + 1)
	jz	00102$
	mov	r6,_dim1_val2
	mov	r7,(_dim1_val2 + 1)
	mov	a,r6
	add	a,#0xff
	mov	_dim1_val2,a
	mov	a,r7
	addc	a,#0xff
	mov	(_dim1_val2 + 1),a
;	assignBit
	clr	_P0_2
	sjmp	00106$
00102$:
;	Receiver.c:174: else {dim1_val = dim_val;dim1_val2 = dim_val2;}    
	mov	_dim1_val,_dim_val
	mov	(_dim1_val + 1),(_dim_val + 1)
	mov	_dim1_val2,_dim_val2
	mov	(_dim1_val2 + 1),(_dim_val2 + 1)
00106$:
;	Receiver.c:176: if(auto_flag)
	jb	_auto_flag,00245$
	ljmp	00150$
00245$:
;	Receiver.c:178: if(timerCount2<1000)
	clr	c
	mov	a,_timerCount2
	subb	a,#0xe8
	mov	a,(_timerCount2 + 1)
	xrl	a,#0x80
	subb	a,#0x83
	jc	00246$
	ljmp	00147$
00246$:
;	Receiver.c:180: switch(state)
	mov	a,#0x02
	cjne	a,_state,00247$
	clr	a
	cjne	a,(_state + 1),00247$
	sjmp	00107$
00247$:
	mov	a,#0x03
	cjne	a,_state,00248$
	clr	a
	cjne	a,(_state + 1),00248$
	sjmp	00111$
00248$:
	mov	a,#0x04
	cjne	a,_state,00249$
	clr	a
	cjne	a,(_state + 1),00249$
	sjmp	00115$
00249$:
	mov	a,#0x05
	cjne	a,_state,00250$
	clr	a
	cjne	a,(_state + 1),00250$
	sjmp	00119$
00250$:
	ljmp	00150$
;	Receiver.c:182: case 2:	if(timerCount2%4){main_out1=1;main_out2=1;}
00107$:
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_timerCount2
	mov	dph,(_timerCount2 + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00109$
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
	ljmp	00150$
00109$:
;	Receiver.c:183: else {main_out1=0;main_out2=1;}
;	assignBit
	clr	_P3_6
;	assignBit
	setb	_P3_7
;	Receiver.c:184: break;
	ljmp	00150$
;	Receiver.c:186: case 3:	if(timerCount2%4){main_out1=1;main_out2=1;}
00111$:
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_timerCount2
	mov	dph,(_timerCount2 + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00113$
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
	ljmp	00150$
00113$:
;	Receiver.c:187: else {main_out1=0;main_out2=1;}
;	assignBit
	clr	_P3_6
;	assignBit
	setb	_P3_7
;	Receiver.c:188: break;
	ljmp	00150$
;	Receiver.c:190: case 4:	if(timerCount2%4){main_out1=1;main_out2=1;}
00115$:
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_timerCount2
	mov	dph,(_timerCount2 + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00117$
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
	ljmp	00150$
00117$:
;	Receiver.c:191: else {main_out1=1;main_out2=0;}
;	assignBit
	setb	_P3_6
;	assignBit
	clr	_P3_7
;	Receiver.c:192: break;
	ljmp	00150$
;	Receiver.c:194: case 5:	if(timerCount2%4){main_out1=1;main_out2=1;}
00119$:
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_timerCount2
	mov	dph,(_timerCount2 + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00121$
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
	ljmp	00150$
00121$:
;	Receiver.c:195: else {main_out1=1;main_out2=0;}
;	assignBit
	setb	_P3_6
;	assignBit
	clr	_P3_7
;	Receiver.c:196: break;
	ljmp	00150$
;	Receiver.c:199: }}
00147$:
;	Receiver.c:201: else if(timerCount2<2000)
	clr	c
	mov	a,_timerCount2
	subb	a,#0xd0
	mov	a,(_timerCount2 + 1)
	xrl	a,#0x80
	subb	a,#0x87
	jc	00255$
	ljmp	00144$
00255$:
;	Receiver.c:203: switch(state)
	mov	a,#0x02
	cjne	a,_state,00256$
	clr	a
	cjne	a,(_state + 1),00256$
	sjmp	00125$
00256$:
	mov	a,#0x03
	cjne	a,_state,00257$
	clr	a
	cjne	a,(_state + 1),00257$
	sjmp	00129$
00257$:
	mov	a,#0x04
	cjne	a,_state,00258$
	clr	a
	cjne	a,(_state + 1),00258$
	sjmp	00133$
00258$:
	mov	a,#0x05
	cjne	a,_state,00259$
	clr	a
	cjne	a,(_state + 1),00259$
	sjmp	00137$
00259$:
	ljmp	00150$
;	Receiver.c:205: case 2:	if(timerCount2%10){main_out1=1;main_out2=1;}
00125$:
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_timerCount2
	mov	dph,(_timerCount2 + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00127$
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
	ljmp	00150$
00127$:
;	Receiver.c:206: else {main_out1=0;main_out2=1;}
;	assignBit
	clr	_P3_6
;	assignBit
	setb	_P3_7
;	Receiver.c:207: break;
;	Receiver.c:209: case 3:	if(timerCount2%10){main_out1=1;main_out2=1;}
	sjmp	00150$
00129$:
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_timerCount2
	mov	dph,(_timerCount2 + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00131$
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
	sjmp	00150$
00131$:
;	Receiver.c:210: else {main_out1=0;main_out2=1;}
;	assignBit
	clr	_P3_6
;	assignBit
	setb	_P3_7
;	Receiver.c:211: break;
;	Receiver.c:213: case 4:	if(timerCount2%10){main_out1=1;main_out2=1;}
	sjmp	00150$
00133$:
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_timerCount2
	mov	dph,(_timerCount2 + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00135$
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
	sjmp	00150$
00135$:
;	Receiver.c:214: else {main_out1=1;main_out2=0;}
;	assignBit
	setb	_P3_6
;	assignBit
	clr	_P3_7
;	Receiver.c:215: break;
;	Receiver.c:217: case 5:	if(timerCount2%10){main_out1=1;main_out2=1;}
	sjmp	00150$
00137$:
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_timerCount2
	mov	dph,(_timerCount2 + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00139$
;	assignBit
	setb	_P3_6
;	assignBit
	setb	_P3_7
	sjmp	00150$
00139$:
;	Receiver.c:218: else {main_out1=1;main_out2=0;}
;	assignBit
	setb	_P3_6
;	assignBit
	clr	_P3_7
;	Receiver.c:219: break;
;	Receiver.c:222: }}
	sjmp	00150$
00144$:
;	Receiver.c:224: else timerCount2=0;	
	clr	a
	mov	_timerCount2,a
	mov	(_timerCount2 + 1),a
00150$:
;	Receiver.c:228: if(timerCount2>4000)timerCount2=0;
	clr	c
	mov	a,#0xa0
	subb	a,_timerCount2
	mov	a,#(0x0f ^ 0x80)
	mov	b,(_timerCount2 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00153$
	clr	a
	mov	_timerCount2,a
	mov	(_timerCount2 + 1),a
00153$:
;	Receiver.c:230: }//end timer2
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
;	Receiver.c:234: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	Receiver.c:236: state=20;
	mov	_state,#0x14
	mov	(_state + 1),#0x00
;	Receiver.c:237: pwr_out=0;
;	assignBit
	clr	_P0_7
;	Receiver.c:241: T2CON = 0x80;                /* 10000000 */
	mov	_T2CON,#0x80
;	Receiver.c:246: RCAP2L = 0x18;
	mov	_RCAP2L,#0x18
;	Receiver.c:247: RCAP2H = 0xFE;
	mov	_RCAP2H,#0xfe
;	Receiver.c:249: TL2 = RCAP2L;
	mov	_TL2,_RCAP2L
;	Receiver.c:250: TH2 = RCAP2H;
	mov	_TH2,_RCAP2H
;	Receiver.c:254: ET2 = 1;                      /* Enable Timer 2 Interrupts */
;	assignBit
	setb	_ET2
;	Receiver.c:255: TR2 = 1;                      /* Start Timer 2 Running */
;	assignBit
	setb	_TR2
;	Receiver.c:258: InitTimer0();
	lcall	_InitTimer0
;	Receiver.c:259: EA=1;
;	assignBit
	setb	_EA
;	Receiver.c:260: startup();
	lcall	_startup
;	Receiver.c:261: start=1;
	mov	_start,#0x01
;	Receiver.c:262: UART_Init();
	lcall	_UART_Init
;	Receiver.c:263: handshake();
	lcall	_handshake
;	Receiver.c:264: ES  = 1;      // Enable Serial INterrupt
;	assignBit
	setb	_ES
;	Receiver.c:266: while(1)
00102$:
;	Receiver.c:268: check_switches();
	lcall	_check_switches
;	Receiver.c:269: check_data();
	lcall	_check_data
;	Receiver.c:271: } //main
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'startup'
;------------------------------------------------------------
;	Receiver.c:274: void startup()
;	-----------------------------------------
;	 function startup
;	-----------------------------------------
_startup:
;	Receiver.c:276: pwr_key=1;
;	assignBit
	setb	_P1_7
;	Receiver.c:277: dim_key=1;
;	assignBit
	setb	_P1_4
;	Receiver.c:278: ac_key=1;
;	assignBit
	setb	_P1_3
;	Receiver.c:279: auto_key=1;
;	assignBit
	setb	_P1_2
;	Receiver.c:280: manual_up_key=1;
;	assignBit
	setb	_P1_0
;	Receiver.c:281: manual_down_key=1;
;	assignBit
	setb	_P1_1
;	Receiver.c:283: main_out1=0;
;	assignBit
	clr	_P3_6
;	Receiver.c:284: main_out2=0;
;	assignBit
	clr	_P3_7
;	Receiver.c:285: pwr_out=0;
;	assignBit
	clr	_P0_7
;	Receiver.c:286: rst_out=0;
;	assignBit
	clr	_P1_6
;	Receiver.c:287: dim_out=0;
;	assignBit
	clr	_P0_2
;	Receiver.c:288: pwr_led=0;
;	assignBit
	clr	_P2_0
;	Receiver.c:289: auto_led=0;
;	assignBit
	clr	_P2_1
;	Receiver.c:290: ac_led_up=0;
;	assignBit
	clr	_P2_2
;	Receiver.c:291: ac_led_down=0;
;	assignBit
	clr	_P2_3
;	Receiver.c:292: up_led=0;
;	assignBit
	clr	_P2_7
;	Receiver.c:293: down_led=0;
;	assignBit
	clr	_P2_4
;	Receiver.c:295: main_out1=1;
;	assignBit
	setb	_P3_6
;	Receiver.c:296: main_out2=1;
;	assignBit
	setb	_P3_7
;	Receiver.c:297: pwr_led=1;
;	assignBit
	setb	_P2_0
;	Receiver.c:298: auto_led=0;
;	assignBit
	clr	_P2_1
;	Receiver.c:299: ac_led_up=1;ac_led_down=0;
;	assignBit
	setb	_P2_2
;	assignBit
	clr	_P2_3
;	Receiver.c:300: auto_flag = 0;
;	assignBit
	clr	_auto_flag
;	Receiver.c:301: dim_out=1;
;	assignBit
	setb	_P0_2
;	Receiver.c:302: up_led_main =0;center_led =0;down_led_main=1;
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	setb	_P2_6
;	Receiver.c:303: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:304: up_led_main =0;center_led =1;down_led_main=0;
;	assignBit
	clr	_P0_1
;	assignBit
	setb	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:305: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:306: up_led_main =1;center_led =0;down_led_main=0;
;	assignBit
	setb	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:307: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:308: up_led_main =0;center_led =0;down_led_main=0;
;	assignBit
	clr	_P0_1
;	assignBit
	clr	_P0_0
;	assignBit
	clr	_P2_6
;	Receiver.c:309: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	Receiver.c:311: void delay()
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	Receiver.c:314: for(i=0;i<0x33;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	Receiver.c:315: for(j=0;j<0xff;j++);
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
;	Receiver.c:314: for(i=0;i<0x33;i++)
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
;	Receiver.c:316: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	Receiver.c:319: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	Receiver.c:321: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	mov	_TMOD,#0x20
;	Receiver.c:322: TH1 = 0xFD;		/* Load value for 9600 baud rate */
	mov	_TH1,#0xfd
;	Receiver.c:323: SCON = 0x50;		/* Mode 1, reception enable */
	mov	_SCON,#0x50
;	Receiver.c:324: TR1 = 1;		/* Start timer 1 */
;	assignBit
	setb	_TR1
;	Receiver.c:325: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Transmit_data'
;------------------------------------------------------------
;tx_data                   Allocated to registers 
;------------------------------------------------------------
;	Receiver.c:328: void Transmit_data(char tx_data)
;	-----------------------------------------
;	 function Transmit_data
;	-----------------------------------------
_Transmit_data:
	mov	_SBUF,dpl
;	Receiver.c:331: while (TI==0);		/* Wait until stop bit transmit */
00101$:
	jnb	_TI,00101$
;	Receiver.c:332: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handshake'
;------------------------------------------------------------
;	Receiver.c:335: void handshake()
;	-----------------------------------------
;	 function handshake
;	-----------------------------------------
_handshake:
;	Receiver.c:337: while(data_r!='y')
00101$:
	mov	a,#0x79
	cjne	a,_data_r,00114$
	sjmp	00103$
00114$:
;	Receiver.c:339: state=20;
	mov	_state,#0x14
	mov	(_state + 1),#0x00
;	Receiver.c:340: delay();
	lcall	_delay
;	Receiver.c:341: delay();
	lcall	_delay
;	Receiver.c:342: Transmit_data('x');
	mov	dpl,#0x78
	lcall	_Transmit_data
;	Receiver.c:343: data_r=SBUF;
	mov	_data_r,_SBUF
;	Receiver.c:344: RI = 0;
;	assignBit
	clr	_RI
	sjmp	00101$
00103$:
;	Receiver.c:346: delay();
	lcall	_delay
;	Receiver.c:347: Transmit_data('m');
	mov	dpl,#0x6d
;	Receiver.c:348: }
	ljmp	_Transmit_data
;------------------------------------------------------------
;Allocation info for local variables in function 'check_data'
;------------------------------------------------------------
;	Receiver.c:350: void check_data()
;	-----------------------------------------
;	 function check_data
;	-----------------------------------------
_check_data:
;	Receiver.c:352: switch(data_r)
	mov	r7,_data_r
	cjne	r7,#0x61,00226$
	sjmp	00102$
00226$:
	cjne	r7,#0x62,00227$
	sjmp	00105$
00227$:
	cjne	r7,#0x63,00228$
	sjmp	00108$
00228$:
	cjne	r7,#0x64,00229$
	sjmp	00111$
00229$:
	cjne	r7,#0x65,00230$
	ljmp	00114$
00230$:
	cjne	r7,#0x66,00231$
	ljmp	00117$
00231$:
	cjne	r7,#0x67,00232$
	ljmp	00120$
00232$:
	cjne	r7,#0x6c,00233$
	sjmp	00101$
00233$:
	cjne	r7,#0x6e,00234$
	ljmp	00123$
00234$:
	cjne	r7,#0x75,00235$
	ljmp	00126$
00235$:
	ljmp	00129$
;	Receiver.c:354: case 'l':time_delay=30;state = 0;auto_led=0;break;
00101$:
	mov	_time_delay,#0x1e
	clr	a
	mov	(_time_delay + 1),a
	mov	_state,a
	mov	(_state + 1),a
;	assignBit
	clr	_P2_1
	ljmp	00133$
;	Receiver.c:356: case 'a':time_delay=20;state = 1;	
00102$:
	mov	_time_delay,#0x14
	mov	(_time_delay + 1),#0x00
	mov	_state,#0x01
	mov	(_state + 1),#0x00
;	Receiver.c:357: if(auto_flag)auto_led=1;break;
	jb	_auto_flag,00236$
	ljmp	00133$
00236$:
;	assignBit
	setb	_P2_1
	ljmp	00133$
;	Receiver.c:359: case 'b':time_delay=10;state = 2;
00105$:
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
	mov	_state,#0x02
	mov	(_state + 1),#0x00
;	Receiver.c:360: if(auto_flag)auto_led=1;break;
	jb	_auto_flag,00237$
	ljmp	00133$
00237$:
;	assignBit
	setb	_P2_1
	ljmp	00133$
;	Receiver.c:362: case 'c':time_delay=7 ;state = 3;
00108$:
	mov	_time_delay,#0x07
	mov	(_time_delay + 1),#0x00
	mov	_state,#0x03
	mov	(_state + 1),#0x00
;	Receiver.c:363: if(auto_flag)auto_led=1;break;
	jb	_auto_flag,00238$
	ljmp	00133$
00238$:
;	assignBit
	setb	_P2_1
	ljmp	00133$
;	Receiver.c:365: case 'd':time_delay=7 ;state = 7;
00111$:
	mov	_time_delay,#0x07
	mov	(_time_delay + 1),#0x00
	mov	_state,#0x07
	mov	(_state + 1),#0x00
;	Receiver.c:366: if(auto_flag)auto_led=1;break;
	jb	_auto_flag,00239$
	ljmp	00133$
00239$:
;	assignBit
	setb	_P2_1
	ljmp	00133$
;	Receiver.c:368: case 'e':time_delay=7 ;state = 4;
00114$:
	mov	_time_delay,#0x07
	mov	(_time_delay + 1),#0x00
	mov	_state,#0x04
	mov	(_state + 1),#0x00
;	Receiver.c:369: if(auto_flag)auto_led=1;break;
	jb	_auto_flag,00240$
	ljmp	00133$
00240$:
;	assignBit
	setb	_P2_1
	ljmp	00133$
;	Receiver.c:371: case 'f':time_delay=10;state = 5;
00117$:
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
	mov	_state,#0x05
	mov	(_state + 1),#0x00
;	Receiver.c:372: if(auto_flag)auto_led=1;break;
	jb	_auto_flag,00241$
	ljmp	00133$
00241$:
;	assignBit
	setb	_P2_1
	ljmp	00133$
;	Receiver.c:374: case 'g':time_delay=20;state = 6;
00120$:
	mov	_time_delay,#0x14
	mov	(_time_delay + 1),#0x00
	mov	_state,#0x06
	mov	(_state + 1),#0x00
;	Receiver.c:375: if(auto_flag)auto_led=1;break;
	jnb	_auto_flag,00133$
;	assignBit
	setb	_P2_1
;	Receiver.c:377: case 'n':time_delay=15;state = 8;
	sjmp	00133$
00123$:
	mov	_time_delay,#0x0f
	mov	(_time_delay + 1),#0x00
	mov	_state,#0x08
	mov	(_state + 1),#0x00
;	Receiver.c:378: if(auto_flag)auto_led=1;break;
	jnb	_auto_flag,00133$
;	assignBit
	setb	_P2_1
;	Receiver.c:380: case 'u':time_delay=15;state = 9;
	sjmp	00133$
00126$:
	mov	_time_delay,#0x0f
	mov	(_time_delay + 1),#0x00
	mov	_state,#0x09
	mov	(_state + 1),#0x00
;	Receiver.c:381: if(auto_flag)auto_led=1;break;
	jnb	_auto_flag,00133$
;	assignBit
	setb	_P2_1
;	Receiver.c:383: default :ES=0;
	sjmp	00133$
00129$:
;	assignBit
	clr	_ES
;	Receiver.c:384: serialCount=0;
	clr	a
	mov	_serialCount,a
	mov	(_serialCount + 1),a
;	Receiver.c:385: state=20;
	mov	_state,#0x14
;	1-genFromRTrack replaced	mov	(_state + 1),#0x00
	mov	(_state + 1),a
;	Receiver.c:386: timerCount=0;
	mov	_timerCount,a
	mov	(_timerCount + 1),a
;	Receiver.c:387: P0_1 =0;
;	assignBit
	clr	_P0_1
;	Receiver.c:388: P0_0 =0;
;	assignBit
	clr	_P0_0
;	Receiver.c:389: P2_6=0;
;	assignBit
	clr	_P2_6
;	Receiver.c:390: up_led=0;
;	assignBit
	clr	_P2_7
;	Receiver.c:391: down_led=0;
;	assignBit
	clr	_P2_4
;	Receiver.c:393: Transmit_data('x');
	mov	dpl,#0x78
	lcall	_Transmit_data
;	Receiver.c:394: __asm nop __endasm;
	nop	
;	Receiver.c:395: __asm nop __endasm;
	nop	
;	Receiver.c:396: __asm nop __endasm;
	nop	
;	Receiver.c:397: __asm nop __endasm;
	nop	
;	Receiver.c:398: while(data_r!='y')
00130$:
	mov	a,#0x79
	cjne	a,_data_r,00245$
	sjmp	00132$
00245$:
;	Receiver.c:400: state=20;
	mov	_state,#0x14
	mov	(_state + 1),#0x00
;	Receiver.c:401: delay();
	lcall	_delay
;	Receiver.c:402: delay();
	lcall	_delay
;	Receiver.c:403: Transmit_data('x');
	mov	dpl,#0x78
	lcall	_Transmit_data
;	Receiver.c:404: data_r=SBUF;
	mov	_data_r,_SBUF
;	Receiver.c:405: RI = 0;
;	assignBit
	clr	_RI
	sjmp	00130$
00132$:
;	Receiver.c:407: ES=1;
;	assignBit
	setb	_ES
;	Receiver.c:408: }//switch end
00133$:
;	Receiver.c:411: if(serialCount>4000)
	clr	c
	mov	a,#0xa0
	subb	a,_serialCount
	mov	a,#(0x0f ^ 0x80)
	mov	b,(_serialCount + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00136$
;	Receiver.c:412: {serialCount=0;data_r='q';}
	clr	a
	mov	_serialCount,a
	mov	(_serialCount + 1),a
	mov	_data_r,#0x71
00136$:
;	Receiver.c:413: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer0'
;------------------------------------------------------------
;	Receiver.c:415: void InitTimer0(void)
;	-----------------------------------------
;	 function InitTimer0
;	-----------------------------------------
_InitTimer0:
;	Receiver.c:417: TMOD |= 0x01;    // Set timer0 in mode 1
	orl	_TMOD,#0x01
;	Receiver.c:418: TH0 = 0xee;      // 5 msec reloading time
	mov	_TH0,#0xee
;	Receiver.c:419: TL0 = 0x00;      // First time value
	mov	_TL0,#0x00
;	Receiver.c:420: TR0 = 1;         // Start Timer 1
;	assignBit
	setb	_TR0
;	Receiver.c:421: ET0 = 1;         // Enable Timer1 interrupts	
;	assignBit
	setb	_ET0
;	Receiver.c:422: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_switches'
;------------------------------------------------------------
;	Receiver.c:424: void check_switches()
;	-----------------------------------------
;	 function check_switches
;	-----------------------------------------
_check_switches:
;	Receiver.c:426: if(!ac_key)
	jb	_P1_3,00111$
;	Receiver.c:428: if(!ac_key)
	jb	_P1_3,00111$
;	Receiver.c:430: delay();
	lcall	_delay
;	Receiver.c:431: ac_state++;		
	inc	_ac_state
;	Receiver.c:432: if(ac_state==3)
	mov	a,#0x03
	cjne	a,_ac_state,00102$
;	Receiver.c:433: ac_state=0;
	mov	_ac_state,#0x00
00102$:
;	Receiver.c:434: switch(ac_state)
	clr	a
	cjne	a,_ac_state,00191$
	sjmp	00103$
00191$:
	mov	a,#0x01
	cjne	a,_ac_state,00192$
	sjmp	00104$
00192$:
	mov	a,#0x02
;	Receiver.c:436: case 0:Transmit_data('l');ac_led_up=1;ac_led_down=1;delay();break;
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
;	Receiver.c:437: case 1:Transmit_data('m');ac_led_up=1;ac_led_down=0;delay();break;
	sjmp	00111$
00104$:
	mov	dpl,#0x6d
	lcall	_Transmit_data
;	assignBit
	setb	_P2_2
;	assignBit
	clr	_P2_3
	lcall	_delay
;	Receiver.c:438: case 2:Transmit_data('h');ac_led_up=0;ac_led_down=1;delay();break;
	sjmp	00111$
00105$:
	mov	dpl,#0x68
	lcall	_Transmit_data
;	assignBit
	clr	_P2_2
;	assignBit
	setb	_P2_3
	lcall	_delay
;	Receiver.c:440: }//switch end
00111$:
;	Receiver.c:443: if(!dim_key)
	jb	_P1_4,00115$
;	Receiver.c:445: delay();
	lcall	_delay
;	Receiver.c:447: dim_val = dim_val + 10;
	mov	a,#0x0a
	add	a,_dim_val
	mov	_dim_val,a
	clr	a
	addc	a,(_dim_val + 1)
	mov	(_dim_val + 1),a
;	Receiver.c:448: dim_val2=50-dim_val;
	mov	a,#0x32
	clr	c
	subb	a,_dim_val
	mov	_dim_val2,a
	clr	a
	subb	a,(_dim_val + 1)
	mov	(_dim_val2 + 1),a
;	Receiver.c:449: if(dim_val>50){dim_val=1;dim_val2=50;}
	clr	c
	mov	a,#0x32
	subb	a,_dim_val
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_dim_val + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00115$
	mov	_dim_val,#0x01
	mov	(_dim_val + 1),#0x00
	mov	_dim_val2,#0x32
	mov	(_dim_val2 + 1),#0x00
00115$:
;	Receiver.c:452: if(!auto_key)
	jb	_P1_2,00117$
;	Receiver.c:454: delay();
	lcall	_delay
;	Receiver.c:455: auto_flag=!auto_flag;
	cpl	_auto_flag
00117$:
;	Receiver.c:458: if(!pwr_key)
	jb	_P1_7,00122$
;	Receiver.c:460: delay();
	lcall	_delay
;	Receiver.c:461: delay();
	lcall	_delay
;	Receiver.c:462: delay();
	lcall	_delay
;	Receiver.c:463: if(!pwr_key)
	jb	_P1_7,00122$
;	Receiver.c:465: pwr_led=0;up_led_main =0;center_led =0;down_led_main=0;ac_led_up=0;ac_led_down=0;auto_led=0;
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
;	Receiver.c:466: TR0 = 0;         // Stop Timer 1
;	assignBit
	clr	_TR0
;	Receiver.c:467: ET0 = 0;         // Enable Timer1 interrupts	
;	assignBit
	clr	_ET0
;	Receiver.c:468: delay();delay();
	lcall	_delay
	lcall	_delay
;	Receiver.c:469: pwr_out=1;
;	assignBit
	setb	_P0_7
;	Receiver.c:470: shutdown:
00118$:
;	Receiver.c:471: goto shutdown;
	sjmp	00118$
00122$:
;	Receiver.c:476: if(!manual_up_key)
	jb	_P1_0,00127$
;	Receiver.c:478: up_led=1;
;	assignBit
	setb	_P2_7
;	Receiver.c:479: down_led=0;
;	assignBit
	clr	_P2_4
;	Receiver.c:480: up_led_main=1;
;	assignBit
	setb	_P0_1
;	Receiver.c:481: center_led=0;
;	assignBit
	clr	_P0_0
;	Receiver.c:482: down_led_main=0;
;	assignBit
	clr	_P2_6
;	Receiver.c:483: TR0=0;
;	assignBit
	clr	_TR0
	ret
00127$:
;	Receiver.c:486: else if(!manual_down_key)
	jb	_P1_1,00124$
;	Receiver.c:488: up_led=0;
;	assignBit
	clr	_P2_7
;	Receiver.c:489: down_led=1;
;	assignBit
	setb	_P2_4
;	Receiver.c:490: up_led_main=0;
;	assignBit
	clr	_P0_1
;	Receiver.c:491: center_led=0;
;	assignBit
	clr	_P0_0
;	Receiver.c:492: down_led_main=1;
;	assignBit
	setb	_P2_6
;	Receiver.c:493: TR0=0;
;	assignBit
	clr	_TR0
	ret
00124$:
;	Receiver.c:498: TR0=1;
;	assignBit
	setb	_TR0
;	Receiver.c:501: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
