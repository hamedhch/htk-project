

#define EMI(x) _emi = x;
#define TB1_ONF(x) _tb1on = x; // On : 1 , Off : 0
#define TB0_ONF(x) _tb0on = x; // On : 1 , Off : 0

//#define TB1_FRQ() _clksel11=0; _clksel10=0; //FSYS/1
#define TB1_FRQ() _clksel11=0; _clksel10=1; //FSYS/4
//#define TB1_FRQ() _clksel11=1; _clksel10=0; //FSUB/1
//#define TB1_FRQ() _clksel11=1; _clksel10=1; //FSUB/1

//#define TB0_FRQ() _clksel01=0; _clksel00=0; //FSYS/1
//#define TB0_FRQ() _clksel01=0; _clksel00=1; //FSYS/4
//#define TB0_FRQ() _clksel01=1; _clksel00=0; //FSUB/1
#define TB0_FRQ() _clksel01=1; _clksel00=1; //FSUB/1

//#define TB1() _tb12 = 0; _tb11 = 0; _tb10 = 0 //Div2_8
//#define TB1() _tb12 = 0; _tb11 = 0; _tb10 = 1 //Div2_9
#define TB1() _tb12 = 0; _tb11 = 1; _tb10 = 0; //Div2_10
//#define TB1() _tb12 = 0; _tb11 = 1; _tb10 = 1; //Div2_11
//#define TB1() _tb12 = 1; _tb11 = 0; _tb10 = 0 //Div2_12
//#define TB1() _tb12 = 1; _tb11 = 0; _tb10 = 1 //Div2_13
//#define TB1() _tb12 = 1; _tb11 = 1; _tb10 = 0 //Div2_14
//#define TB1() _tb12 = 1; _tb11 = 1; _tb10 = 1   //Div2_15

//#define TB0() _tb02 = 0; _tb01 = 0; _tb00 = 0 //Div2_8
//#define TB0() _tb02 = 0; _tb01 = 0; _tb00 = 1 //Div2_9
//#define TB0() _tb02 = 0; _tb01 = 1; _tb00 = 0 //Div2_10
//#define TB0() _tb02 = 0; _tb01 = 1; _tb00 = 1 //Div2_11
//#define TB0() _tb02 = 1; _tb01 = 0; _tb00 = 0 //Div2_12
//#define TB0() _tb02 = 1; _tb01 = 0; _tb00 = 1 //Div2_13
//#define TB0() _tb02 = 1; _tb01 = 1; _tb00 = 0 //Div2_14
#define TB0() _tb02 = 1; _tb01 = 1; _tb00 = 1   //Div2_15

#define TB0_ENB(x) _tb0e = x;//EN : 1 , DI : 0
#define	TB0_FLG(x) _tb0f = x;

#define TB1_ENB(x) _tb1e = x;//EN : 1 , DI : 0
#define	TB1_FLG(x) _tb1f = x;


void TB0_INIT()
{
 TB0_FRQ();
 TB0_ONF(1);
 TB0();
 TB0_ENB(1);
 TB0_FLG(0);
 EMI(1);
}

void TB1_INIT()
{
 TB1_FRQ();
 TB1_ONF(1);
 TB1();
 TB1_ENB(1);
 TB1_FLG(0);
 EMI(1);
}

void Date();

void __attribute((interrupt(0x24))) TB0_ISR(void)
{
//	Date();
//	Dot++;
//	if(State>=6 && State<=8)
//	{
//		CountOn=0;
//		CountTemp++;
//		if(CountTemp>=3)
//		{
//			CountTemp=0;
//			State++;
//			if(State>=9){State=3;}
//		}
//	}
//	if(State==3){CountOn++;if(CountOn>7){CountOn=0;State=0;}}
	GCC_CLRWDT();
}

void __attribute((interrupt(0x28))) TB1_ISR(void)
{
	GCC_CLRWDT();
	
	
	//DispTimer(1,1);
	
	if(Litgh){
		
		switch(State)
		{
			case  0: DispTimer(1,1); break;
			case  1: DispTimer(1,1); break;
			case  2: DispTimer(1,1); break;
			case  3: DispTimer(1,1); break;
			case  4: DispTimer(1,1); break;
			case  5: DispTimer(1,1); break;
			case  6: DispTimer(1,1); break;
			case  7: DispTimer(1,1); break;
			case  8: DispTimer(1,1); break;
			case  9: DispTimer(1,1); break;
			case  10: NTC_MAP();State++;DOT=1;break;
			case  11: DispTemp(); break;
			case  12: DispTemp(); break;
			case  13: DispTemp(); break;
			case  14: DispTemp();State=0; break;
			
			case 20: DispTimer(1,Belinker); break;
			case 21: DispTimer(1,Belinker); break;
			case 22: DispTimer(1,Belinker); break;
			case 23: DispTimer(1,Belinker); break;
			case 24: DispTimer(1,Belinker); break;
			case 25: DispTimer(Belinker,1); break;
			case 26: DispTimer(Belinker,1); break;
			case 27: DispTimer(Belinker,1); break;
			case 28: DispTimer(Belinker,1); break;
			case 29: DispTimer(Belinker,1); break;
			case 30: DispTimer(Belinker,1);State=0;Belinking=0;Bip=3; break;
			
		}
	
	}

	
	/*if(LED_W1==1)LED_W1=0;
	else LED_W1=1;
	*/
	
	/*switch(State)
	{
		case  3: DispTimer(1,1); break;
		case  6: DispTemp(); break;
		case 21: DispTimer(Belinker,1); break;
		case 22: DispTimer(1,Belinker); break;
		case 34: State=3;Belinking=0;SetAlarm=0;break;
	}	*/
	
	
	if(Belinking==1)
	{
		Belink++;
		Dot=0;
		if(Belink<1500){Belinker=1;}
		if(Belink>1500){Belinker=0;}
		if(Belink>3000){Belink=0;Belinker=1;}
	}
	else{Belinker=1;}
	if(Bip==1)
	{
		
		Biper++;
		if(Biper<150){BUZ=0;}
		if(Biper>150 ){Biper=0;Bip=0;BUZ=1;}
		
	}
	if(Bip==2)
	{
		
		Biper++;
		if(Biper<400)             {BUZ=0;}
		if(Biper>400 && Biper<500){BUZ=1;}
		if(Biper>500 )            {BUZ=0;}
		if(Biper>900 ){Biper=0;Bip=0;BUZ=1;}
	}
	if(Bip==3)
	{
		Biper++;
		if(Biper<800){BUZ=0;}
		if(Biper>800 ){Biper=0;Bip=0;BUZ=1;}
	}
}

void Date()
{
	
	//NTC_MAP();
	Math();
	
	Dot++;
	State++;
	
	Sec++;
	if(Sec>=59)
	{
		Sec=0;
		Min++;
		
		if(Min>=60)
		{
			Min=0;
			Hrs++;
			if(Hrs>=H124)
			{
				if(H124==12){Seg1++;Hrs=1;}
				if(H124==24 || Seg1==1)
				{
					Hrs=0;
					if(H124==12){Hrs=1;}
				}
				
			}
			
		}
		
	}
	
}