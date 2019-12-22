#include <8052.h>
 
int state = 0;

void delay(void);
void UART_Init(void);
void Transmit_data(char);
void startup(void);
void touch(void);

void main(void)
{
P1 = 0xff;
P2 = 0x00;
state = 0;
UART_Init();
startup();
/*do{
while(RI==0);
}while(SBUF!=0x58);
*/
//data=SBUF;
//RI=0;
Transmit_data('Y');

    while(1)
    {
	touch();
	switch(state)
		{
		case 0: P2 = 0xA0; // Turn ON all LED's connected to Port1
			delay();
        		P2 = 0x00; // Turn OFF all LED's connected to Port1
        		delay();
			Transmit_data('l');
			break;
		case 1: P2 = 0x80; // Turn ON all LED's connected to Port1
			Transmit_data('a');
			break;
		case 2: P2 = 0x80; // Turn ON all LED's connected to Port1
			delay();
        		P2 = 0x00; // Turn OFF all LED's connected to Port1
        		delay();
			Transmit_data('b');
			break;
		case 3: P2 = 0xC0; // Turn ON all LED's connected to Port1
			delay();
        		P2 = 0x00; // Turn OFF all LED's connected to Port1
        		delay();
			Transmit_data('c');
			break;
		case 4: P2 = 0x60; // Turn ON all LED's connected to Port1
			delay();
        		P2 = 0x00; // Turn OFF all LED's connected to Port1
        		delay();
			Transmit_data('e');
			break;
		case 5: P2 = 0x20; // Turn ON all LED's connected to Port1
			delay();
        		P2 = 0x00; // Turn OFF all LED's connected to Port1
        		delay();
			Transmit_data('f');
			break;
		case 6: P2 = 0x20; // Turn ON all LED's connected to Port1
			Transmit_data('g');
			break;
		default:break;
		}
    }
}
 

void delay(void)
{
    int i,j;
    for(i=0;i<0x77;i++)
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

void startup(void)
{
P2 = 0x00;
delay();
P2 = 0xE0;
delay();
P2 = 0x80;
delay();
P2 = 0x40;
delay();
P2 = 0x20;
delay();
}

void touch(void)
{
    if(P1 == 0x3e)state = 1;

    else if(P1 == 0x3d)state = 2;

    else if(P1 == 0x3b)state = 3;

    else if(P1 == 0x37)state = 4;

    else if(P1 == 0x2f)state = 5;

    else if(P1 == 0x1f)state = 6;

    else state = 0;
}
