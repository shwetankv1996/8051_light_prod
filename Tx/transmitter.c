#include "8052.h"

void delay(void);
void UART_Init(void);
void Transmit_data(char);
void startup(void);
void touch(void);
void check_x(void);
void InitTimer1(void);
void handshake(void);
void default_and_a_g(void);

volatile int state = 0;
volatile int state_was = 0;
volatile int timerCount = 0;
volatile int time_delay = 15;
volatile __bit a_g=0;
volatile __bit pushed=0;
volatile char button='l';

char data_r=0;
char received=1;

void isr_timer0(void) __interrupt 1   // It is called after every 5msec
{
    TH0  = 0Xee;         // ReLoad the timer value for 5ms
    TL0  = 0X00;
    timerCount++;

	if(!pushed)
	{
		switch(P1)
		{
		case 0x3f:
			pushed = 0;
			break;

		case 0x3e:
			pushed = 1;
			Transmit_data('a');
			P2 =0x80;
			state = 1;
			button = 'a';
			a_g=1;
			break;
			
		case 0x3d:
			pushed = 1;
			Transmit_data('b');
			time_delay=3;
			state = 2;
			button = 'b';
			a_g=0;
			break;

		case 0x3b:
			if(received)
			{		pushed = 1;
				Transmit_data('d');
			state = 7;
			button = 'd';
			}
			else
			{		pushed = 1;
				Transmit_data('c');
			state = 3;
			button = 'c';
			}
			time_delay=3;
			a_g=0;
			break;

		case 0x37:
			if(received)
			{		pushed = 1;
				Transmit_data('d');
			state = 7;
			button = 'd';
			}
			else
			{
			pushed = 1;
			Transmit_data('e');
			state = 4;
			button = 'e';
			}
			time_delay=3;
			a_g=0;
			break;

		case 0x2f:
			pushed = 1;
			Transmit_data('f');
			state = 5;
			button = 'f';
			time_delay=3;
			a_g=0;
			break;

		case 0x1f:
			pushed = 1;
			Transmit_data('g');
			P2 =0x20;
			state = 6;
			button = 'g';
			a_g=1;
			break;

		case 0x33:
			pushed = 1;
			Transmit_data('d');
			state = 7;
			button = 'd';
			time_delay=3;
			a_g=0;
			break;

		default:pushed = 0;
				break;
		}
	}

/************Send Button Data*****************************/

if(timerCount == 40)
	{
	pushed=0;
	Transmit_data(button);
	}

/************blink LEDs***********************************/
	if(timerCount < (time_delay*10)) // count for LED-ON delay
		{
		    switch(state)
		{
	//	case 0:	P2 =0xA0;break;	
		case 1:	P2 =0x80;break;
		case 2:	P2 =0x80;break;
		case 3:	P2 =0xc0;break;
		case 4:	P2 =0x60;break;
		case 5:	P2 =0x20;break;
		case 6:	P2 =0x20;break;
		case 7:	P2 =0x40;break;
		case 8:	P2 =0x80;break;
		case 9:	P2 =0x20;break;
		default:break;}	
		}


	   else if((timerCount > time_delay) &&(timerCount<time_delay*20)) // count for LED-ON delay
		{
		    switch(state)
		{
		//case 0:	
		case 2:
		case 3:
		case 4:
		case 5:
		case 7:
		case 8:
		case 9:P2 =0x00;break;
		case 1:P2 =0x80;break;
		case 6:P2 =0x20;break;
		default:break;}
		}

	   else
		timerCount = 0;
state_was=state;
}

void main(void)
{
	startup();

	UART_Init();
	handshake();

	InitTimer1();
	
	EA  = 1;         // Global interrupt enable
	
	while(1)
		{
			if(!pushed)
			{
				delay();
				if(!pushed)
				{
				default_and_a_g();
				}
			}
			else if(pushed)
			{
			delay();
			check_x();
			}
			else {}
		}
}
 

void delay(void)
{
    int i,j;
    for(i=0;i<0x33;i++)
         for(j=0;j<0xff;j++);
}



void startup(void)
{
P1 = 0xff;
P2 = 0x00;
delay();delay();
P2 = 0xE0;
delay();
P2 = 0x80;
delay();delay();delay();delay();
P2 = 0x40;
delay();delay();delay();delay();
P2 = 0x20;
delay();delay();delay();delay();
P2 = 0x00;
}


void UART_Init()
{
	TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	TH1 = 0xFD;		/* Load value for 9600 baud rate */
	SCON = 0x50;		/* Mode 1, reception enable */
	TR1 = 1;		/* Start timer 1 */
}


void handshake()
{
	start:while(!data_r)
	{
		data_r=SBUF;
		RI=0;
		P2 = 0xA0; // Turn ON all LED's connected to Port1
		delay();
		P2 = 0x00; // Turn OFF all LED's connected to Port1
		delay();
	}

	if(data_r=='x')
		{
		Transmit_data('y');
		data_r=0;
		}

	else goto start;
}


void Transmit_data(char tx_data)
{
	SBUF = tx_data;		/* Load char in SBUF register */
	while (TI==0);		/* Wait until stop bit transmit */
	TI = 0;			/* Clear TI flag */
}



void check_x()
{
	data_r=0;
	TI=0;
	data_r = SBUF;		/* Load char in SBUF register */
	RI = 0;			/* Clear TI flag */
	if(data_r=='x')
	Transmit_data('y');
	else if((data_r=='m')||(data_r=='h'))
	received = 0;
	else if(data_r=='l')
	received = 1;
}



void InitTimer1(void)
{
	TMOD |= 0x01;    // Set timer0 in mode 1
	TH0 = 0xee;      // 5 msec reloading time
	TL0 = 0x00;      // First time value
	TR0 = 1;         // Start Timer 1
	ET0 = 1;         // Enable Timer1 interrupts	
}


void default_and_a_g()
{

		if(a_g)
		{
			if(((state_was==1)||(state_was==8))&&(!pushed))
				{state = 8;			time_delay=10;
				button='n';
				}
			else if(((state_was==6)||(state_was==9))&&(!pushed))
				{state = 9;			time_delay=10;
				button='u';
				}
		}
		else
		{
			a_g=0;
			state=0;
			button = 'l';	
			//Transmit_data('l');
			P2=0xA0;
			delay();
			delay();
			delay();
			P2=0x00;
			delay();
			delay();
			delay();
		}
}
