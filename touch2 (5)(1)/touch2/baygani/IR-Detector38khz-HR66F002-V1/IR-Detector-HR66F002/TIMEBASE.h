

#define TB_EMI(x) _emi = x;
#define TB_ONF(x) _tbon = x; // On : 1 , Off : 0

#define TB_FRQ(x) _tbck = x; //Frq Clk --> Fsys/4 : 1 , Fsub : 0


//#define TB1() _tb11 = 0; _tb10 = 0 //Div2_12
//#define TB1() _tb11 = 0; _tb10 = 1 //Div2_13
#define TB1() _tb11 = 1; _tb10 = 0 //Div2_14
//#define TB1() _tb11 = 1; _tb10 = 1   //Div2_15


#define TB0() _tb02 = 0; _tb01 = 0; _tb00 = 0 //Div2_8
//#define TB0() _tb02 = 0; _tb01 = 0; _tb00 = 1 //Div2_9
//#define TB0() _tb02 = 0; _tb01 = 1; _tb00 = 0 //Div2_10
//#define TB0() _tb02 = 0; _tb01 = 1; _tb00 = 1 //Div2_11
//#define TB0() _tb02 = 1; _tb01 = 0; _tb00 = 0 //Div2_12
//#define TB0() _tb02 = 1; _tb01 = 0; _tb00 = 1 //Div2_13
//#define TB0() _tb02 = 1; _tb01 = 1; _tb00 = 0 //Div2_14
//#define TB0() _tb02 = 1; _tb01 = 1; _tb00 = 1   //Div2_15

#define TB0_ENB(x) _tb0e = x;//EN : 1 , DI : 0
#define	TB0_FLG(x) _tb0f = x;

#define TB1_ENB(x) _tb1e = x;//EN : 1 , DI : 0
#define	TB1_FLG(x) _tb1f = x;

volatile unsigned char Backup,Counter,Counter_On,Counter_Off,Set ;
volatile unsigned long m;

#pragma vector ISR_TB0 @0x08
#pragma vector ISR_TB1 @0x0C

void TB0Init()
{
 TB_FRQ(1);
 TB_ONF(1);
 TB0();
 TB0_ENB(1);
 TB0_FLG(0);
 TB_EMI(1); 
}

void TB1Init()
{
 TB_FRQ(1);
 TB_ONF(1);
 TB1();
 TB1_ENB(1);
 TB1_FLG(0);
 TB_EMI(1); 
}

void TBINIT()
{
 TB_FRQ(0);
 TB_ONF(1);
 TB1();
 TB1_ENB(1);
 TB1_FLG(0);
 TB1();
 TB1_ENB(1);
 TB1_FLG(0);
 TB_EMI(1); 
}

void ISR_TB0(void)
{
	//IRTRN=!IRTRN;
	//LED_1=!LED_1;
//	
//	Counter++;
//	if(Set==1)
//	{
//		if(Counter>=Counter_Off)
//		{
//			TRIAC=0;
//		}
//		Counter_On=Counter_Off;	
//	}
//	if(Set==0)
//	{
//		if(Counter>=Counter_On)
//		{
//			TRIAC=0;
//		}
//		Counter_Off=Backup;
//	}
}

void ISR_TB1(void)
{	
	//LED_1=!LED_1;
	
	/*m++;
	if(m>=8000){
		
		LED_2=0;
	}
	if(m>=16000){
		
		m=0;
		LED_2=1;
	}*/
	
//	Counter++;
//	if(Set==1)
//	{
//		if(Counter>=Counter_Off)
//		{
//			TRIAC=1;
//		}
//		Counter_On=Counter_Off;	
//	}
//	if(Set==0)
//	{
//		if(Counter==Counter_On)
//		{
//			TRIAC=1;
//		}
//		Counter_Off=Backup;
//	}
}