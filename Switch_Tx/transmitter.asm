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
	.globl _delay
	.globl _UART_Init
	.globl _Transmit_data
	.globl _startup
	.globl _touch
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	transmitter.c:11: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	transmitter.c:13: P1 = 0xff;
	mov	_P1,#0xff
;	transmitter.c:14: P2 = 0x00;
;	transmitter.c:15: state = 0;
	clr	a
	mov	_P2,a
	mov	_state,a
	mov	(_state + 1),a
;	transmitter.c:16: UART_Init();
	lcall	_UART_Init
;	transmitter.c:17: startup();
	lcall	_startup
;	transmitter.c:24: Transmit_data('Y');
	mov	dpl,#0x59
	lcall	_Transmit_data
;	transmitter.c:26: while(1)
00111$:
;	transmitter.c:28: touch();
	lcall	_touch
;	transmitter.c:29: switch(state)
	mov	a,(_state + 1)
	jb	acc.7,00111$
	clr	c
	mov	a,#0x06
	subb	a,_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_state + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00111$
	mov	a,_state
	mov	b,#0x03
	mul	ab
	mov	dptr,#00129$
	jmp	@a+dptr
00129$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	ljmp	00106$
	ljmp	00107$
;	transmitter.c:31: case 0: P2 = 0xA0; // Turn ON all LED's connected to Port1
00101$:
	mov	_P2,#0xa0
;	transmitter.c:32: delay();
	lcall	_delay
;	transmitter.c:33: P2 = 0x00; // Turn OFF all LED's connected to Port1
	mov	_P2,#0x00
;	transmitter.c:34: delay();
	lcall	_delay
;	transmitter.c:35: Transmit_data('l');
	mov	dpl,#0x6c
	lcall	_Transmit_data
;	transmitter.c:36: break;
;	transmitter.c:37: case 1: P2 = 0x80; // Turn ON all LED's connected to Port1
	sjmp	00111$
00102$:
	mov	_P2,#0x80
;	transmitter.c:38: Transmit_data('a');
	mov	dpl,#0x61
	lcall	_Transmit_data
;	transmitter.c:39: break;
;	transmitter.c:40: case 2: P2 = 0x80; // Turn ON all LED's connected to Port1
	sjmp	00111$
00103$:
	mov	_P2,#0x80
;	transmitter.c:41: delay();
	lcall	_delay
;	transmitter.c:42: P2 = 0x00; // Turn OFF all LED's connected to Port1
	mov	_P2,#0x00
;	transmitter.c:43: delay();
	lcall	_delay
;	transmitter.c:44: Transmit_data('b');
	mov	dpl,#0x62
	lcall	_Transmit_data
;	transmitter.c:45: break;
;	transmitter.c:46: case 3: P2 = 0xC0; // Turn ON all LED's connected to Port1
	sjmp	00111$
00104$:
	mov	_P2,#0xc0
;	transmitter.c:47: delay();
	lcall	_delay
;	transmitter.c:48: P2 = 0x00; // Turn OFF all LED's connected to Port1
	mov	_P2,#0x00
;	transmitter.c:49: delay();
	lcall	_delay
;	transmitter.c:50: Transmit_data('c');
	mov	dpl,#0x63
	lcall	_Transmit_data
;	transmitter.c:51: break;
	ljmp	00111$
;	transmitter.c:52: case 4: P2 = 0x60; // Turn ON all LED's connected to Port1
00105$:
	mov	_P2,#0x60
;	transmitter.c:53: delay();
	lcall	_delay
;	transmitter.c:54: P2 = 0x00; // Turn OFF all LED's connected to Port1
	mov	_P2,#0x00
;	transmitter.c:55: delay();
	lcall	_delay
;	transmitter.c:56: Transmit_data('e');
	mov	dpl,#0x65
	lcall	_Transmit_data
;	transmitter.c:57: break;
	ljmp	00111$
;	transmitter.c:58: case 5: P2 = 0x20; // Turn ON all LED's connected to Port1
00106$:
	mov	_P2,#0x20
;	transmitter.c:59: delay();
	lcall	_delay
;	transmitter.c:60: P2 = 0x00; // Turn OFF all LED's connected to Port1
	mov	_P2,#0x00
;	transmitter.c:61: delay();
	lcall	_delay
;	transmitter.c:62: Transmit_data('f');
	mov	dpl,#0x66
	lcall	_Transmit_data
;	transmitter.c:63: break;
	ljmp	00111$
