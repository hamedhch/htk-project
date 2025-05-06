volatile unsigned long Count_C1=0,Count_C1_Backup=0; //Calibr
volatile unsigned int Count_S1=0; //Sense
volatile unsigned int Count_T1=0; //Time
volatile unsigned char i=0, counter=0,CalibrCount1=0,CalibrSample1=0;

volatile unsigned long Count_C2=0,Count_C2_Backup=0; //Calibr
volatile unsigned int Count_S2=0; //Sense
volatile unsigned int Count_T2=0; //Time
volatile unsigned char CalibrCount2=0,CalibrSample2=0;

volatile int nsicl=80;

volatile int R=80 , G=80, B=0 ,RGB=0, rgbchange=0 , rgbauto=0 , rgb1=0  , rgb2=0 , rgbpals=0 , counterrgb=15000;

volatile int ncount=0;
volatile int counter1=0, counter12=0;
volatile int counter2=0, counter22=0;
volatile int counter3=0, counter32=0;
volatile bit q=0;


#define FINGER_FOCUS_ON	60

//I/O Pin or Touch Key 1..4 Function Select
#define IO_Touch() _m0k4io = 0; _m0k3io = 0;_m0k2io = 1;_m0k1io = 1;

//Touch key 8-bit time slot counter preload register
#define TimeTouch()	_tktmr = 0

//touch key module 16-bit counter clock source selection	
#define FcTouch()	_tk16s1 =0; _tk16s0 =0 //Fsys /1
//#define FcTouch()	_tk16s1 =0; _tk16s0 =1 //Fsys /2
//#define FcTouch()	_tk16s1 =1; _tk16s0 =0 //Fsys /4
//#define FcTouch()	_tk16s1 =1; _tk16s0 =1 //Fsys /8

//touch key OSC frequency selection
//#define FsTouch()	_tkfs1 = 0; _tkfs0 = 0 //500KHz
//#define FsTouch()	_tkfs1 = 0; _tkfs0 = 1 //1MHz
//#define FsTouch()	_tkfs1 = 1; _tkfs0 = 0 //1.5MHz
#define FsTouch()	_tkfs1 = 1; _tkfs0 = 1 //2MHz

//Reference Oscillator internal capacitor selection TKM0RO[9:0] × 50pF / 1024
#define RefTouch()	_tkm0rol = 200; _tkm0roh = 0


//Multiplexer Key Select
#define KeyTouch1()	_m0mxs1 = 0;	_m0mxs0 = 0;	//key1
#define KeyTouch2()	_m0mxs1 = 0;	_m0mxs0 = 1;	//key2
#define KeyTouch3()	_m0mxs1 = 1;	_m0mxs0 = 0;	//key3
#define KeyTouch4()	_m0mxs1 = 1;	_m0mxs0 = 1;	//key4

//Multi-frequency function control
#define MFT_EN() _m0dfen = 1; //enabled
#define MFT_DI() _m0dfen = 0; //disabled

//Filter function control
#define FFT_EN() _m0filen = 1; //enabled
#define FFT_DI() _m0filen = 0; //disabled

//C to F oscillator frequency-hopping function control
//#define CtFTouch() _m0sofc = 1 //Controlled by hardware
#define CtFTouch()_m0sofc = 0 //Controlled by software

//Selecting key oscillator or reference oscillator frequency as the	C to F oscillator is controlled by software
//#define	SCtfTouch() _m0sof2 = 0; _m0sof1= 0; _m0sof0 = 0
//#define	SCtfTouch() _m0sof2 = 0; _m0sof1= 0; _m0sof0 = 1
//#define	SCtfTouch() _m0sof2 = 0; _m0sof1= 1; _m0sof0 = 0
//#define	SCtfTouch() _m0sof2 = 0; _m0sof1= 1; _m0sof0 = 1
//#define	SCtfTouch() _m0sof2 = 1; _m0sof1= 0; _m0sof0 = 0
//#define	SCtfTouch() _m0sof2 = 1; _m0sof1= 0; _m0sof0 = 1
//#define	SCtfTouch() _m0sof2 = 1; _m0sof1= 1; _m0sof0 = 0
#define	SCtfTouch() _m0sof2 = 1; _m0sof1= 1; _m0sof0 = 1

