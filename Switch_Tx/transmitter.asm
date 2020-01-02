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
	.globl _pushed
	.globl _a_g
	.globl _received
	.globl _data_r
	.globl _button
	.globl _time_delay
	.globl _timerCount
	.globl _state_was
	.globl _state
	.globl _delay
	.globl _UART_Init
	.globl _handshake
	.globl _Transmit_data
	.globl _check_x
	.globl _startup
	.globl _InitTimer1
	.globl _default_and_a_g
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
_state_was::
	.ds 2
_timerCount::
	.ds 2
_time_delay::
	.ds 2
_button::
	.ds 1
_data_r::
	.ds 1
_received::
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
_a_g::
	.ds 1
_pushed::
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
;	transmitter.c:13: volatile int state = 0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
;	transmitter.c:14: volatile int state_was = 0;
	mov	_state_was,a
	mov	(_state_was + 1),a
;	transmitter.c:15: volatile int timerCount = 0;
	mov	_timerCount,a
	mov	(_timerCount + 1),a
;	transmitter.c:16: volatile int time_delay = 15;
	mov	_time_delay,#0x0f
;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
	mov	(_time_delay + 1),a
;	transmitter.c:19: volatile char button='l';
	mov	_button,#0x6c
;	transmitter.c:21: char data_r=0;
;	1-genFromRTrack replaced	mov	_data_r,#0x00
	mov	_data_r,a
;	transmitter.c:22: char received=1;
	mov	_received,#0x01
;	transmitter.c:17: volatile __bit a_g=0;
;	assignBit
	clr	_a_g
;	transmitter.c:18: volatile __bit pushed=0;
;	assignBit
	clr	_pushed
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
;	transmitter.c:24: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
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
;	transmitter.c:26: TH0  = 0Xee;         // ReLoad the timer value for 5ms
	mov	_TH0,#0xee
;	transmitter.c:27: TL0  = 0X00;
	mov	_TL0,#0x00
;	transmitter.c:28: timerCount++;
	mov	r6,_timerCount
	mov	r7,(_timerCount + 1)
	mov	a,#0x01
	add	a,r6
	mov	_timerCount,a
	clr	a
	addc	a,r7
	mov	(_timerCount + 1),a
;	transmitter.c:30: if(!pushed)
	jnb	_pushed,00228$
	ljmp	00118$
00228$:
;	transmitter.c:32: switch(P1)
	mov	r7,_P1
	cjne	r7,#0x1f,00229$
	ljmp	00113$
00229$:
	cjne	r7,#0x2f,00230$
	ljmp	00112$
00230$:
	cjne	r7,#0x33,00231$
	ljmp	00114$
00231$:
	cjne	r7,#0x37,00232$
	ljmp	00108$
00232$:
	cjne	r7,#0x3b,00233$
	sjmp	00104$
00233$:
	cjne	r7,#0x3d,00234$
	sjmp	00103$
00234$:
	cjne	r7,#0x3e,00235$
	sjmp	00102$
00235$:
	cjne	r7,#0x3f,00236$
	sjmp	00237$
00236$:
	ljmp	00115$
00237$:
;	transmitter.c:35: pushed = 0;
;	assignBit
	clr	_pushed
;	transmitter.c:36: break;
	ljmp	00118$
;	transmitter.c:38: case 0x3e:
00102$:
;	transmitter.c:39: pushed = 1;
;	assignBit
	setb	_pushed
;	transmitter.c:40: Transmit_data('a');
	mov	dpl,#0x61
	lcall	_Transmit_data
;	transmitter.c:41: P2 =0x80;
	mov	_P2,#0x80
;	transmitter.c:42: state = 1;
	mov	_state,#0x01
	mov	(_state + 1),#0x00
;	transmitter.c:43: button = 'a';
	mov	_button,#0x61
;	transmitter.c:44: a_g=1;
;	assignBit
	setb	_a_g
;	transmitter.c:45: break;
	ljmp	00118$
