#ifndef _TOUCHKEY_H_
#define _TOUCHKEY_H_
#endif





#define FINGER_FOCUS_ON	5
//I/O Pin or Touch Key 1..4 Function Select

#define IO_Touch1() _m0k4io = 1; _m0k3io = 1;_m0k2io = 1;_m0k1io = 1;
//I/O Pin or Touch Key 5..6 Function Select
#define IO_Touch2() _m1k2io = 0;_m1k1io = 0;

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
#define Ref1Touch()	_tkm0rol = 255; _tkm0roh = 3
#define Ref2Touch()	_tkm1rol = 200; _tkm1roh = 0


//Multiplexer Key Select
#define KeyTouch1()	_m0mxs1 = 0;	_m0mxs0 = 0;	//key1
#define KeyTouch2()	_m0mxs1 = 0;	_m0mxs0 = 1;	//key2
#define KeyTouch3()	_m0mxs1 = 1;	_m0mxs0 = 0;	//key3
#define KeyTouch4()	_m0mxs1 = 1;	_m0mxs0 = 1;	//key4

#define KeyTouch5()	_m1mxs0 = 0;	//key5
#define KeyTouch6()	_m1mxs0 = 1;	//key6

//Multi-frequency function control
#define MFT1_EN() _m0dfen = 1; //enabled
#define MFT1_DI() _m0dfen = 0; //disabled

#define MFT2_EN() _m1dfen = 1; //enabled
#define MFT2_DI() _m1dfen = 0; //disabled


//Filter function control
#define FFT1_EN() _m0filen = 1; //enabled
#define FFT1_DI() _m0filen = 0; //disabled

#define FFT2_EN() _m1filen = 1; //enabled
#define FFT2_DI() _m1filen = 0; //disabled

//C to F oscillator frequency-hopping function control
//#define CtF1Touch() _m0sofc = 1 //Controlled by hardware
#define CtF1Touch()_m0sofc = 0 //Controlled by software

#define CtF2Touch() _m1sofc = 1 //Controlled by hardware
//#define CtF2Touch()_m1sofc = 0 //Controlled by software

//Selecting key oscillator or reference oscillator frequency as the	C to F oscillator is controlled by software
//#define	SCtf1Touch() _m0sof2 = 0; _m0sof1= 0; _m0sof0 = 0
//#define	SCtf1Touch() _m0sof2 = 0; _m0sof1= 0; _m0sof0 = 1
//#define	SCtf1Touch() _m0sof2 = 0; _m0sof1= 1; _m0sof0 = 0
//#define	SCtf1Touch() _m0sof2 = 0; _m0sof1= 1; _m0sof0 = 1
//#define	SCtf1Touch() _m0sof2 = 1; _m0sof1= 0; _m0sof0 = 0
//#define	SCtf1Touch() _m0sof2 = 1; _m0sof1= 0; _m0sof0 = 1
//#define	SCtf1Touch() _m0sof2 = 1; _m0sof1= 1; _m0sof0 = 0
#define	SCtf1Touch() _m0sof2 = 1; _m0sof1= 1; _m0sof0 = 1

//#define	SCtf2Touch() _m1sof2 = 0; _m1sof1= 0; _m1sof0 = 0
//#define	SCtf2Touch() _m1sof2 = 0; _m1sof1= 0; _m1sof0 = 1
//#define	SCtf2Touch() _m1sof2 = 0; _m1sof1= 1; _m1sof0 = 0
//#define	SCtf2Touch() _m1sof2 = 0; _m1sof1= 1; _m1sof0 = 1
//#define	SCtf2Touch() _m1sof2 = 1; _m1sof1= 0; _m1sof0 = 0
//#define	SCtf2Touch() _m1sof2 = 1; _m1sof1= 0; _m1sof0 = 1
//#define	SCtf2Touch() _m1sof2 = 1; _m1sof1= 1; _m1sof0 = 0
#define	SCtf2Touch() _m1sof2 = 1; _m1sof1= 1; _m1sof0 = 1


//Time Slot counter Select
#define	TSc1Touch()	_m0tss = 0 //Reference Oscillator
//#define TSc1Touch() _m0tss = 1 //fsys/4

//#define	TSc2Touch()	_m1tss = 0 //Reference Oscillator
#define TSc2Touch() _m1tss = 1 //fsys/4


//Reference Oscillator control
//#define ROc1Touch() _m0roen = 0; //disabled
#define	ROc1Touch()	_m0roen = 1 //enabled

//#define ROc2Touch() _m1roen = 0; //disabled
#define	ROc2Touch()	_m1roen = 1 //enabled

//key oscillator control
//#define KOc1Touch() _m0koen = 0//disabled
#define	KOc1Touch() _m0koen = 1 //enabled

//#define KOc2Touch() _m1koen = 0//disabled
#define	KOc2Touch() _m1koen = 1 //enabled

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
 IO_Touch1();
 Ref1Touch();
 MFT1_EN();
 FFT1_EN();
 CtF1Touch();
 SCtf1Touch();
 TSc1Touch();
 ROc1Touch();
 KOc1Touch();
}

