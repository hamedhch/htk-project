

#define EMI(x) _emi = x;
#define TB1_ONF(x) _tb1on = x; // On : 1 , Off : 0
#define TB0_ONF(x) _tb0on = x; // On : 1 , Off : 0

//#define TB1_FRQ() _clksel11=0; _clksel10=0; //FSYS/1
#define TB1_FRQ() _clksel11=0; _clksel10=1; //FSYS/4
//#define TB1_FRQ() _clksel11=1; _clksel10=0; //FSUB/1
//#define TB1_FRQ() _clksel11=1; _clksel10=1; //FSUB/1

//#define TB0_FRQ() _clksel01=0; _clksel00=0; //FSYS/1
#define TB0_FRQ() _clksel01=0; _clksel00=1; //FSYS/4
//#define TB0_FRQ() _clksel01=1; _clksel00=0; //FSUB/1
//#define TB0_FRQ() _clksel01=1; _clksel00=1; //FSUB/1

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
#define TB0() _tb02 = 0; _tb01 = 1; _tb00 = 0 //Div2_10
//#define TB0() _tb02 = 0; _tb01 = 1; _tb00 = 1 //Div2_11
//#define TB0() _tb02 = 1; _tb01 = 0; _tb00 = 0 //Div2_12
//#define TB0() _tb02 = 1; _tb01 = 0; _tb00 = 1 //Div2_13
//#define TB0() _tb02 = 1; _tb01 = 1; _tb00 = 0 //Div2_14
///#define TB0() _tb02 = 1; _tb01 = 1; _tb00 = 1   //Div2_15

#define TB0_ENB(x) _tb0e = x;//EN : 1 , DI : 0
#define	TB0_FLG(x) _tb0f = x;

#define TB1_ENB(x) _tb1e = x;//EN : 1 , DI : 0
#define	TB1_FLG(x) _tb1f = x;


volatile  int newnaumber=0, oldnaumber=0, n=0,nj=0,UP=1 , DN=0,R=0, row=0;
volatile int  rizesh=8 , conter8=0 ,uart_s=0;
volatile unsigned long ni=0;

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
	
	/*n++;
	if(n>1000)n=0,testnaumber++;
	
	if (testnaumber>9)testnaumber=0;*/
	
	//displayNumber(testnaumber);
	
	if(uart_s)n++;
	if(n>4000){
		n=0;
		uart_s=0;
		UP?newnaumber++:newnaumber--;
	}
	
	if (newnaumber>9)DN=UP,UP=!UP;
	
	
	ni++;
	

	nj++;
	if(nj>80)nj=0,conter8++;
	if (conter8>=8)conter8=0;
	
	
	if(ni>120  && oldnaumber!=newnaumber){
		ni=0;
		R++;
	}
	
				
				
	GCC_CLRWDT();
}










void __attribute((interrupt(0x28))) TB1_ISR(void)
{
	GCC_CLRWDT();
	
	/*n++;
	if(n>9000){n=0,testnaumber++;}
	
	if (testnaumber>9)testnaumber=0;*/
	
	
	row++;
	if(row>=8)row=0;
	
    //for ( row = 0; row < 8; row++) {
        
        cleardisplay();
       
        switch(row) {
            case 0: ANODE_1 = 1;break;
            case 1: ANODE_2 = 1;break;
            case 2: ANODE_3 = 1;break;
            case 3: ANODE_4 = 1;break;
            case 4: ANODE_5 = 1;break;
            case 5: ANODE_6 = 1;break;
            case 6: ANODE_7 = 1;break;
            case 7: ANODE_8 = 1;break;
        }
		
		unsigned char row_data=0,jahat=0;
		
		
		
		
		
		
		
		
		
		if(UP)jahat=jahatUP[conter8][row];
		if(DN)jahat=jahatDN[conter8][row];
		
	
		
		if(oldnaumber!=newnaumber){
			if(UP){
				if( R<8 ){
					row_data = numbers[oldnaumber][row]<<R;
				}
				
				if(R>=8 && R<16){
					row_data = numbers[newnaumber][row]>>(16-R);
				}
				if(R>=16)R=0,oldnaumber=newnaumber;
			}
			if(DN){
				if( R<8 ){
					row_data = numbers[oldnaumber][row]>>R;
				}
				
				if(R>=8 && R<16){
					row_data = numbers[newnaumber][row]<<(16-R);
				}
				if(R>=16)R=0,oldnaumber=newnaumber;
				
			}
			
		}else row_data = numbers[oldnaumber][row];
	
		
		
		
		
        CATHODE_1 = (row_data & 0x01) ? 1 : 0 ;
        CATHODE_2 = (row_data & 0x02) ? 1 : 0 ;
        CATHODE_3 = (row_data & 0x04) ? 1 : 0 ;
        CATHODE_4 = (row_data & 0x08) ? 1 : 0 ;
        CATHODE_5 = (row_data & 0x10) ? 1 : 0 ;
        CATHODE_6 = (row_data & 0x20) ? 1 : 0 ;
        CATHODE_7 = (row_data & 0x40) ? 1 : 0 ;
        CATHODE_8 = (row_data & 0x80) ? 1 : 0 ;

        if(UP || DN){
        	CATHODE_9  = (jahat & 0x01) ? 1 : 0 ;
	        CATHODE_10 = (jahat & 0x02) ? 1 : 0 ;
	        CATHODE_11 = (jahat & 0x04) ? 1 : 0 ;
	        CATHODE_12 = (jahat & 0x08) ? 1 : 0 ;
	        CATHODE_13 = (jahat & 0x10) ? 1 : 0 ;
	        CATHODE_14 = (jahat & 0x20) ? 1 : 0 ;
	        CATHODE_15 = (jahat & 0x40) ? 1 : 0 ;
	        CATHODE_16 = (jahat & 0x80) ? 1 : 0 ;
        }
       	
    //}

	
	
	
	
	
	
	
	//displayNumber(5);
	
	//DispTimer(1,1);
	
	/*if(Litgh){
		
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

	
	
	
	switch(State)
	{
		case  3: DispTimer(1,1); break;
		case  6: DispTemp(); break;
		case 21: DispTimer(Belinker,1); break;
		case 22: DispTimer(1,Belinker); break;
		case 34: State=3;Belinking=0;SetAlarm=0;break;
	}	
	
	
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
	*/
}