;	transmitter.c:47: case 0x3d:
00103$:
;	transmitter.c:48: pushed = 1;
;	assignBit
	setb	_pushed
;	transmitter.c:49: Transmit_data('b');
	mov	dpl,#0x62
	lcall	_Transmit_data
;	transmitter.c:50: time_delay=3;
	mov	_time_delay,#0x03
	mov	(_time_delay + 1),#0x00
;	transmitter.c:51: state = 2;
	mov	_state,#0x02
	mov	(_state + 1),#0x00
;	transmitter.c:52: button = 'b';
	mov	_button,#0x62
;	transmitter.c:53: a_g=0;
;	assignBit
	clr	_a_g
;	transmitter.c:54: break;
	ljmp	00118$
;	transmitter.c:56: case 0x3b:
00104$:
;	transmitter.c:57: if(received)
	mov	a,_received
	jz	00106$
;	transmitter.c:58: {		pushed = 1;
;	assignBit
	setb	_pushed
;	transmitter.c:59: Transmit_data('d');
	mov	dpl,#0x64
	lcall	_Transmit_data
;	transmitter.c:60: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
;	transmitter.c:61: button = 'd';
	mov	_button,#0x64
	sjmp	00107$
00106$:
;	transmitter.c:64: {		pushed = 1;
;	assignBit
	setb	_pushed
;	transmitter.c:65: Transmit_data('c');
	mov	dpl,#0x63
	lcall	_Transmit_data
;	transmitter.c:66: state = 3;
	mov	_state,#0x03
	mov	(_state + 1),#0x00
;	transmitter.c:67: button = 'c';
	mov	_button,#0x63
00107$:
;	transmitter.c:69: time_delay=3;
	mov	_time_delay,#0x03
	mov	(_time_delay + 1),#0x00
;	transmitter.c:70: a_g=0;
;	assignBit
	clr	_a_g
;	transmitter.c:71: break;
	ljmp	00118$
;	transmitter.c:73: case 0x37:
00108$:
;	transmitter.c:74: if(received)
	mov	a,_received
	jz	00110$
;	transmitter.c:75: {		pushed = 1;
;	assignBit
	setb	_pushed
;	transmitter.c:76: Transmit_data('d');
	mov	dpl,#0x64
	lcall	_Transmit_data
;	transmitter.c:77: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
;	transmitter.c:78: button = 'd';
	mov	_button,#0x64
	sjmp	00111$
00110$:
;	transmitter.c:82: pushed = 1;
;	assignBit
	setb	_pushed
;	transmitter.c:83: Transmit_data('e');
	mov	dpl,#0x65
	lcall	_Transmit_data
;	transmitter.c:84: state = 4;
	mov	_state,#0x04
	mov	(_state + 1),#0x00
;	transmitter.c:85: button = 'e';
	mov	_button,#0x65
00111$:
;	transmitter.c:87: time_delay=3;
	mov	_time_delay,#0x03
	mov	(_time_delay + 1),#0x00
;	transmitter.c:88: a_g=0;
;	assignBit
	clr	_a_g
;	transmitter.c:89: break;
;	transmitter.c:91: case 0x2f:
	sjmp	00118$
00112$:
;	transmitter.c:92: pushed = 1;
;	assignBit
	setb	_pushed
;	transmitter.c:93: Transmit_data('f');
	mov	dpl,#0x66
	lcall	_Transmit_data
;	transmitter.c:94: state = 5;
	mov	_state,#0x05
	mov	(_state + 1),#0x00
;	transmitter.c:95: button = 'f';
	mov	_button,#0x66
;	transmitter.c:96: time_delay=3;
	mov	_time_delay,#0x03
	mov	(_time_delay + 1),#0x00
;	transmitter.c:97: a_g=0;
;	assignBit
	clr	_a_g
;	transmitter.c:98: break;
;	transmitter.c:100: case 0x1f:
	sjmp	00118$
00113$:
;	transmitter.c:101: pushed = 1;
;	assignBit
	setb	_pushed
;	transmitter.c:102: Transmit_data('g');
	mov	dpl,#0x67
	lcall	_Transmit_data
;	transmitter.c:103: P2 =0x20;
	mov	_P2,#0x20
;	transmitter.c:104: state = 6;
	mov	_state,#0x06
	mov	(_state + 1),#0x00
;	transmitter.c:105: button = 'g';
	mov	_button,#0x67
;	transmitter.c:106: a_g=1;
;	assignBit
	setb	_a_g
;	transmitter.c:107: break;
;	transmitter.c:109: case 0x33:
	sjmp	00118$
00114$:
;	transmitter.c:110: pushed = 1;
;	assignBit
	setb	_pushed
;	transmitter.c:111: Transmit_data('d');
	mov	dpl,#0x64
	lcall	_Transmit_data
;	transmitter.c:112: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
;	transmitter.c:113: button = 'd';
	mov	_button,#0x64
;	transmitter.c:114: time_delay=3;
	mov	_time_delay,#0x03
	mov	(_time_delay + 1),#0x00
;	transmitter.c:115: a_g=0;
;	assignBit
	clr	_a_g
;	transmitter.c:116: break;
;	transmitter.c:118: default:pushed = 0;
	sjmp	00118$
00115$:
;	assignBit
	clr	_pushed
;	transmitter.c:120: }
00118$:
;	transmitter.c:125: if(timerCount == 60)
	mov	a,#0x3c
	cjne	a,_timerCount,00240$
	clr	a
	cjne	a,(_timerCount + 1),00240$
	sjmp	00241$
00240$:
	sjmp	00120$
00241$:
;	transmitter.c:127: pushed=0;
;	assignBit
	clr	_pushed
;	transmitter.c:128: Transmit_data(button);
	mov	dpl,_button
	lcall	_Transmit_data
00120$:
;	transmitter.c:133: if(timerCount < (time_delay*10)) // count for LED-ON delay
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
	jc	00242$
	ljmp	00148$
00242$:
;	transmitter.c:135: switch(state)
	mov	r6,_state
	mov	a,(_state + 1)
	mov	r7,a
	jnb	acc.7,00243$
	ljmp	00149$
00243$:
	clr	c
	mov	a,#0x09
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00244$
	ljmp	00149$
00244$:
	mov	a,r6
	mov	b,a
	add	a,#(00245$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00246$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00245$:
	.db	00149$
	.db	00121$
	.db	00122$
	.db	00123$
	.db	00124$
	.db	00125$
	.db	00126$
	.db	00127$
	.db	00128$
	.db	00129$
00246$:
	.db	00149$>>8
	.db	00121$>>8
	.db	00122$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00125$>>8
	.db	00126$>>8
	.db	00127$>>8
	.db	00128$>>8
	.db	00129$>>8
;	transmitter.c:138: case 1:	P2 =0x80;break;
00121$:
	mov	_P2,#0x80
	ljmp	00149$
;	transmitter.c:139: case 2:	P2 =0x80;break;
00122$:
	mov	_P2,#0x80
	ljmp	00149$
;	transmitter.c:140: case 3:	P2 =0xc0;break;
00123$:
	mov	_P2,#0xc0
	ljmp	00149$
;	transmitter.c:141: case 4:	P2 =0x60;break;
00124$:
	mov	_P2,#0x60
	ljmp	00149$
;	transmitter.c:142: case 5:	P2 =0x20;break;
00125$:
	mov	_P2,#0x20
	ljmp	00149$
;	transmitter.c:143: case 6:	P2 =0x20;break;
00126$:
	mov	_P2,#0x20
	ljmp	00149$
;	transmitter.c:144: case 7:	P2 =0x40;break;
00127$:
	mov	_P2,#0x40
	ljmp	00149$
;	transmitter.c:145: case 8:	P2 =0x80;break;
00128$:
	mov	_P2,#0x80
	ljmp	00149$
;	transmitter.c:146: case 9:	P2 =0x20;break;
00129$:
	mov	_P2,#0x20
	ljmp	00149$
;	transmitter.c:147: default:break;}
00148$:
;	transmitter.c:151: else if((timerCount > time_delay) &&(timerCount<time_delay*20)) // count for LED-ON delay
	clr	c
	mov	a,_time_delay
	subb	a,_timerCount
	mov	a,(_time_delay + 1)
	xrl	a,#0x80
	mov	b,(_timerCount + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00247$
	ljmp	00144$
00247$:
	mov	__mulint_PARM_2,_time_delay
	mov	(__mulint_PARM_2 + 1),(_time_delay + 1)
	mov	dptr,#0x0014
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
	jc	00248$
	ljmp	00144$
00248$:
;	transmitter.c:153: switch(state)
	mov	r6,_state
	mov	a,(_state + 1)
	mov	r7,a
	jnb	acc.7,00249$
	ljmp	00149$
00249$:
	clr	c
	mov	a,#0x09
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00250$
	ljmp	00149$
00250$:
	mov	a,r6
	mov	b,a
	add	a,#(00251$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00252$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00251$:
	.db	00149$
	.db	00139$
	.db	00138$
	.db	00138$
	.db	00138$
	.db	00138$
	.db	00140$
	.db	00138$
	.db	00138$
	.db	00138$
00252$:
	.db	00149$>>8
	.db	00139$>>8
	.db	00138$>>8
	.db	00138$>>8
	.db	00138$>>8
	.db	00138$>>8
	.db	00140$>>8
	.db	00138$>>8
	.db	00138$>>8
	.db	00138$>>8
;	transmitter.c:162: case 9:P2 =0x00;break;
00138$:
	mov	_P2,#0x00
;	transmitter.c:163: case 1:P2 =0x80;break;
	sjmp	00149$
00139$:
	mov	_P2,#0x80
;	transmitter.c:164: case 6:P2 =0x20;break;
	sjmp	00149$
00140$:
	mov	_P2,#0x20
;	transmitter.c:165: default:break;}
	sjmp	00149$
00144$:
;	transmitter.c:169: timerCount = 0;
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
00149$:
;	transmitter.c:171: state_was=state;
	mov	_state_was,_state
	mov	(_state_was + 1),(_state + 1)
;	transmitter.c:172: }
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
;	transmitter.c:174: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	transmitter.c:176: startup();
	lcall	_startup
