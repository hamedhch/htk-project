volatile unsigned long Count_C1=0,Count_C1_Backup=0; //Calibr
volatile unsigned int Count_S1=0; //Sense
volatile unsigned int Count_T1=0; //Time
volatile unsigned char i=0,CalibrCount=0,CalibrSample=0;

volatile int lightchange=0, counterrgb=15000;
volatile int ncount=0;
volatile int Counter=0;
volatile int Counter_On=0;
volatile int Counter_On_set=0;
volatile bit Set=0,UD=1;
volatile unsigned char Setinoff=0;

#define FINGER_FOCUS_ON	80

//I/O Pin or Touch Key 1..4 Function Select
#define IO_Touch() _m0k4io = 0; _m0k3io = 0;_m0k2io = 0;_m0k1io = 1;

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
	
	if(Count_S1 < Count_C1 - 90)
	{
		Count_T1++;
		if(Count_T1> 1000){Count_T1 = 1000;}
		
		if(Set==1){
			
			if(Count_T1>300 &&  lightchange==0 && Setinoff==0){
				
				if(UD==1)UD=0;
				else UD=1;
				
				lightchange=1;
				Count_T1=1000;
				
				LED1=0;
				
				counterrgb=30;
			
			}
		
		}else{
			if(Count_T1 == FINGER_FOCUS_ON)
			{
				Set=1;
				
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
		if(Count_T1 >= FINGER_FOCUS_ON  && Count_T1 <= FINGER_FOCUS_ON+300 && lightchange==0 && Setinoff==0)
 		{
 			Set=0;
			
			CalibrCount=0;
			CalibrSample=0;
			Count_C1_Backup=0;
			
			Count_T1=0;
			
			/*BUZ=1;
			delay_ms(10);
			BUZ=0;*/
				
 		}
	 	else Count_T1=0, Setinoff=0;
	 	
	 	if(counterrgb>=50)lightchange=0;
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
	if(lightchange==0 || counterrgb>=600)CalibrCount++;
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
	
	if(lightchange)counterrgb++;
	if(counterrgb>=20000)counterrgb=20000;
	
	
	if(Counter>150){
    
		Counter=0;
		
		LED1= 0;
    }
    
    //kam v ziad kardan
    if(UD==0 && lightchange && counterrgb%6==0 && counterrgb>=50 && Counter_On_set<95){
		if(Counter_On_set<60)Counter_On_set=70;
		Counter_On_set++;
	}
	if(UD==1 && lightchange && counterrgb%6==0 && counterrgb>=50 && Counter_On_set>0){

		Counter_On_set--;
	}
    
    
    
    
    if(Set==1 && counterrgb>=50){
		if(Counter_On>Counter_On_set){
			Counter_On=Counter_On-2;
		}else{
			Counter_On=Counter_On_set;
		}
	}
	
	if(Set==0 && Counter_On<=160 && counterrgb>=50)
	{
		Counter_On=Counter_On+4;
	}
}

///////////////////////////////////////////////////////

void __attribute((interrupt(0x0C))) timer(void)
{
	Counter++;
		
	if(Counter>=Counter_On && counterrgb>=50)
	{
		LED1=1;
	}
	
	
}