//Time Slot counter Select
#define	TScTouch()	_m0tss = 0 //Reference Oscillator
//#define TScTouch() _m0tss = 1 //fsys/4

//Reference Oscillator control
//#define ROcTouch() _m0roen = 0; //disabled
#define	ROcTouch()	_m0roen = 1 //enabled

//key oscillator control
//#define KOcTouch() _m0koen = 0//disabled
#define	KOcTouch() _m0koen = 1 //enabled

#define	TouchStart(x) _tkst = x; 	
	
//INIT TOUCH KEY INTERRUPT
#define EMI() _emi = 1; //global interrupt enable
#define IntTouch(x) _tkme = x //touch interrupt enable
#define	FlagIntTouch(x) _tkmf = x //touch interrupt Flag : Set Or Reset
#define	Flag_Int_Touch _tkmf //touch interrupt Flag Read

void TuochKeyInit()
{
//Common
 IntTouch(0);
 FlagIntTouch(0);
 TimeTouch();
 FcTouch();
 FsTouch();

//Module 1
 IO_Touch();
 RefTouch();
 MFT_EN();
 FFT_EN();
 CtFTouch();
 SCtfTouch();
 TScTouch();
 ROcTouch();
 KOcTouch();
}

void Key_Touch()
{
	if(Count_S1 < Count_C1 - 50)
	{
		Count_T1++;if(Count_T1> 1000){Count_T1 = 1000;}
	}
	else if(Count_S1 > Count_C1 -10 )
	{
		Count_T1=0;
	}
	if(Count_T1 == FINGER_FOCUS_ON)
	{
		if(q==1)q=0;
		else q=1;
		
		CalibrCount1=0;
		CalibrSample1=0;
		Count_C1_Backup=0;
	}
	
	
	
	
	
	
	
	
	
	
	if(Count_S2 < Count_C2 - 55)
	{
		Count_T2++;
		
		if(Count_T2> 2000){
			
			rgbpals=0;
			Count_T1 = 2000;
		}
		
		if(Count_T2>300 && q==1 && rgbchange==0){
			
			rgbchange=1;
			rgbauto=0;
			Count_T2=1000;
			
			LED1=1;
			LED2=1;
			LED3=1;
			
			counterrgb=-20;
			
			rgbpals=0;
			
			B=0  , R=80 , G=80;
			RGB=0;
			
		}
		
	}
	else if(Count_S2 > Count_C2 -10  && q==1)
	{
		
		if(Count_T2 >= (FINGER_FOCUS_ON+10)  && Count_T2 <= FINGER_FOCUS_ON+300 && rgbchange==0)
 		{
 			B=0  , R=80 , G=80;
			RGB=0;
 			
 			rgbpals++;
			
			if(rgbpals>=6)rgbpals=1;
			
			counterrgb=-20;
			
			LED1=1;
			LED2=1;
			LED3=1;
			
			
			CalibrCount2=0;
			CalibrSample2=0;
			Count_C2_Backup=0;
			
			Count_T2=0;
 		}
	 	else Count_T2=0;
	 	
	 	rgbchange=0;
	}
}