;	transmitter.c:178: UART_Init();
	lcall	_UART_Init
;	transmitter.c:179: handshake();
	lcall	_handshake
;	transmitter.c:181: InitTimer1();
	lcall	_InitTimer1
;	transmitter.c:183: EA  = 1;         // Global interrupt enable
;	assignBit
	setb	_EA
;	transmitter.c:185: while(1)
00107$:
;	transmitter.c:188: if(!pushed)
	jb	_pushed,00105$
;	transmitter.c:190: delay();
	lcall	_delay
;	transmitter.c:191: if(!pushed)
	jb	_pushed,00105$
;	transmitter.c:193: default_and_a_g();
	lcall	_default_and_a_g
00105$:
;	transmitter.c:196: delay();
	lcall	_delay
;	transmitter.c:197: check_x();
	lcall	_check_x
;	transmitter.c:199: }
	sjmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	transmitter.c:202: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	transmitter.c:205: for(i=0;i<0x33;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	transmitter.c:206: for(j=0;j<0xff;j++);
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
;	transmitter.c:205: for(i=0;i<0x33;i++)
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
;	transmitter.c:207: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	transmitter.c:210: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	transmitter.c:212: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	mov	_TMOD,#0x20
;	transmitter.c:213: TH1 = 0xFD;		/* Load value for 9600 baud rate */
	mov	_TH1,#0xfd
;	transmitter.c:214: SCON = 0x50;		/* Mode 1, reception enable */
	mov	_SCON,#0x50
;	transmitter.c:215: TR1 = 1;		/* Start timer 1 */
;	assignBit
	setb	_TR1
;	transmitter.c:216: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handshake'
;------------------------------------------------------------
;	transmitter.c:219: void handshake()
;	-----------------------------------------
;	 function handshake
;	-----------------------------------------
_handshake:
;	transmitter.c:221: start:while(!data_r)
00102$:
	mov	a,_data_r
	jnz	00104$
;	transmitter.c:223: data_r=SBUF;
	mov	_data_r,_SBUF
;	transmitter.c:224: RI=0;
;	assignBit
	clr	_RI
;	transmitter.c:225: P2 = 0xA0; // Turn ON all LED's connected to Port1
	mov	_P2,#0xa0
;	transmitter.c:226: delay();
	lcall	_delay
;	transmitter.c:227: P2 = 0x00; // Turn OFF all LED's connected to Port1
	mov	_P2,#0x00
;	transmitter.c:228: delay();
	lcall	_delay
	sjmp	00102$
00104$:
;	transmitter.c:231: if(data_r=='x')
	mov	a,#0x78
	cjne	a,_data_r,00102$
;	transmitter.c:233: Transmit_data('y');
	mov	dpl,#0x79
	lcall	_Transmit_data
;	transmitter.c:234: data_r=0;
	mov	_data_r,#0x00
;	transmitter.c:237: else goto start;
;	transmitter.c:238: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Transmit_data'
;------------------------------------------------------------
;tx_data                   Allocated to registers 
;------------------------------------------------------------
;	transmitter.c:241: void Transmit_data(char tx_data)
;	-----------------------------------------
;	 function Transmit_data
;	-----------------------------------------
_Transmit_data:
	mov	_SBUF,dpl
;	transmitter.c:244: while (TI==0);		/* Wait until stop bit transmit */
00101$:
;	transmitter.c:245: TI = 0;			/* Clear TI flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	transmitter.c:246: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_x'
;------------------------------------------------------------
;	transmitter.c:250: void check_x()
;	-----------------------------------------
;	 function check_x
;	-----------------------------------------
_check_x:
;	transmitter.c:253: TI=0;
;	assignBit
	clr	_TI
;	transmitter.c:254: data_r = SBUF;		/* Load char in SBUF register */
	mov	_data_r,_SBUF
;	transmitter.c:255: RI = 0;			/* Clear TI flag */
;	assignBit
	clr	_RI
;	transmitter.c:256: if(data_r=='x')
	mov	a,#0x78
	cjne	a,_data_r,00108$
;	transmitter.c:257: Transmit_data('y');
	mov	dpl,#0x79
	ljmp	_Transmit_data
00108$:
;	transmitter.c:258: else if((data_r=='m')||(data_r=='h'))
	mov	a,#0x6d
	cjne	a,_data_r,00126$
	sjmp	00103$
00126$:
	mov	a,#0x68
	cjne	a,_data_r,00104$
00103$:
;	transmitter.c:259: received = 0;
	mov	_received,#0x00
	ret
00104$:
;	transmitter.c:260: else if(data_r=='l')
	mov	a,#0x6c
	cjne	a,_data_r,00110$
;	transmitter.c:261: received = 1;
	mov	_received,#0x01
00110$:
;	transmitter.c:262: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startup'
;------------------------------------------------------------
;	transmitter.c:265: void startup(void)
;	-----------------------------------------
;	 function startup
;	-----------------------------------------
_startup:
;	transmitter.c:267: P1 = 0xff;
	mov	_P1,#0xff
;	transmitter.c:268: P2 = 0x00;
	mov	_P2,#0x00
;	transmitter.c:269: P2 = 0x00;
	mov	_P2,#0x00
;	transmitter.c:270: delay();delay();
	lcall	_delay
	lcall	_delay
;	transmitter.c:271: P2 = 0xE0;
	mov	_P2,#0xe0
;	transmitter.c:272: delay();
	lcall	_delay
;	transmitter.c:273: P2 = 0x80;
	mov	_P2,#0x80
;	transmitter.c:274: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	transmitter.c:275: P2 = 0x40;
	mov	_P2,#0x40
;	transmitter.c:276: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	transmitter.c:277: P2 = 0x20;
	mov	_P2,#0x20
;	transmitter.c:278: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	transmitter.c:279: P2 = 0x00;
	mov	_P2,#0x00
;	transmitter.c:280: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer1'
;------------------------------------------------------------
;	transmitter.c:284: void InitTimer1(void)
;	-----------------------------------------
;	 function InitTimer1
;	-----------------------------------------
_InitTimer1:
;	transmitter.c:286: TMOD |= 0x01;    // Set timer0 in mode 1
	orl	_TMOD,#0x01
;	transmitter.c:287: TH0 = 0xee;      // 5 msec reloading time
	mov	_TH0,#0xee
;	transmitter.c:288: TL0 = 0x00;      // First time value
	mov	_TL0,#0x00
;	transmitter.c:289: TR0 = 1;         // Start Timer 1
;	assignBit
	setb	_TR0
;	transmitter.c:290: ET0 = 1;         // Enable Timer1 interrupts	
;	assignBit
	setb	_ET0
;	transmitter.c:291: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'default_and_a_g'
;------------------------------------------------------------
;	transmitter.c:294: void default_and_a_g()
;	-----------------------------------------
;	 function default_and_a_g
;	-----------------------------------------
_default_and_a_g:
;	transmitter.c:297: if(a_g)
	jnb	_a_g,00111$
;	transmitter.c:299: if(((state_was==1)||(state_was==8))&&(!pushed))
	mov	a,#0x01
	cjne	a,_state_was,00136$
	dec	a
	cjne	a,(_state_was + 1),00136$
	sjmp	00109$
00136$:
	mov	a,#0x08
	cjne	a,_state_was,00137$
	clr	a
	cjne	a,(_state_was + 1),00137$
	sjmp	00138$
00137$:
	sjmp	00106$
00138$:
00109$:
	jb	_pushed,00106$
;	transmitter.c:300: {state = 8;		Transmit_data('n');		time_delay=10;
	mov	_state,#0x08
	mov	(_state + 1),#0x00
	mov	dpl,#0x6e
	lcall	_Transmit_data
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	transmitter.c:301: button='n';
	mov	_button,#0x6e
	ret
00106$:
;	transmitter.c:303: else if(((state_was==6)||(state_was==9))&&(!pushed))
	mov	a,#0x06
	cjne	a,_state_was,00140$
	clr	a
	cjne	a,(_state_was + 1),00140$
	sjmp	00104$
00140$:
	mov	a,#0x09
	cjne	a,_state_was,00141$
	clr	a
	cjne	a,(_state_was + 1),00141$
	sjmp	00142$
00141$:
	ret
00142$:
00104$:
	jb	_pushed,00113$
;	transmitter.c:304: {state = 9;		Transmit_data('u');		time_delay=10;
	mov	_state,#0x09
	mov	(_state + 1),#0x00
	mov	dpl,#0x75
	lcall	_Transmit_data
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	transmitter.c:305: button='u';
	mov	_button,#0x75
	ret
00111$:
;	transmitter.c:310: a_g=0;
;	assignBit
	clr	_a_g
;	transmitter.c:311: state=0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
;	transmitter.c:312: button = 'l';	
	mov	_button,#0x6c
;	transmitter.c:313: Transmit_data('l');
	mov	dpl,#0x6c
	lcall	_Transmit_data
;	transmitter.c:314: P2=0xA0;
	mov	_P2,#0xa0
;	transmitter.c:315: delay();
	lcall	_delay
;	transmitter.c:316: delay();
	lcall	_delay
;	transmitter.c:317: delay();
	lcall	_delay
;	transmitter.c:318: P2=0x00;
	mov	_P2,#0x00
;	transmitter.c:319: delay();
	lcall	_delay
;	transmitter.c:320: delay();
	lcall	_delay
;	transmitter.c:321: delay();
;	transmitter.c:323: }
	ljmp	_delay
00113$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
