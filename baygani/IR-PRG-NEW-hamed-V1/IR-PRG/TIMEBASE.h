

#define TB_EMI(x) _emi = x;
#define TB_ONF(x) _tbon = x; // On : 1 , Off : 0

#define TB_FRQ(x) _tbck = x; //Frq Clk --> Fsys/4 : 1 , Fsub : 0


#define TB1() _tb11 = 0; _tb10 = 0 //Div2_12
//#define TB1() _tb11 = 0; _tb10 = 1 //Div2_13
//#define TB1() _tb11 = 1; _tb10 = 0 //Div2_14
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

volatile unsigned char Frist,CountEdge, Zero_Time,Zero_Flag,Trig,Triger,Shift,Count,CountSW,Detect, Puls_Count ,Puls_off ,Lock ;


volatile unsigned int Backup,Counter,Counter_On,Counter_Off,Set ;
volatile unsigned long m;

#pragma vector ISR_TB0 @0x08
#pragma vector ISR_TB1 @0x0C

void TB0_INIT()
{
 TB_FRQ(1);
 TB_ONF(1);
 TB0();
 TB0_ENB(1);
 TB0_FLG(0);
 TB_EMI(1); 
}

void TB1_INIT()
{
 TB_FRQ(1);
 TB_ONF(1);
 TB1();
 TB1_ENB(1);
 TB1_FLG(0);
 TB_EMI(1); 
}

void TB_INIT()
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

void ISR_TB1(void)
{
	CountSW++;
	if(CountSW==1 )
 	{
 		if(IRREC==1){
			Puls_Count++;
			Puls_off++;
		}else{
			Puls_off=0;
			Puls_Count=0;
		}
		
 		STM_ENABLE();
 	}
 	
 	if(CountSW==2 )
 	{
 		if(IRREC==0){
			Puls_Count++;
			Puls_off=0;
		}else{
			Puls_off++;
			Puls_Count=0;
		}
		
 		STM_DISABLE();
 		CountSW=0;
 	}
 	
 	
 	if(Puls_Count>3 & Lock==0)
	{
		Lock=1;
		Set++;
		if(Set==1)
		{
			LED_1=1;
			LED_2=0;
		}
		else
		{
			LED_1=0;
			LED_2=1;
			Set=0;
		}

	}
	if(Puls_off>200 )
	{
		Lock=0;
	}
 	
 	
 	
 	/*if(CountSW==5 )
 	{
 		STM_ENABLE();
 	}
 	if(CountSW==7 )
 	{
 		STM_DISABLE();
 	}*/
 	/*if(CountSW>=5)
 	{
 		CountSW=0;
 	} 	*/
 	
 	
 	
 	
 	
 	
 	
 	
}

void ISR_TB0(void)
{
	
	/*m++;
	if(m>=500){
		
		TRIAC=0;
	}
	if(m>=1000){
		
		m=0;
		TRIAC=1;
	}*/
	
	Counter++;
	if(Set==1)
	{
		if(Counter>=Counter_On)
		{
			TRIAC=1;
		}
		Counter_Off=Counter_On;	
	}
	if(Set==0)
	{
		if(Counter>=Counter_Off)
		{
			TRIAC=1;
		}
		Counter_On=Backup;
	}
	
	
	/*if(Shift==0){TRIAC=1;}
	else if(Shift==1 | Shift==2)
	{
		Trig++;
		 if(Trig>250)
		 {
			Trig=0;
			if(Shift==1)
			{
				Triger++;
				if(Triger>60){Shift=0;}
			}
			if(Shift==2)
			{
				Triger--;
				if(Triger<15){Shift=3;}
			}
		 }
		if(Zero_Flag==0)
		{
			TRIAC=1;
		}
		else
		{
			if(Zero_Time>Triger)
			{
				TRIAC=0;
				Zero_Time=0;
				Zero_Flag=0;	
			}
			Zero_Time++;
		}
	}
	else if(Shift==3){TRIAC=0;}*/
	
}