void CalibrTuoch()
{
	
	TouchStart(0);
	KeyTouch1();delay_10us(500);
	GCC_CLRWDT();	
	for(i=0; i <20 ; i++)
	{
		 ROcTouch();
		 KOcTouch();
		 TouchStart(1);
		/*Multiplexer Key Select*/
    	GCC_CLRWDT();
		while( !_tkrcov ){};//wait for tkrcov flag
		Count_S1 = (unsigned int )((_tkm016dh <<8) | _tkm016dl);
		Count_C1 += Count_S1;
		_tkrcov = 0;
		TouchStart(0);	
		GCC_CLRWDT();
		delay_ms(5);
	}
	Count_C1 = Count_C1 /20;
	
	
	TouchStart(0);
	KeyTouch2();delay_10us(500);
	GCC_CLRWDT();	
	for(i=0; i <20 ; i++)
	{
		 ROcTouch();
		 KOcTouch();
		 TouchStart(1);
		/*Multiplexer Key Select*/
    	GCC_CLRWDT();
		while( !_tkrcov ){};//wait for tkrcov flag
		Count_S2 = (unsigned int )((_tkm016dh <<8) | _tkm016dl);
		Count_C2 += Count_S2;
		_tkrcov = 0;
		TouchStart(0);	
		GCC_CLRWDT();
		delay_ms(5);
	}
	Count_C2 = Count_C2 /20;
	
	
	
	GCC_CLRWDT();
}


void Key_Select(char sel)
{
	if(sel==0){
		ROcTouch();KOcTouch();TouchStart(1);KeyTouch1();
		
		while(!_tkrcov ){GCC_NOP();} ;
		Count_S1 = (unsigned int)((_tkm016dh <<8) | _tkm016dl);
		if(rgbchange==0)CalibrCount1++;
		if(CalibrCount1>50)
		{
			CalibrCount1=0;	
			Count_C1_Backup += Count_S1;
			CalibrSample1++;
			if(CalibrSample1>=20)
			{
				CalibrSample1=0;
				Count_C1=Count_C1_Backup/20;
				Count_C1_Backup=0;
			}
		}
			
		_tkrcov =0;
		TouchStart(0);	
	}
	
	if(sel==1){
		ROcTouch();KOcTouch();TouchStart(1);KeyTouch2();
		
		while(!_tkrcov ){GCC_NOP();} ;
		Count_S2 = (unsigned int)((_tkm016dh <<8) | _tkm016dl);
		if(rgbchange==0)CalibrCount2++;
		if(CalibrCount2>50)
		{
			CalibrCount2=0;	
			Count_C2_Backup += Count_S2;
			CalibrSample2++;
			if(CalibrSample2>=20)
			{
				CalibrSample2=0;
				Count_C2=Count_C2_Backup/20;
				Count_C2_Backup=0;
			}
		}
			
		_tkrcov =0;
		TouchStart(0);	
	}
}



void __attribute((interrupt(0x28))) TOUCH_ISR(void)
{
  ///...
}


