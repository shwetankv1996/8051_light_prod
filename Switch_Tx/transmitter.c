#include "8052.h"
 
int state = 0;

void delay(void);
void UART_Init(void);
void Transmit_data(char);
void receive_data();
void startup(void);
void touch(void);
void check_x(void);

char data_r=0;
void main(void)
{

P1 = 0xff;
P2 = 0x00;
state = 0;
UART_Init();
startup();
start:while(!data_r)
{		data_r=SBUF;
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

void receive_data()
{
	while (RI==0);		/* Wait until stop bit transmit */
	data_r = SBUF;		/* Load char in SBUF register */
	RI = 0;			/* Clear TI flag */
}


void check_x()
{
	data_r=0;
	TI=0;
	data_r = SBUF;		/* Load char in SBUF register */
	RI = 0;			/* Clear TI flag */
	if(data_r=='x')
	Transmit_data('y');
}
void startup(void)
{
P2 = 0x00;
delay();delay();delay();
P2 = 0xE0;
delay();delay();delay();
P2 = 0x80;
delay();delay();delay();
P2 = 0x40;
delay();delay();delay();
P2 = 0x20;
delay();delay();delay();
}

void touch(void)
{
	switch(P1)
			{
			case 0x3f:
				Transmit_data('l');
					P2 = 0xA0; // Turn ON all LED's connected to Port1
					delay();
					delay();
					delay();
					P2 = 0x00; // Turn OFF all LED's connected to Port1
					delay();
					delay();
					delay();
					break;
			case 0x3e:				Transmit_data('a');
 P2 = 0x80; // Turn ON all LED's connected to Port1
							delay();
							delay();
				break;
			case 0x3d:				Transmit_data('b');
 P2 = 0x80; // Turn ON all LED's connected to Port1
				delay();
							delay();
							delay();
							P2 = 0x00; // Turn OFF all LED's connected to Port1
							delay();
							delay();
							delay();
				break;
			case 0x3b:				Transmit_data('c');
 P2 = 0xC0; // Turn ON all LED's connected to Port1
							delay();
							delay();
				delay();
							P2 = 0x00; // Turn OFF all LED's connected to Port1
							delay();
							delay();
							delay();

				break;
			case 0x37:				Transmit_data('e');
 P2 = 0x60; // Turn ON all LED's connected to Port1
							delay();
							delay();
				delay();
							P2 = 0x00; // Turn OFF all LED's connected to Port1
							delay();
							delay();
							delay();
				break;
			case 0x2f:				Transmit_data('f');
 P2 = 0x20; // Turn ON all LED's connected to Port1
							delay();
							delay();
				delay();
							P2 = 0x00; // Turn OFF all LED's connected to Port1
							delay();
							delay();
							delay();
				break;
			case 0x1f:				Transmit_data('g');
  P2 = 0x20; // Turn ON all LED's connected to Port1
							delay();
							delay();
				break;
		default:break;
			}
}
