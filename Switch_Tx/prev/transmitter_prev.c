#include "8052.h"
 
int state = 0;

void delay(void);
void UART_Init(void);
void Transmit_data(char);
void startup(void);
void touch(void);
void check_x(void);
void InitTimer1(void);

char data_r=0;
char received=1;
volatile int timerCount = 0;
volatile int time_delay = 20;

void isr_timer0(void) __interrupt 1   // It is called after every 50msec
{
    TH0  = 0X4B;         // ReLoad the timer value for 50ms
    TL0  = 0XFD;
    timerCount++;


   if(timerCount <= time_delay) // count for 1sec delay(50msx20 = 1000ms = 1sec)
    {
        switch(state)
	{
	case 0:		Transmit_data('l');P2 =0xA0;break;	
	case 1:		Transmit_data('a');P2 =0x80;break;
	case 2:		Transmit_data('b');P2 =0x80;break;
	case 3:		Transmit_data('c');P2 =0xc0;break;
	case 4:		Transmit_data('e');P2 =0x60;break;
	case 5:		Transmit_data('f');P2 =0x20;break;
	case 6:		Transmit_data('g');P2 =0x20;break;
	case 7:		Transmit_data('d');P2 =0x40;break;
	default:break;}
    }

   else if((timerCount > time_delay) &&(timerCount<time_delay*2))
    {
        switch(state)
	{
	case 0:	
	case 1:
	case 3:
	case 4:
	case 6:
	case 7:P2 =0x00;break;
	case 2:P2 =0x80;break;
	case 5:P2 =0x20;break;
	default:break;}
    }

   else
	timerCount = 0;
}

void main(void)
{
	P1 = 0xff;
	P2 = 0x00;
	state = 0;
	startup();
	P2 = 0x00;
	UART_Init();
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

	InitTimer1();
	ET0 = 1;         // Enable Timer1 interrupts	
	EA  = 1;         // Global interrupt enable

	while(1)
		{
		touch();
		check_x();
		}
}
 

void delay(void)
{
    int i,j;
    for(i=0;i<0x33;i++)
         for(j=0;j<0xff;j++);
}

void UART_Init()
{
	TMOD = 0x20;		/* Timer 1, 8-bit auto reload mode */
	TH1 = 0xFD;		/* Load value for 9600 baud rate */
	SCON = 0x50;		/* Mode 1, reception enable */
	TR1 = 1;		/* Start timer 1 */
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
void startup(void)
{
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
}

void touch(void)
{
	switch(P1)
	{
	case 0x3f:
		Transmit_data('l');
		time_delay=10;
		state = 0;
		break;

	case 0x3e:
		Transmit_data('a');
		time_delay=120;
		state = 1;
		break;
		
	case 0x3d:
		Transmit_data('b');
		state = 2;
		time_delay=5;
		break;

	case 0x3b:
		if(received)
		{Transmit_data('d');
		state = 7;
		}
		else
		{Transmit_data('c');
		state = 3;
		}
		time_delay=10;
		break;

	case 0x37:
		if(received)
		{Transmit_data('d');
		state = 7;
		}
		else
		{Transmit_data('e');
		state = 4;
		}
		time_delay=10;
		break;

	case 0x2f:
		Transmit_data('f');
		state = 5;
		time_delay=5;
		break;

	case 0x1f:
		state = 6;
		time_delay=120;
		break;

	default:break;
	}
}



void InitTimer1(void)
{
	TMOD |= 0x01;    // Set timer0 in mode 1
	TH0 = 0x4B;      // 50 msec reloading time
	TL0 = 0xFD;      // First time value
	TR0 = 1;         // Start Timer 1
	ET0 = 1;         // Enable Timer1 interrupts	
}

