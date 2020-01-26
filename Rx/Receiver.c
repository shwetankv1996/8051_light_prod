#include<8052.h>

#define pwr_key	P1_7
#define ac_key	P1_3
#define dim_key	P1_4
#define auto_key P1_2
#define manual_up_key	P1_0
#define manual_down_key P1_1

#define pwr_out	P0_7
#define rst_out	P1_6
#define dim_out	P0_2
#define main_out1 P3_6
#define main_out2 P3_7

#define up_led_main	P0_1
#define center_led	P0_0
#define down_led_main	P2_6

#define pwr_led	P2_0
#define auto_led	P2_1
#define ac_led_up	P2_2
#define ac_led_down	P2_3
#define down_led	P2_4
#define up_led	P2_7


void delay(void);
void UART_Init(void);
void Transmit_data(char);
void startup(void);
void handshake(void);
void check_data(void);
void pattern(void);
void InitTimer0(void);
void check_switches(void);

__bit auto_flag;

char start=0;
volatile char data_r;
volatile int timerCount = 0;
volatile int serialCount = 0;
volatile int timerCount2 = 0;
volatile int time_delay = 15;
volatile int dim_val = 1;
volatile int dim_val2 = 50;
volatile int dim1_val = 1;
volatile int dim1_val2 = 50;
int state,off;
char ac_state;


void serial_isr() __interrupt 4 
{ 
    if(RI == 1)
    {
        data_r = SBUF; // Copy the received char
        RI = 0;              // Clear the Receive interrupt flag
        if(data_r!='y')serialCount=0;
        if(auto_flag)auto_led=1;
    }
    else if(TI == 1)
    {
        TI = 0;              // Clear the Transmit interrupt flag
    }
}

void isr_timer0(void) __interrupt 1   // It is called after every 5msec
{
    TH0  = 0Xee;         // ReLoad the timer value for 5ms
    TL0  = 0X00;
    timerCount++;

    if(state!=20)
    {
    	if(timerCount < (time_delay*30)) // count for LED-ON delay
	{
		switch(state)
		{
		case 0:up_led_main =1;center_led =0;down_led_main=1;									
				up_led=0;down_led=0;main_out1=1;main_out2=1;
		        if(auto_flag)auto_led=1;
				break;	
		case 1:up_led_main =1;center_led =0;down_led_main=0;
				if(auto_flag)
				{main_out1=0;up_led=1;}
				break;
		case 2:up_led_main =1;center_led =0;down_led_main=0;

				if(auto_flag)
				{
				up_led=1;}
				break;
		case 3:up_led_main =1;center_led =1;down_led_main=0;
						
				if(auto_flag)
				{
				up_led=1;}
				break;
		case 4:	up_led_main =0;center_led =1;down_led_main=1;
				if(auto_flag)
				{
				down_led=1;}
				break;
		case 5:up_led_main =0;center_led =0;down_led_main=1;
						
				if(auto_flag)
				{
				down_led=1;}
				break;
		case 6:	up_led_main =0;center_led =0;down_led_main=1;		
				if(auto_flag)
				{main_out2=0;down_led=1;}
				break;
		case 7:up_led_main =0;center_led =1;down_led_main=1;
				break;

		case 8:up_led_main =1;center_led =0;down_led_main=0;
				main_out1=1;main_out2=1;
				if(auto_flag)
					up_led=1;
				break;
				
		case 9:	up_led_main =0;center_led =0;down_led_main=1;
				main_out1=1;main_out2=1;
				if(auto_flag)
					down_led=1;
				break;
		default:break;
		}	
	}


   else if((timerCount > time_delay) &&(timerCount<time_delay*60)) // count for LED-ON delay
	{
	    switch(state)
		{
		case 0:	if(auto_flag)	{auto_led=0;main_out1=1;main_out2=1;}
		case 2:
		case 3:
		case 4:
		case 5:
		case 7:
		case 8:
		case 9:up_led_main =0;center_led =0;down_led_main=0;up_led=0;down_led=0;break;
		case 1:up_led_main =1;center_led =0;down_led_main=0;
					if(auto_flag)	{main_out1=0;up_led=1;down_led=0;}break;

		case 6:	up_led_main =0;center_led =0;down_led_main=1;
						up_led=0;if(auto_flag){main_out2=0;down_led=1;}break;

		default:break;
		}
	}

    else
	{timerCount = 0;}
    } //led states end
} //timer end


void timer1_ISR (void) __interrupt 5
{
TF2 = 0;            /* Clear the interrupt request */
timerCount2++;
serialCount++;
    rst_out=!rst_out;
    if(dim1_val)
	{dim1_val--;dim_out=1;}

	else if(dim1_val2){dim1_val2--;dim_out=0;}
	
	else {dim1_val = dim_val;dim1_val2 = dim_val2;}    

	if(auto_flag)
	{
	if(timerCount2<1000)
	{
	switch(state)
	{
	case 2:	if(timerCount2%4){main_out1=1;main_out2=1;}
			else {main_out1=0;main_out2=1;}
			break;
	
	case 3:	if(timerCount2%4){main_out1=1;main_out2=1;}
			else {main_out1=0;main_out2=1;}
			break;
			
	case 4:	if(timerCount2%4){main_out1=1;main_out2=1;}
			else {main_out1=1;main_out2=0;}
			break;
		
	case 5:	if(timerCount2%4){main_out1=1;main_out2=1;}
			else {main_out1=1;main_out2=0;}
			break;
	
	default:break;
	}}
	
		else if(timerCount2<2000)
	{
	switch(state)
	{
	case 2:	if(timerCount2%10){main_out1=1;main_out2=1;}
			else {main_out1=0;main_out2=1;}
			break;
	
	case 3:	if(timerCount2%10){main_out1=1;main_out2=1;}
			else {main_out1=0;main_out2=1;}
			break;
			
	case 4:	if(timerCount2%10){main_out1=1;main_out2=1;}
			else {main_out1=1;main_out2=0;}
			break;
		
	case 5:	if(timerCount2%10){main_out1=1;main_out2=1;}
			else {main_out1=1;main_out2=0;}
			break;
	
	default:break;
	}}

	else timerCount2=0;	
	}//end autoflag if condition
	
	
if(timerCount2>4000)timerCount2=0;

}//end timer2



