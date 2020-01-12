#include<8052.h>

#define pwr_key	P1_7
#define pwr_out	P0_7
#define rst_out	P1_6
#define pwr_led	P2_0

//#define auto	
//#define dimmer


void delay(void);
void UART_Init(void);
void Transmit_data(char);
void startup(void);
void handshake(void);
void check_data(void);
void pattern(void);
void InitTimer0(void);

char data_r;
volatile int timerCount = 0;
volatile int time_delay = 15;
int state;


void isr_timer0(void) __interrupt 1   // It is called after every 5msec
{
    TH0  = 0Xee;         // ReLoad the timer value for 5ms
    TL0  = 0X00;
    timerCount++;
    rst_out=!rst_out;
    
    if(state!=20)
    {
    	if(timerCount < (time_delay*30)) // count for LED-ON delay
	{
		switch(state)
		{
		case 0:	P0_1 =1;P0_0 =0;P2_6=1;break;	
		case 1:	P0_1 =1;P0_0 =0;P2_6=0;break;
		case 2:	P0_1 =1;P0_0 =0;P2_6=0;break;
		case 3:	P0_1 =1;P0_0 =1;P2_6=0;break;
		case 4:	P0_1 =0;P0_0 =1;P2_6=1;break;
		case 5:	P0_1 =0;P0_0 =0;P2_6=1;break;
		case 6:	P0_1 =0;P0_0 =0;P2_6=1;break;
		case 7:	P0_1 =0;P0_0 =1;P2_6=0;break;
		case 8:	P0_1 =1;P0_0 =0;P2_6=0;break;
		case 9:	P0_1 =0;P0_0 =0;P2_6=1;break;
		default:break;
		}	
	}


   else if((timerCount > time_delay) &&(timerCount<time_delay*60)) // count for LED-ON delay
	{
	    switch(state)
		{
		case 0:	
		case 2:
		case 3:
		case 4:
		case 5:
		case 7:
		case 8:
		case 9:P0_1 =0;P0_0 =0;P2_6=0;break;
		case 1:P0_1 =1;P0_0 =0;P2_6=0;break;
		case 6:P0_1 =0;P0_0 =0;P2_6=1;break;
		default:break;
		}
	}

   else
	timerCount = 0;
    }
    
}


void main()
{
P1=0x80;
P0=0x00;
P2=0x00;
state=20;
pwr_out=0;
InitTimer0();
EA=1;
pwr_led = 1;
startup();
UART_Init();
handshake();
	while(1)
	{
		check_data();
	}	
} //main


void startup()
{
pwr_key=1;
pwr_led=0;
pwr_out=0;
rst_out=0;
P0_1 =1;P0_0 =1;P2_6=1;
delay();delay();
P0_1 =0;P0_0 =0;P2_6=1;
delay();delay();
P0_1 =0;P0_0 =1;P2_6=0;
delay();delay();
P0_1 =1;P0_0 =0;P2_6=0;
delay();delay();
P0_1 =0;P0_0 =0;P2_6=0;
}

void delay()
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


void handshake()
{
		while(data_r!='y')
		{
		Transmit_data('x');
		state=20;
		data_r=SBUF;
		delay();
		delay();
		delay();
		delay();
		}
}

void check_data()
{
	data_r=0;
	data_r = SBUF;		/* Load char in SBUF register */
	RI = 0;			/* Clear TI flag */
	if(data_r=='l')
	state = 0;
	else if(data_r=='a')
	state = 1;
	else if(data_r=='b')
	state = 2;
	else if(data_r=='c')
	state = 3;
	else if(data_r=='d')
	state = 7;
	else if(data_r=='e')
	state = 4;
	else if(data_r=='f')
	state = 5;
	else if(data_r=='g')
	state = 6;
	else if(data_r=='u')
	state = 8;
	else if(data_r=='n')
	state = 9;
	else{}
}
	
void InitTimer0(void)
{
	TMOD |= 0x01;    // Set timer0 in mode 1
	TH0 = 0xee;      // 5 msec reloading time
	TL0 = 0x00;      // First time value
	TR0 = 1;         // Start Timer 1
	ET0 = 1;         // Enable Timer1 interrupts	
}
