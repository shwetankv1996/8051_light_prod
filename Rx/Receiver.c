#include<8052.h>

#define pwr_key	P1_7
#define ac_key	P1_3
#define dim_key	P1_4
#define auto_key P1_2

#define pwr_out	P0_7
#define rst_out	P1_6

#define pwr_led	P2_0
#define auto_led	P2_1
#define ac_led_up	P2_2
#define ac_led_down	P2_3
#define down_led	P2_4
#define up_led	P2_7

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
void check_switches(void);

__bit auto_flag;
__bit dim_flag;
char start=0;
char data_r;
volatile int timerCount = 0;
volatile int dimCount = 0;
volatile int time_delay = 15;
volatile int dim_val = 8;
volatile int dim_val2 = 0;
volatile int dim1_val = 8;
volatile int dim1_val2 = 0;
int state,off;
char ac_state;

void isr_timer0(void) __interrupt 1   // It is called after every 5msec
{
    TH0  = 0Xee;         // ReLoad the timer value for 5ms
    TL0  = 0X00;
    timerCount++;
    dimCount++;
    rst_out=!rst_out;
    
    if(state!=20)
    {
    	if(timerCount < (time_delay*30)) // count for LED-ON delay
	{
		switch(state)
		{
		case 0:	if(dim1_val)
				{dim1_val--;P0_1 =1;P0_0 =0;P2_6=1;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						
				if(auto_flag)auto_led=1;
				up_led=0;	down_led=0;
				break;	
		case 1:	if(dim1_val)
				{dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						
				if(auto_flag)
					up_led=1;
				break;
		case 2:		if(dim1_val)
				{dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						
				if(auto_flag)
					up_led=1;
				break;
		case 3:		if(dim1_val)
				{dim1_val--;P0_1 =1;P0_0 =1;P2_6=0;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						
				if(auto_flag)
					up_led=1;
				break;
		case 4:		if(dim1_val)
				{dim1_val--;P0_1 =0;P0_0 =1;P2_6=1;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						
				if(auto_flag)
					down_led=1;
				break;
		case 5:		if(dim1_val)
				{dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						
				if(auto_flag)
					down_led=1;
				break;
		case 6:		if(dim1_val)
				{dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						
				if(auto_flag)
					down_led=1;
				break;
		case 7:		if(dim1_val)
				{dim1_val--;P0_1 =0;P0_0 =1;P2_6=0;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						break;
		case 8:		if(dim1_val)
				{dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						
				if(auto_flag)
					up_led=1;
				break;
		case 9:		if(dim1_val)
				{dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						
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
		case 0:	if(auto_flag)	auto_led=0;
		case 2:
		case 3:
		case 4:
		case 5:
		case 7:
		case 8:
		case 9:P0_1 =0;P0_0 =0;P2_6=0;up_led=0;down_led=0;break;
		case 1:	if(dim1_val)
				{dim1_val--;P0_1 =1;P0_0 =0;P2_6=0;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						if(auto_flag)up_led=1;down_led=0;break;
		case 6:	if(dim1_val)
				{dim1_val--;P0_1 =0;P0_0 =0;P2_6=1;}

				else if(dim1_val2){dim1_val2--;P0_1 =0;P0_0 =0;P2_6=0;}
				
				else {dim1_val = dim_val;dim1_val2 = dim_val2;}
						up_led=0;if(auto_flag)down_led=1;break;
		default:break;
		}
	}

    else
	{timerCount = 0;}
    } //led states end
} //timer end


void main()
{
state=20;
pwr_out=0;
InitTimer0();
EA=1;
startup();
start=1;
UART_Init();
handshake();
	while(1)
	{
		//state=20;
		check_switches();
		check_data();
	}	
} //main


void startup()
{
P0=0x00;
P2=0x00;

pwr_key=1;
dim_key=1;
ac_key=1;
auto_key=1;

pwr_out=0;
rst_out=0;

pwr_led=0;
auto_led=0;
ac_led_up=0;
ac_led_down=0;
up_led=0;
down_led=0;

pwr_led=1;
auto_led=0;
ac_led_up=1;ac_led_down=0;
auto_flag = 0;

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
		state=20;
		delay();
		delay();
		delay();
		Transmit_data('x');
		delay();
		data_r=SBUF;
		}
		delay();
		Transmit_data('m');
}

void check_data()
{
	data_r=0;
	data_r = SBUF;		/* Load char in SBUF register */
	RI = 0;			/* Clear TI flag */
	if(data_r=='l')
	{
	time_delay=30;
	state = 0;
	auto_led=0;
	}
	else if(data_r=='a')
	{
	time_delay=20;
	state = 1;
	if(auto_flag)	auto_led=1;
	}
	else if(data_r=='b')
	{
	time_delay=10;
	state = 2;
	if(auto_flag)	auto_led=1;
	}
	else if(data_r=='c')
	{
	time_delay=7;
	state = 3;
	if(auto_flag)	auto_led=1;
	}
	else if(data_r=='d')
	{
	time_delay=7;
	state = 7;
	if(auto_flag)	auto_led=1;
	}
	else if(data_r=='e')
	{
	time_delay=7;
	state = 4;
	if(auto_flag)	auto_led=1;
	}
	else if(data_r=='f')
	{
	time_delay=10;
	state = 5;
	if(auto_flag)	auto_led=1;
	}
	else if(data_r=='g')
	{
	time_delay=20;
	state = 6;
	if(auto_flag)	auto_led=1;
	}
	else if(data_r=='u')
	{
	time_delay=15;
	state = 9;
	if(auto_flag)	auto_led=1;
	}
	else if(data_r=='n')
	{
	time_delay=15;
	state = 8;
	if(auto_flag)	auto_led=1;
	}
	else
	{
	/*if(timerCount>1500)
	{
		Transmit_data('x');
		state=20;
		timerCount=0;
		P0_1 =0;
		P0_0 =0;
		P2_6=0;
		up_led=0;
		down_led=0;
	}*/	}
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
	if(ac_state==3)
		ac_state=0;
	switch(ac_state)
	{
		case 0:Transmit_data('l');ac_led_up=1;ac_led_down=1;delay();break;
		case 1:Transmit_data('m');ac_led_up=1;ac_led_down=0;delay();break;
		case 2:Transmit_data('h');ac_led_up=0;ac_led_down=1;delay();break;
		default:break;
	}//switch end
	}//if end
	}
if(!dim_key)
	{
	delay();

	dim_val = dim_val + 2;
	dim_val2=8-dim_val;
	if(dim_val>8){dim_val=2;dim_val2=6;}

	}

if(!auto_key)
	{
	delay();
	auto_flag=!auto_flag;
	}
	
if(!pwr_key)
	{
	delay();
		pwr_led=0;P0_1 =0;P0_0 =0;P2_6=0;ac_led_up=0;ac_led_down=0;auto_led=0;
		TR0 = 0;         // Stop Timer 1
		ET0 = 0;         // Enable Timer1 interrupts	
		delay();delay();
		pwr_out=1;
		shutdown:
		goto shutdown;
	}
}