void __attribute((interrupt(0x04))) int0(void)
{
	
	
	
	
	if(rgbpals!=0 ||rgbchange==1)counterrgb++;
	if(counterrgb>=1000)counterrgb=0;
	
	
	ncount=counter1;
	
	counter1=0;
	
	if((rgbpals==1||rgbpals==2||rgbchange==1) && q==1 && counterrgb>=0){
		
		if(rgbpals==1)  rgb1=1;
		if(rgbchange==1)  rgb1=3;
		if(rgbpals==2)  rgb1=10;
		
		if(counterrgb%rgb1==0){
			
			
			/*if(G==nsicl){
				R--;
				B=nsicl-R;
			}
			if(R==nsicl){
				B--;
				G=nsicl-B;
			}
			if(B==nsicl){
				G--;
				R=nsicl-G;
			}*/
			
			
			if(RGB==0 ){//B=0   R=80  G=80
                G=G-1;
                if(G<=0)RGB=1;
			}
			if(RGB==1 ){//B=0   R=80  G=0
                B=B+1;
                if(B>=80)RGB=2;
			}
			if(RGB==2 ){//B=80 R=80  G=0
				R=R-1;
                if(R<=0)RGB=3;
			}
			if(RGB==3 ){//B=80 R=0    G=0
				G=G+1;
                if(G>=80)RGB=4;
			}
            if(RGB==4 ){//B=80 R=0    G=80
				B=B-1;
                if(B<=0)RGB=5;
			}
            if(RGB==5 ){//B=0   R=0    G=80
				G=G-1;
                if(G<=0)RGB=6;
			}
            if(RGB==6 ){//B=0   R=0    G=0
				G=G+1;
                R=R+1;
                if(G>=80 && R>=80 )RGB=0;
			}
		}
	}
		
		
	if((rgbpals==3||rgbpals==4) && q==1 && counterrgb>=0){
		
		if(rgbpals==3)  rgb1=40;
		if(rgbpals==4)  rgb1=210;
		
		
		if(counterrgb%rgb1==0){
			
			rgb2++;
			
			if(rgb2==1) R=80 , G=80, B=0 ;
			if(rgb2==2) R=0   , G=80, B=0 ;
			if(rgb2==3) R=0 , G=80  , B=80 ;
			if(rgb2==4) R=0 , G=0, B=80 ;
			if(rgb2==5) R=80   , G=0, B=80 ;
			if(rgb2==6) R=80 , G=0  , B=0 ;
			if(rgb2==7) R=0 , G=0  , B=0 ;
			if(rgb2>=7) rgb2=0;
			
			
		}
	}	
		
		
	if((rgbpals==5) && q==1 && counterrgb>=0){
		
		
		
		if(counterrgb%100<50){
			
			if(counterrgb%6==0){
				R=0 , G=0, B=0 ;
				LED1=1;
				LED2=1;
				LED3=1;
			}
			if(counterrgb%6==3){
				R=80 , G=80, B=80 ;
				LED1=0;
				LED2=0;
				LED3=0;
			}
			
			
		}
		
		if(counterrgb%100==50){
			
			rgb2++;
			
			if(rgb2==1) R=80 , G=80, B=0 ;
			if(rgb2==2) R=0   , G=80, B=80 ;
			if(rgb2==3) R=80 , G=0  , B=80 ;
			if(rgb2>=3) rgb2=0;
			
		}
	}	
		
		
	if(q==1  && counterrgb>=0 ){
		
		counter3=counter3-1;
		
		if(counter3<0){
			counter3=-1;
			
			if(R<=0){
				LED1=1;
			}else LED1=0,LED1=0,LED1=0,LED1=0;
			if(G<=0){
				LED2=1;
			}else LED2=0,LED2=0,LED2=0,LED2=0;
			if(B<=0){
				LED3=1;
			}else LED3=0,LED3=0,LED3=0,LED3=0;
			
		}else{
			LED1= 0;
			LED2= 0;
			LED3= 0;
		}
		
	}
	
	if(q==0 && counterrgb>=0){
		LED1= 0,LED1=0,LED1=0,LED1=0;
		LED2= 0,LED2=0,LED2=0,LED2=0;
		LED3= 0,LED3=0,LED3=0,LED3=0;
		if(counter2<=80){
			counter2=counter2+2;
		}
	
	}
}




///////////////////////////////////////////////////////





void __attribute((interrupt(0x0C))) timer(void)
{
	
	counter1++;
	
	
	
	if(q==1  && counterrgb>=0){
		
		if(counter1>=counter3){
			if(counter1>R && counter1<65){
				LED1=1;
			}else LED1=0,LED1=0,LED1=0,LED1=0;
			if(counter1>G && counter1<65){
				LED2=1;
			}else LED2=0,LED2=0,LED2=0,LED2=0;
			if(counter1>B && counter1<65){
				LED3=1;
			}else LED3=0,LED3=0,LED3=0,LED3=0;
		}
		counter2=0;
		//counter2=counter3;
		
	}
	if(q==0  && counterrgb>=0){
		
		if(counter1>=counter2){
			if(counter1>=R){
				LED1=1;
			}else LED1=0,LED1=0,LED1=0,LED1=0;
			if(counter1>=G){
				LED2=1;
			}else LED2=0,LED2=0,LED2=0,LED2=0;
			if(counter1>=B){
				LED3=1;
			}else LED3=0,LED3=0,LED3=0,LED3=0;
		}
		counter3=ncount;
	}
	
	
}