void main()
{
state=20;
pwr_out=0;



T2CON = 0x80;                /* 10000000 */

/*--------------------------------------
Set the reload values to be 1000 clocks.
--------------------------------------*/
RCAP2L = 0x18;
RCAP2H = 0xFE;

TL2 = RCAP2L;
TH2 = RCAP2H;

/*--------------------------------------
--------------------------------------*/
ET2 = 1;                      /* Enable Timer 2 Interrupts */
TR2 = 1;                      /* Start Timer 2 Running */
 

InitTimer0();
EA=1;
startup();
start=1;
UART_Init();
handshake();
ES  = 1;      // Enable Serial INterrupt

	while(1)
	{
		check_switches();
		check_data();
	}	
} //main


void startup()
{
pwr_key=1;
dim_key=1;
ac_key=1;
auto_key=1;
manual_up_key=1;
manual_down_key=1;

main_out1=0;
main_out2=0;
pwr_out=0;
rst_out=0;
dim_out=0;
pwr_led=0;
auto_led=0;
ac_led_up=0;
ac_led_down=0;
up_led=0;
down_led=0;

main_out1=1;
main_out2=1;
pwr_led=1;
auto_led=0;
ac_led_up=1;ac_led_down=0;
auto_flag = 0;
dim_out=1;
up_led_main =0;center_led =0;down_led_main=1;
delay();delay();
up_led_main =0;center_led =1;down_led_main=0;
delay();delay();
up_led_main =1;center_led =0;down_led_main=0;
delay();delay();
up_led_main =0;center_led =0;down_led_main=0;
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
}


void handshake()
{
		while(data_r!='y')
		{
		state=20;
		delay();
		delay();
		Transmit_data('x');
		data_r=SBUF;
		RI = 0;
		}
		delay();
		Transmit_data('m');
}

void check_data()
{	
	switch(data_r)
	{
	case 'l':time_delay=30;state = 0;auto_led=0;break;
	
	case 'a':time_delay=20;state = 1;	
			 break;
			 
	case 'b':time_delay=10;state = 2;
			 break;
			 
	case 'c':time_delay=7 ;state = 3;
			 break;
			 
	case 'd':time_delay=7 ;state = 7;
			 break;
			 
	case 'e':time_delay=7 ;state = 4;
			 break;
			 
	case 'f':time_delay=10;state = 5;
			 break;
			 
	case 'g':time_delay=20;state = 6;
			 break;
			 
	case 'n':time_delay=15;state = 8;
			 break;
			 
	case 'u':time_delay=15;state = 9;
			 break;
			 
	case 'q' :ES=0;
			serialCount=0;
			state=20;
			timerCount=0;
			P0_1 =0;
			P0_0 =0;
			P2_6=0;
			up_led=0;
			down_led=0;

			data_r=0;
			while(data_r!='y')
			{
			state=20;
			delay();
			delay();
			Transmit_data('x');
			data_r=SBUF;
			RI = 0;
			}
			ES=1;break;
			
	default:break;
	}//switch end
	
	
	if(serialCount>4000)
			{serialCount=0;data_r='q';}
}
	
void InitTimer0(void)
{
	TMOD |= 0x01;    // Set timer0 in mode 1
	TH0 = 0xee;      // 5 msec reloading time
	TL0 = 0x00;      // First time value
	TR0 = 1;         // Start Timer 1
	ET0 = 1;         // Enable Timer1 interrupts	
}

void check_switches()
{
if(!ac_key)
	{
	delay();
	if(!ac_key)
	{
	ac_state++;		
	if(ac_state>=3)
		ac_state=0;
	switch(ac_state)
	{
		case 0:Transmit_data('l');ac_led_up=1;ac_led_down=1;break;
		case 1:Transmit_data('m');ac_led_up=1;ac_led_down=0;break;
		case 2:Transmit_data('h');ac_led_up=0;ac_led_down=1;break;
		default:break;
	}//switch end
	}//if end
	}

if(!dim_key)
	{
	delay();

	dim_val = dim_val + 10;
	dim_val2=50-dim_val;
	if(dim_val>50){dim_val=1;dim_val2=50;}
	}

if(!auto_key)
	{
	delay();
	auto_flag=!auto_flag;
	}
	
if(!pwr_key)
	{
	delay();
	delay();
	delay();
	if(!pwr_key)
	{
		pwr_led=0;up_led_main =0;center_led =0;down_led_main=0;ac_led_up=0;ac_led_down=0;auto_led=0;
		TR0 = 0;         // Stop Timer 1
		ET0 = 0;         // Enable Timer1 interrupts	
		delay();delay();
		pwr_out=1;
		shutdown:
		goto shutdown;
	}
	}//end power_key condition
	
	
if(!manual_up_key)
	{
	up_led=1;
	down_led=0;
	up_led_main=1;
	center_led=0;
	down_led_main=0;
	TR0=0;
	}
	
else if(!manual_down_key)
	{
	up_led=0;
	down_led=1;
	up_led_main=0;
	center_led=0;
	down_led_main=1;
	TR0=0;
	}
	
else 
	{
	TR0=1;
	}
	
}