void Key_Touch()
{
	
	if(Count_C1 < Count_P1 - 20)
	{
		Count_T1++;if(Count_T1> 50)Count_T1= 50;
	}
	else if(Count_C1 > Count_P1 -10 )
	{
		Count_T1=0;
	}
	if(Count_T1 == FINGER_FOCUS_ON)
	{
		Ritm = 0;
    	Locking++;
    	NTC_Count = 0;
    	Backup_Count = 0;
    	ADC_Off();
    	Buzzer_IO(0); 
    	Alarm = 1;
		if(Locking == Off)
		{
			INT_E(Off);	
			Error = 0;
			DispOff();
			Lamp(0); 
			Element(0);	
		}
		else
		{
			if(Error == 0)
			{
	    		Mode = 0;
	    		SetPoint = 70;
	    		Lamp(1);
	    		INT_F(Off);
	    		INT_E(On);
			}	
		}  	
	}
		
	if(Count_C2 < Count_P2 - 20)
	{
		Count_T2++; if(Count_T2 > 50)Count_T2 = 50;
	}
	else if(Count_C2 > Count_P2 -10 )
	{
		Count_T2 = 0;
	}
	if(Count_T2 == FINGER_FOCUS_ON & Error == 0)
	{
		Ritm = 0;
	    if(Locking == 1)
	    {	
			Mode++; 
			if(Mode <= 0)SetPoint = 70;
			if(Mode >= 1)SetPoint = 75;
			NTC_Count = 0;
			Backup_Count = 0;
			ADC_Off();
			Buzzer_IO(0);
			Alarm = 1;
	    }
	}
	
	if(Count_C3 < Count_P3 - 20)
	{
		Count_T3++;if(Count_T3> 50)Count_T3= 50;
	}
	
	else if(Count_C3 > Count_P3 -10)
	{
		Count_T3=0;
	}
	
	if(Count_T3 == FINGER_FOCUS_ON & Error == 0)
	{
		if(Locking == 1 )
	    {
	    	Ritm = 0;
		  
		    if(Mode == 0 & SetPoint < 80)
		    {
		    	SetPoint++; 
		    				NTC_Count = 0;
			Backup_Count = 0;
			ADC_Off();
			Buzzer_IO(0);
				Alarm = 1; 

		    }
	        if(Mode == 1 & SetPoint < 85)
	        {
	        	SetPoint++;
	        				NTC_Count = 0;
			Backup_Count = 0;
			ADC_Off();
			Buzzer_IO(0); 
				Alarm = 1; 
	        } 
	    }
	}
	
	if(Count_C4 < Count_P4 - 20)
	{
		Count_T4++;if(Count_T4> 50)Count_T4= 50;
	}
	else if(Count_C4 > Count_P4 -10 )
	{
		Count_T4=0;
	}
	if(Count_T4 == FINGER_FOCUS_ON & Error == 0)
	{
		Ritm = 0;
		
        if(Locking == 1)
	    { 		  
		    if(Mode == 0 & SetPoint > 60)
		    {
		    	SetPoint--; 
		    	NTC_Count = 0;
				Backup_Count = 0;
				ADC_Off();
				Buzzer_IO(0); 
                Alarm = 1;
		    }
	        if(Mode == 1 & SetPoint > 75)
	        {
	        	SetPoint--; 
	        	NTC_Count = 0;
				Backup_Count = 0;
				ADC_Off();
				Buzzer_IO(0);
				Alarm = 1;
	        } 
	    }
	}
	
}


void CalibrTuoch()
{
	for(j = 0; j < 4;j++)
	{	
		_tkst=0;
		if(j == 0)    {KeyTouch1();delay_10us(500);}
		if(j == 1)    {KeyTouch2();delay_10us(500);}
		if(j == 2)    {KeyTouch3();delay_10us(500);}
		if(j == 3)    {KeyTouch4();delay_10us(500);}
		GCC_CLRWDT();
		
		 	
		for(i=0; i <20 ; i++)
		{
			 ROc1Touch();
			 KOc1Touch();
			_tkst =1;
					/*Multiplexer Key Select*/
			    	GCC_CLRWDT();
			while( !_tkrcov ){};//wait for tkrcov flag
	
			if(j == 0){Count_C1 = (unsigned int )((_tkm016dh <<8) | _tkm016dl);Count_P1 += Count_C1;}
			if(j == 1){Count_C2 = (unsigned int )((_tkm016dh <<8) | _tkm016dl);Count_P2 += Count_C2;}
			if(j == 2){Count_C3 = (unsigned int )((_tkm016dh <<8) | _tkm016dl);Count_P3 += Count_C3;}
			if(j == 3){Count_C4 = (unsigned int )((_tkm016dh <<8) | _tkm016dl);Count_P4 += Count_C4;}
			_tkrcov = 0;
			_tkst=0;
			
			GCC_CLRWDT();
			delay_ms(5);
		}
	}
	Count_P1 = Count_P1 /20;
	Count_P2 = Count_P2 /20;
	Count_P3 = Count_P3 /20;
	Count_P4 = Count_P4 /20;
	GCC_CLRWDT();
}


void Key_Select(char Sel)
{
		switch(Sel)
		{
			case 0: ROc1Touch();KOc1Touch();TouchStart(1);KeyTouch1();
			while(!_tkrcov ){} ;Count_C1 = (unsigned int)((_tkm016dh <<8) | _tkm016dl);
			_tkrcov =0;TouchStart(0);break;
			
			case 1: ROc1Touch();KOc1Touch();TouchStart(1);KeyTouch2();
			while(!_tkrcov ){}; Count_C2 = (unsigned int)((_tkm016dh <<8) | _tkm016dl);
			_tkrcov =0;TouchStart(0);break;
			
			case 2: ROc1Touch();KOc1Touch();TouchStart(1);KeyTouch3();
			while(!_tkrcov ){} ;Count_C3 = (unsigned int)((_tkm016dh <<8) | _tkm016dl);
			_tkrcov =0;TouchStart(0);break;
			
			case 3: ROc1Touch();KOc1Touch();TouchStart(1);KeyTouch4();
			while(!_tkrcov ){} ;Count_C4 = (unsigned int)((_tkm016dh <<8) | _tkm016dl);
			_tkrcov =0;TouchStart(0);break;
  		}
}



void __attribute((interrupt(0x28))) TOUCH_ISR(void)
{
  ///...
}
