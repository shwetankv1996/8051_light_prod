;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11418 (Linux)
;--------------------------------------------------------
	.module timer_transmitter
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
	.globl _state_l
	.globl _pushed
	.globl _a_g
	.globl _received
	.globl _data_r
	.globl _count
	.globl _button
	.globl _time_delay
	.globl _timerCount
	.globl _state_was
	.globl _state
	.globl _delay
	.globl _UART_Init
	.globl _handshake
	.globl _Transmit_data
	.globl _startup
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
_state_was::
	.ds 2
_timerCount::
	.ds 2
_time_delay::
	.ds 2
_button::
	.ds 1
_count::
	.ds 2
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
_state_l::
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
;	timer_transmitter.c:10: volatile int state = 0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
;	timer_transmitter.c:11: volatile int state_was = 0;
	mov	_state_was,a
	mov	(_state_was + 1),a
;	timer_transmitter.c:12: volatile int timerCount = 0;
	mov	_timerCount,a
	mov	(_timerCount + 1),a
;	timer_transmitter.c:13: volatile int time_delay = 15;
	mov	_time_delay,#0x0f
;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
	mov	(_time_delay + 1),a
;	timer_transmitter.c:17: volatile char button='l';
	mov	_button,#0x6c
;	timer_transmitter.c:18: volatile int count=15;
	mov	_count,#0x0f
;	1-genFromRTrack replaced	mov	(_count + 1),#0x00
	mov	(_count + 1),a
;	timer_transmitter.c:20: char data_r=0;
;	1-genFromRTrack replaced	mov	_data_r,#0x00
	mov	_data_r,a
;	timer_transmitter.c:21: char received=1;
	mov	_received,#0x01
;	timer_transmitter.c:14: volatile __bit a_g=0;
;	assignBit
	clr	_a_g
;	timer_transmitter.c:15: volatile __bit pushed=0;
;	assignBit
	clr	_pushed
;	timer_transmitter.c:16: volatile __bit state_l=0;
;	assignBit
	clr	_state_l
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
;	timer_transmitter.c:23: void isr_timer0(void) __interrupt 1   // It is called after every 5msec
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
;	timer_transmitter.c:25: TH0  = 0Xee;         // ReLoad the timer value for 5ms
	mov	_TH0,#0xee
;	timer_transmitter.c:26: TL0  = 0X00;
	mov	_TL0,#0x00
;	timer_transmitter.c:27: timerCount++;
	mov	r6,_timerCount
	mov	r7,(_timerCount + 1)
	mov	a,#0x01
	add	a,r6
	mov	_timerCount,a
	clr	a
	addc	a,r7
	mov	(_timerCount + 1),a
;	timer_transmitter.c:29: if(!pushed)
	jnb	_pushed,00306$
	ljmp	00120$
00306$:
;	timer_transmitter.c:31: switch(P1)
	mov	r7,_P1
	cjne	r7,#0x1f,00307$
	ljmp	00115$
00307$:
	cjne	r7,#0x2f,00308$
	ljmp	00114$
00308$:
	cjne	r7,#0x33,00309$
	ljmp	00116$
00309$:
	cjne	r7,#0x37,00310$
	ljmp	00110$
00310$:
	cjne	r7,#0x3b,00311$
	sjmp	00106$
00311$:
	cjne	r7,#0x3d,00312$
	sjmp	00105$
00312$:
	cjne	r7,#0x3e,00313$
	sjmp	00104$
00313$:
	cjne	r7,#0x3f,00314$
	sjmp	00315$
00314$:
	ljmp	00117$
00315$:
;	timer_transmitter.c:34: count--;
	mov	r6,_count
	mov	r7,(_count + 1)
	mov	a,r6
	add	a,#0xff
	mov	_count,a
	mov	a,r7
	addc	a,#0xff
	mov	(_count + 1),a
;	timer_transmitter.c:35: pushed = 0;
;	assignBit
	clr	_pushed
;	timer_transmitter.c:36: if(!count)
	mov	a,_count
	orl	a,(_count + 1)
	jz	00316$
	ljmp	00120$
00316$:
;	timer_transmitter.c:38: state_l=1;
;	assignBit
	setb	_state_l
;	timer_transmitter.c:39: count=15;
	mov	_count,#0x0f
	mov	(_count + 1),#0x00