;	transmitter.c:64: case 6: P2 = 0x20; // Turn ON all LED's connected to Port1
00107$:
	mov	_P2,#0x20
;	transmitter.c:65: Transmit_data('g');
	mov	dpl,#0x67
	lcall	_Transmit_data
;	transmitter.c:66: break;
;	transmitter.c:68: }
;	transmitter.c:70: }
	ljmp	00111$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	transmitter.c:73: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	transmitter.c:76: for(i=0;i<0x77;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	transmitter.c:77: for(j=0;j<0xff;j++);
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
;	transmitter.c:76: for(i=0;i<0x77;i++)
	inc	r6
	cjne	r6,#0x00,00124$
	inc	r7
00124$:
	clr	c
	mov	a,r6
	subb	a,#0x77
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00106$
;	transmitter.c:78: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;	transmitter.c:80: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	transmitter.c:82: TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	mov	_TMOD,#0x20
;	transmitter.c:83: TH1 = 0xFD;		/* Load value for 9600 baud rate */
	mov	_TH1,#0xfd
;	transmitter.c:84: SCON = 0x50;		/* Mode 1, reception enable */
	mov	_SCON,#0x50
;	transmitter.c:85: TR1 = 1;		/* Start timer 1 */
;	assignBit
	setb	_TR1
;	transmitter.c:86: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Transmit_data'
;------------------------------------------------------------
;tx_data                   Allocated to registers 
;------------------------------------------------------------
;	transmitter.c:88: void Transmit_data(char tx_data)
;	-----------------------------------------
;	 function Transmit_data
;	-----------------------------------------
_Transmit_data:
	mov	_SBUF,dpl
;	transmitter.c:91: while (TI==0);		/* Wait until stop bit transmit */
00101$:
;	transmitter.c:92: TI = 0;			/* Clear TI flag */
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	transmitter.c:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startup'
;------------------------------------------------------------
;	transmitter.c:95: void startup(void)
;	-----------------------------------------
;	 function startup
;	-----------------------------------------
_startup:
;	transmitter.c:97: P2 = 0x00;
	mov	_P2,#0x00
;	transmitter.c:98: delay();
	lcall	_delay
;	transmitter.c:99: P2 = 0xE0;
	mov	_P2,#0xe0
;	transmitter.c:100: delay();
	lcall	_delay
;	transmitter.c:101: P2 = 0x80;
	mov	_P2,#0x80
;	transmitter.c:102: delay();
	lcall	_delay
;	transmitter.c:103: P2 = 0x40;
	mov	_P2,#0x40
;	transmitter.c:104: delay();
	lcall	_delay
;	transmitter.c:105: P2 = 0x20;
	mov	_P2,#0x20
;	transmitter.c:106: delay();
;	transmitter.c:107: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'touch'
;------------------------------------------------------------
;	transmitter.c:109: void touch(void)
;	-----------------------------------------
;	 function touch
;	-----------------------------------------
_touch:
;	transmitter.c:111: if(P1 == 0x3e)state = 1;
	mov	a,#0x3e
	cjne	a,_P1,00117$
	mov	_state,#0x01
	mov	(_state + 1),#0x00
	ret
00117$:
;	transmitter.c:113: else if(P1 == 0x3d)state = 2;
	mov	a,#0x3d
	cjne	a,_P1,00114$
	mov	_state,#0x02
	mov	(_state + 1),#0x00
	ret
00114$:
;	transmitter.c:115: else if(P1 == 0x3b)state = 3;
	mov	a,#0x3b
	cjne	a,_P1,00111$
	mov	_state,#0x03
	mov	(_state + 1),#0x00
	ret
00111$:
;	transmitter.c:117: else if(P1 == 0x37)state = 4;
	mov	a,#0x37
	cjne	a,_P1,00108$
	mov	_state,#0x04
	mov	(_state + 1),#0x00
	ret
00108$:
;	transmitter.c:119: else if(P1 == 0x2f)state = 5;
	mov	a,#0x2f
	cjne	a,_P1,00105$
	mov	_state,#0x05
	mov	(_state + 1),#0x00
	ret
00105$:
;	transmitter.c:121: else if(P1 == 0x1f)state = 6;
	mov	a,#0x1f
	cjne	a,_P1,00102$
	mov	_state,#0x06
	mov	(_state + 1),#0x00
	ret
00102$:
;	transmitter.c:123: else state = 0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
;	transmitter.c:124: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
