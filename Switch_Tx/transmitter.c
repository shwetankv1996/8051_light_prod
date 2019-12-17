#include <8052.h>
 
void delay(void);
void delay_s(void);
void UART_Init(void);
void Transmit_data(char);
 
void main(void)
{
UART_Init();

do{
while(RI==0);
}while(SBUF!=0x58);

data=SBUF;
RI=0;
delay();
Transmit_data('Y');
delay();
delay();
delay();
delay();
    while(1)
    {
	
Transmit_data('l');
Transmit_data('X');
         P2 = 0xAA; // Turn ON all LED's connected to Port1
         delay();
         P2 = 0x55; // Turn OFF all LED's connected to Port1
         delay();
    }
}
 
void delay_s(void)
{
int i;
for (i = 0; i<0xff; i++)
	delay();
}

void delay(void)
{
    int i,j;
    for(i=0;i<0xff;i++)
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