;	timer_transmitter.c:41: break;
	ljmp	00120$
;	timer_transmitter.c:43: case 0x3e:
00104$:
;	timer_transmitter.c:44: pushed = 1;
;	assignBit
	setb	_pushed
;	timer_transmitter.c:45: Transmit_data('a');
	mov	dpl,#0x61
	lcall	_Transmit_data
;	timer_transmitter.c:46: P2 =0x80;
	mov	_P2,#0x80
;	timer_transmitter.c:47: state = 1;
	mov	_state,#0x01
	mov	(_state + 1),#0x00
;	timer_transmitter.c:48: button = 'a';
	mov	_button,#0x61
;	timer_transmitter.c:49: a_g=1;
;	assignBit
	setb	_a_g
;	timer_transmitter.c:50: break;
	ljmp	00120$
;	timer_transmitter.c:52: case 0x3d:
00105$:
;	timer_transmitter.c:53: pushed = 1;
;	assignBit
	setb	_pushed
;	timer_transmitter.c:54: Transmit_data('b');
	mov	dpl,#0x62
	lcall	_Transmit_data
;	timer_transmitter.c:55: time_delay=3;
	mov	_time_delay,#0x03
	mov	(_time_delay + 1),#0x00
;	timer_transmitter.c:56: state = 2;
	mov	_state,#0x02
	mov	(_state + 1),#0x00
;	timer_transmitter.c:57: button = 'b';
	mov	_button,#0x62
;	timer_transmitter.c:58: a_g=0;
;	assignBit
	clr	_a_g
;	timer_transmitter.c:59: break;
	ljmp	00120$
;	timer_transmitter.c:61: case 0x3b:
00106$:
;	timer_transmitter.c:62: if(received)
	mov	a,_received
	jz	00108$
