volatile unsigned long Count_C1=0,Count_C1_Backup=0; //Calibr
volatile unsigned int Count_S1=0; //Sense
volatile unsigned int Count_T1=0; //Time
volatile unsigned char i=0, counter=0,CalibrCount=0,CalibrSample=0;


volatile int nsicl=80;

volatile int R=80 , G=80, B=0 , rgbchange=0 , rgbauto=0 , rgb1=0  , rgb2=0 , rgbpals=0 , counterrgb=15000 , counterint;

volatile int ncount=0;
volatile int counter1=0;
volatile int counter2=0;
volatile int counter3=0;
volatile bit Set=0;
volatile unsigned char Setinoff=0;

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
		Count_T1++;
		
		if(Count_T1> 2000){
			
			rgbpals=0;
			Count_T1 = 2000;
		}
		
		if(Set==1){
			
			if(Count_T1>300 && rgbchange==0 && Setinoff==0){
				
				rgbchange=1;
				rgbauto=0;
				Count_T1=1000;
				
				LED1=1;
				LED2=1;
				LED3=1;
				
				counterrgb=20;
				
			}
		}else{
			if(Count_T1 == FINGER_FOCUS_ON)
			{
				Set=1;
				
				
				counterint=0;
				rgbpals++;
				
				Setinoff=1;
				
				CalibrCount=0;
				CalibrSample=0;
				Count_C1_Backup=0;
				
				/*BUZ=1;
				delay_ms(10);
				BUZ=0;*/
			}
		}
		
		
	}
	else if(Count_S1 > Count_C1 -10 && Set==1)
	{
		
		if(Count_T1 >= FINGER_FOCUS_ON  && Count_T1 <= FINGER_FOCUS_ON+300 && rgbchange==0 && Setinoff==0)
	 		{
	 			Set=0;
				
				CalibrCount=0;
				CalibrSample=0;
				Count_C1_Backup=0;
				
				Count_T1=0;
	 		}
	 	else Count_T1=0, Setinoff=0;
	 	
	 	if(counterrgb>=50)rgbchange=0;
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
	GCC_CLRWDT();
}


void Key_Select()
{
	ROcTouch();
	KOcTouch();
	TouchStart(1);
	KeyTouch1();
	while(!_tkrcov ){GCC_NOP();} ;
	Count_S1 = (unsigned int)((_tkm016dh <<8) | _tkm016dl);
	if(rgbchange==0)CalibrCount++;
	if(CalibrCount>100)
	{
		CalibrCount=0;	
		Count_C1_Backup += Count_S1;
		CalibrSample++;
		if(CalibrSample>=20)
		{
			CalibrSample=0;
			Count_C1=Count_C1_Backup/20;
			Count_C1_Backup=0;
		}
	}
		
	_tkrcov =0;
	TouchStart(0);	
}



void __attribute((interrupt(0x28))) TOUCH_ISR(void)
{
  ///...
}


void __attribute((interrupt(0x04))) int0(void)
{
	
	counterint++;
	if(counterint>=1000)counterint=1000;
	if(counterint>=200)rgbpals=0;
	
	
	if(rgbpals>2 && rgbauto==0 && Set==1){
		rgbpals=0;
		rgbauto=1;
		LED1=1;
		LED2=1;
		LED3=1;
		
		counterrgb=0;
		//Delay(20000);
		//delay_ms(500);
	}
	
	if(rgbauto || rgbchange)counterrgb++;
	if(counterrgb>=20000)counterrgb=20000;
	
	
	ncount=counter1;
	
	counter1=0;
	
	if((rgbchange || rgbauto) && Set==1 && counterrgb>=50){
		
		if(rgbchange==1)  rgb1++;
		if(rgbauto==1)    rgb2++;
		
		if(rgb1>=3 || rgb2>=9){
			
			rgb1=0;
			rgb2=0;
			
			if(G==nsicl){
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
			}
		}
	}
		
	if(Set==1  && counterrgb>=50 ){
		
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
	
	if(Set==0 && counterrgb>=50){
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
	
	
	
	if(Set==1  && counterrgb>=50){
		
		if(counter1>=counter3){
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
		counter2=0;
		//counter2=counter3;
		
	}
	if(Set==0  && counterrgb>=50){
		
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