;	timer_transmitter.c:63: {		pushed = 1;
;	assignBit
	setb	_pushed
;	timer_transmitter.c:64: Transmit_data('d');
	mov	dpl,#0x64
	lcall	_Transmit_data
;	timer_transmitter.c:65: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
;	timer_transmitter.c:66: button = 'd';
	mov	_button,#0x64
	sjmp	00109$
00108$:
;	timer_transmitter.c:69: {		pushed = 1;
;	assignBit
	setb	_pushed
;	timer_transmitter.c:70: Transmit_data('c');
	mov	dpl,#0x63
	lcall	_Transmit_data
;	timer_transmitter.c:71: state = 3;
	mov	_state,#0x03
	mov	(_state + 1),#0x00
;	timer_transmitter.c:72: button = 'c';
	mov	_button,#0x63
00109$:
;	timer_transmitter.c:74: time_delay=3;
	mov	_time_delay,#0x03
	mov	(_time_delay + 1),#0x00
;	timer_transmitter.c:75: a_g=0;
;	assignBit
	clr	_a_g
;	timer_transmitter.c:76: break;
	ljmp	00120$
;	timer_transmitter.c:78: case 0x37:
00110$:
;	timer_transmitter.c:79: if(received)
	mov	a,_received
	jz	00112$
;	timer_transmitter.c:80: {		pushed = 1;
;	assignBit
	setb	_pushed
;	timer_transmitter.c:81: Transmit_data('d');
	mov	dpl,#0x64
	lcall	_Transmit_data
;	timer_transmitter.c:82: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
;	timer_transmitter.c:83: button = 'd';
	mov	_button,#0x64
	sjmp	00113$
00112$:
;	timer_transmitter.c:87: pushed = 1;
;	assignBit
	setb	_pushed
;	timer_transmitter.c:88: Transmit_data('e');
	mov	dpl,#0x65
	lcall	_Transmit_data
;	timer_transmitter.c:89: state = 4;
	mov	_state,#0x04
	mov	(_state + 1),#0x00
;	timer_transmitter.c:90: button = 'e';
	mov	_button,#0x65
00113$:
;	timer_transmitter.c:92: time_delay=3;
	mov	_time_delay,#0x03
	mov	(_time_delay + 1),#0x00
;	timer_transmitter.c:93: a_g=0;
;	assignBit
	clr	_a_g
;	timer_transmitter.c:94: break;
;	timer_transmitter.c:96: case 0x2f:
	sjmp	00120$
00114$:
;	timer_transmitter.c:97: pushed = 1;
;	assignBit
	setb	_pushed
;	timer_transmitter.c:98: Transmit_data('f');
	mov	dpl,#0x66
	lcall	_Transmit_data
;	timer_transmitter.c:99: state = 5;
	mov	_state,#0x05
	mov	(_state + 1),#0x00
;	timer_transmitter.c:100: button = 'f';
	mov	_button,#0x66
;	timer_transmitter.c:101: time_delay=3;
	mov	_time_delay,#0x03
	mov	(_time_delay + 1),#0x00
;	timer_transmitter.c:102: a_g=0;
;	assignBit
	clr	_a_g
;	timer_transmitter.c:103: break;
;	timer_transmitter.c:105: case 0x1f:
	sjmp	00120$
00115$:
;	timer_transmitter.c:106: pushed = 1;
;	assignBit
	setb	_pushed
;	timer_transmitter.c:107: Transmit_data('g');
	mov	dpl,#0x67
	lcall	_Transmit_data
;	timer_transmitter.c:108: P2 =0x20;
	mov	_P2,#0x20
;	timer_transmitter.c:109: state = 6;
	mov	_state,#0x06
	mov	(_state + 1),#0x00
;	timer_transmitter.c:110: button = 'g';
	mov	_button,#0x67
;	timer_transmitter.c:111: a_g=1;
;	assignBit
	setb	_a_g
;	timer_transmitter.c:112: break;
;	timer_transmitter.c:114: case 0x33:
	sjmp	00120$
00116$:
;	timer_transmitter.c:115: pushed = 1;
;	assignBit
	setb	_pushed
;	timer_transmitter.c:116: Transmit_data('d');
	mov	dpl,#0x64
	lcall	_Transmit_data
;	timer_transmitter.c:117: state = 7;
	mov	_state,#0x07
	mov	(_state + 1),#0x00
;	timer_transmitter.c:118: button = 'd';
	mov	_button,#0x64
;	timer_transmitter.c:119: time_delay=3;
	mov	_time_delay,#0x03
	mov	(_time_delay + 1),#0x00
;	timer_transmitter.c:120: a_g=0;
;	assignBit
	clr	_a_g
;	timer_transmitter.c:121: break;
;	timer_transmitter.c:123: default:pushed = 0;
	sjmp	00120$
00117$:
;	assignBit
	clr	_pushed
;	timer_transmitter.c:125: }
00120$:
;	timer_transmitter.c:130: if(timerCount == 40)
	mov	a,#0x28
	cjne	a,_timerCount,00319$
	clr	a
	cjne	a,(_timerCount + 1),00319$
	sjmp	00320$
00319$:
	sjmp	00122$
00320$:
;	timer_transmitter.c:132: pushed=0;
;	assignBit
	clr	_pushed
;	timer_transmitter.c:133: Transmit_data(button);
	mov	dpl,_button
	lcall	_Transmit_data
00122$:
;	timer_transmitter.c:138: if(timerCount < (time_delay*10)) // count for LED-ON delay
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
	jc	00321$
	ljmp	00152$
00321$:
;	timer_transmitter.c:140: switch(state)
	mov	r6,_state
	mov	a,(_state + 1)
	mov	r7,a
	jnb	acc.7,00322$
	ljmp	00153$
00322$:
	clr	c
	mov	a,#0x09
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00323$
	ljmp	00153$
00323$:
	mov	a,r6
	mov	b,a
	add	a,#(00324$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00325$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00324$:
	.db	00123$
	.db	00124$
	.db	00125$
	.db	00126$
	.db	00127$
	.db	00128$
	.db	00129$
	.db	00130$
	.db	00131$
	.db	00132$
00325$:
	.db	00123$>>8
	.db	00124$>>8
	.db	00125$>>8
	.db	00126$>>8
	.db	00127$>>8
	.db	00128$>>8
	.db	00129$>>8
	.db	00130$>>8
	.db	00131$>>8
	.db	00132$>>8
;	timer_transmitter.c:142: case 0:	P2 =0xA0;break;	
00123$:
	mov	_P2,#0xa0
	ljmp	00153$
;	timer_transmitter.c:143: case 1:	P2 =0x80;break;
00124$:
	mov	_P2,#0x80
	ljmp	00153$
;	timer_transmitter.c:144: case 2:	P2 =0x80;break;
00125$:
	mov	_P2,#0x80
	ljmp	00153$
;	timer_transmitter.c:145: case 3:	P2 =0xc0;break;
00126$:
	mov	_P2,#0xc0
	ljmp	00153$
;	timer_transmitter.c:146: case 4:	P2 =0x60;break;
00127$:
	mov	_P2,#0x60
	ljmp	00153$
;	timer_transmitter.c:147: case 5:	P2 =0x20;break;
00128$:
	mov	_P2,#0x20
	ljmp	00153$
;	timer_transmitter.c:148: case 6:	P2 =0x20;break;
00129$:
	mov	_P2,#0x20
	ljmp	00153$
;	timer_transmitter.c:149: case 7:	P2 =0x40;break;
00130$:
	mov	_P2,#0x40
	ljmp	00153$
;	timer_transmitter.c:150: case 8:	P2 =0x80;break;
00131$:
	mov	_P2,#0x80
	ljmp	00153$
;	timer_transmitter.c:151: case 9:	P2 =0x20;break;
00132$:
	mov	_P2,#0x20
	ljmp	00153$
;	timer_transmitter.c:152: default:break;}
00152$:
;	timer_transmitter.c:156: else if((timerCount > time_delay) &&(timerCount<time_delay*20)) // count for LED-ON delay
	clr	c
	mov	a,_time_delay
	subb	a,_timerCount
	mov	a,(_time_delay + 1)
	xrl	a,#0x80
	mov	b,(_timerCount + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00326$
	ljmp	00148$
00326$:
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
	jc	00327$
	ljmp	00148$
00327$:
;	timer_transmitter.c:158: switch(state)
	mov	r6,_state
	mov	a,(_state + 1)
	mov	r7,a
	jnb	acc.7,00328$
	ljmp	00153$
00328$:
	clr	c
	mov	a,#0x09
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00329$
	ljmp	00153$
00329$:
	mov	a,r6
	mov	b,a
	add	a,#(00330$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00331$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00330$:
	.db	00142$
	.db	00143$
	.db	00142$
	.db	00142$
	.db	00142$
	.db	00142$
	.db	00144$
	.db	00142$
	.db	00142$
	.db	00142$
00331$:
	.db	00142$>>8
	.db	00143$>>8
	.db	00142$>>8
	.db	00142$>>8
	.db	00142$>>8
	.db	00142$>>8
	.db	00144$>>8
	.db	00142$>>8
	.db	00142$>>8
	.db	00142$>>8
;	timer_transmitter.c:167: case 9:P2 =0x00;break;
00142$:
	mov	_P2,#0x00
;	timer_transmitter.c:168: case 1:P2 =0x80;break;
	sjmp	00153$
00143$:
	mov	_P2,#0x80
;	timer_transmitter.c:169: case 6:P2 =0x20;break;
	sjmp	00153$
00144$:
	mov	_P2,#0x20
;	timer_transmitter.c:170: default:break;}
	sjmp	00153$
00148$:
;	timer_transmitter.c:174: timerCount = 0;
	clr	a
	mov	_timerCount,a
	mov	(_timerCount + 1),a
00153$:
;	timer_transmitter.c:178: if((state_l)&&(!pushed))
	jb	_state_l,00332$
	ljmp	00167$
00332$:
	jnb	_pushed,00333$
	ljmp	00167$
00333$:
;	timer_transmitter.c:184: if(a_g)
	jnb	_a_g,00164$
;	timer_transmitter.c:186: if(((state_was==1)||(state_was==8))&&(!pushed))
	mov	a,#0x01
	cjne	a,_state_was,00335$
	dec	a
	cjne	a,(_state_was + 1),00335$
	sjmp	00162$
00335$:
	mov	a,#0x08
	cjne	a,_state_was,00336$
	clr	a
	cjne	a,(_state_was + 1),00336$
	sjmp	00337$
00336$:
	sjmp	00159$
00337$:
00162$:
	jb	_pushed,00159$
;	timer_transmitter.c:187: {state = 8;		Transmit_data('n');		time_delay=10;
	mov	_state,#0x08
	mov	(_state + 1),#0x00
	mov	dpl,#0x6e
	lcall	_Transmit_data
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	timer_transmitter.c:188: button='n';
	mov	_button,#0x6e
	sjmp	00167$
00159$:
;	timer_transmitter.c:190: else if(((state_was==6)||(state_was==9))&&(!pushed))
	mov	a,#0x06
	cjne	a,_state_was,00339$
	clr	a
	cjne	a,(_state_was + 1),00339$
	sjmp	00157$
00339$:
	mov	a,#0x09
	cjne	a,_state_was,00340$
	clr	a
	cjne	a,(_state_was + 1),00340$
	sjmp	00341$
00340$:
	sjmp	00167$
00341$:
00157$:
	jb	_pushed,00167$
;	timer_transmitter.c:191: {state = 9;		Transmit_data('u');		time_delay=10;
	mov	_state,#0x09
	mov	(_state + 1),#0x00
	mov	dpl,#0x75
	lcall	_Transmit_data
	mov	_time_delay,#0x0a
	mov	(_time_delay + 1),#0x00
;	timer_transmitter.c:192: button='u';
	mov	_button,#0x75
	sjmp	00167$
00164$:
;	timer_transmitter.c:197: a_g=0;
;	assignBit
	clr	_a_g
;	timer_transmitter.c:198: state=0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
;	timer_transmitter.c:199: button = 'l';
	mov	_button,#0x6c
;	timer_transmitter.c:200: time_delay=15;
	mov	_time_delay,#0x0f
;	1-genFromRTrack replaced	mov	(_time_delay + 1),#0x00
	mov	(_time_delay + 1),a
00167$:
;	timer_transmitter.c:207: if(timerCount%13==0)
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_timerCount
	mov	dph,(_timerCount + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00179$
;	timer_transmitter.c:210: TI=0;
;	assignBit
	clr	_TI
;	timer_transmitter.c:211: data_r = SBUF;		/* Load char in SBUF register */
	mov	_data_r,_SBUF
;	timer_transmitter.c:212: RI = 0;			/* Clear TI flag */
;	assignBit
	clr	_RI
;	timer_transmitter.c:213: if(data_r=='x')
	mov	a,#0x78
	cjne	a,_data_r,00176$
;	timer_transmitter.c:214: Transmit_data('y');
	mov	dpl,#0x79
	lcall	_Transmit_data
	sjmp	00179$
00176$:
;	timer_transmitter.c:215: else if((data_r=='m')||(data_r=='h'))
	mov	a,#0x6d
	cjne	a,_data_r,00346$
	sjmp	00171$
00346$:
	mov	a,#0x68
	cjne	a,_data_r,00172$
00171$:
;	timer_transmitter.c:216: received = 0;
	mov	_received,#0x00
	sjmp	00179$
00172$:
;	timer_transmitter.c:217: else if(data_r=='l')
	mov	a,#0x6c
	cjne	a,_data_r,00179$
;	timer_transmitter.c:218: received = 1;
	mov	_received,#0x01
00179$:
;	timer_transmitter.c:221: state_was=state;
	mov	_state_was,_state
	mov	(_state_was + 1),(_state + 1)
;	timer_transmitter.c:222: }
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
;	timer_transmitter.c:224: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	timer_transmitter.c:226: startup();
	lcall	_startup
;	timer_transmitter.c:228: UART_Init();
	lcall	_UART_Init
;	timer_transmitter.c:229: handshake();
	lcall	_handshake
;	timer_transmitter.c:231: InitTimer1();
	lcall	_InitTimer1
;	timer_transmitter.c:233: EA  = 1;         // Global interrupt enable
;	assignBit
	setb	_EA
;	timer_transmitter.c:235: while(1)
00102$:
;	timer_transmitter.c:239: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	timer_transmitter.c:242: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	timer_transmitter.c:245: for(i=0;i<0x33;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	timer_transmitter.c:246: for(j=0;j<0xff;j++);
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
;	timer_transmitter.c:245: for(i=0;i<0x33;i++)
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
;	timer_transmitter.c:247: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	timer_transmitter.c:250: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	timer_transmitter.c:252: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	mov	_TMOD,#0x20
;	timer_transmitter.c:253: TH1 = 0xFD;		/* Load value for 9600 baud rate */
	mov	_TH1,#0xfd
;	timer_transmitter.c:254: SCON = 0x50;		/* Mode 1, reception enable */
	mov	_SCON,#0x50
;	timer_transmitter.c:255: TR1 = 1;		/* Start timer 1 */
;	assignBit
	setb	_TR1
;	timer_transmitter.c:256: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handshake'
;------------------------------------------------------------
;	timer_transmitter.c:259: void handshake()
;	-----------------------------------------
;	 function handshake
;	-----------------------------------------
_handshake:
;	timer_transmitter.c:261: start:while(!data_r)
00102$:
	mov	a,_data_r
	jnz	00104$
;	timer_transmitter.c:263: data_r=SBUF;
	mov	_data_r,_SBUF
;	timer_transmitter.c:264: RI=0;
;	assignBit
	clr	_RI
;	timer_transmitter.c:265: P2 = 0xA0; // Turn ON all LED's connected to Port1
	mov	_P2,#0xa0
;	timer_transmitter.c:266: delay();
	lcall	_delay
;	timer_transmitter.c:267: P2 = 0x00; // Turn OFF all LED's connected to Port1
	mov	_P2,#0x00
;	timer_transmitter.c:268: delay();
	lcall	_delay
	sjmp	00102$
00104$:
;	timer_transmitter.c:271: if(data_r=='x')
	mov	a,#0x78
	cjne	a,_data_r,00102$
;	timer_transmitter.c:273: Transmit_data('y');
	mov	dpl,#0x79
	lcall	_Transmit_data
;	timer_transmitter.c:274: data_r=0;
	mov	_data_r,#0x00
;	timer_transmitter.c:277: else goto start;
;	timer_transmitter.c:278: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Transmit_data'
;------------------------------------------------------------
;tx_data                   Allocated to registers 
;------------------------------------------------------------
;	timer_transmitter.c:281: void Transmit_data(char tx_data)
;	-----------------------------------------
;	 function Transmit_data
;	-----------------------------------------
_Transmit_data:
	mov	_SBUF,dpl
;	timer_transmitter.c:284: while (TI==0);		/* Wait until stop bit transmit */
00101$:
;	timer_transmitter.c:285: TI = 0;			/* Clear TI flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	timer_transmitter.c:286: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startup'
;------------------------------------------------------------
;	timer_transmitter.c:290: void startup(void)
;	-----------------------------------------
;	 function startup
;	-----------------------------------------
_startup:
;	timer_transmitter.c:292: P1 = 0xff;
	mov	_P1,#0xff
;	timer_transmitter.c:293: P2 = 0x00;
	mov	_P2,#0x00
;	timer_transmitter.c:294: P2 = 0x00;
	mov	_P2,#0x00
;	timer_transmitter.c:295: delay();delay();
	lcall	_delay
	lcall	_delay
;	timer_transmitter.c:296: P2 = 0xE0;
	mov	_P2,#0xe0
;	timer_transmitter.c:297: delay();
	lcall	_delay
;	timer_transmitter.c:298: P2 = 0x80;
	mov	_P2,#0x80
;	timer_transmitter.c:299: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	timer_transmitter.c:300: P2 = 0x40;
	mov	_P2,#0x40
;	timer_transmitter.c:301: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	timer_transmitter.c:302: P2 = 0x20;
	mov	_P2,#0x20
;	timer_transmitter.c:303: delay();delay();delay();delay();
	lcall	_delay
	lcall	_delay
	lcall	_delay
	lcall	_delay
;	timer_transmitter.c:304: P2 = 0x00;
	mov	_P2,#0x00
;	timer_transmitter.c:305: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer1'
;------------------------------------------------------------
;	timer_transmitter.c:309: void InitTimer1(void)
;	-----------------------------------------
;	 function InitTimer1
;	-----------------------------------------
_InitTimer1:
;	timer_transmitter.c:311: TMOD |= 0x01;    // Set timer0 in mode 1
	orl	_TMOD,#0x01
;	timer_transmitter.c:312: TH0 = 0xee;      // 5 msec reloading time
	mov	_TH0,#0xee
;	timer_transmitter.c:313: TL0 = 0x00;      // First time value
	mov	_TL0,#0x00
;	timer_transmitter.c:314: TR0 = 1;         // Start Timer 1
;	assignBit
	setb	_TR0
;	timer_transmitter.c:315: ET0 = 1;         // Enable Timer1 interrupts	
;	assignBit
	setb	_ET0
;	timer_transmitter.c:316: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
