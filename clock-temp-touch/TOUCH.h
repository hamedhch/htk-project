
volatile unsigned long Count_P1=0,Count_P2=0;
volatile unsigned char Count_T1=0,Count_T2=0;
volatile unsigned int  Count_C1=0,Count_C2=0;
volatile unsigned int  Count_B1=0,Count_B2=0;
volatile unsigned char Count_H1=0,Count_H2=0;
volatile unsigned char CalibrCount1=0,CalibrCount2=0;
volatile unsigned int  Count_TQ=0;
volatile unsigned char j=0,i=0,iq=0,KeySel=0;

#define FINGER_FOCUS_ON	50

//• TKTMR Register
//Touch key 8-bit time slot counter preload register 0 ~ 255
#define TimeTouch(x) _tktmr = x;

//• TKC0 Register
//Touch key Data RAM access control
#define DRACTouch(x) _tkramc = x; //: Accessed by MCU:0 OR  Accessed by Touch key module:1

//Touch key time slot counter overflow flag
#define	FlagTouch _tkrcov // No overflow occurs:0 ,Overflow occurs:1

//Touch key detection Start control
#define	StartTouch(x) _tkst = x; // Start:1 , Stop:0

//Touch key module 16-bit C/F counter overflow flag
#define	FlagCFTouch _tkrfov // No overflow occurs:0 , Overflow occurs:1

//Touch key function 16-bit counter overflow flag
#define	FlagFTouch _tk16ov // No overflow occurs:0 , Overflow occurs:1

//Touch key scan mode select
#define	ModeTouch(x) _tkmod = x; // Auto scan mode:0 , Manual scan mode:1

// Touch key scan operation busy flag
#define	BusyTouch _tkbusy //  Not busy:0 ,  Busy, scan operation is executing:1

//• TKC1 Register
//Touch key time slot counter select
#define	TTSCSTouch(x) _tscs = x;
//Each touch key module uses its own time slot counter:0
//All touch key modules use Module 0 time slot counter:1

//Touch key module 16-bit counter clock source selection	
#define FcTouch()	_tk16s1 =0; _tk16s0 =0 //Fsys /1
//#define FcTouch()	_tk16s1 =0; _tk16s0 =1 //Fsys /2
//#define FcTouch()	_tk16s1 =1; _tk16s0 =0 //Fsys /4
//#define FcTouch()	_tk16s1 =1; _tk16s0 =1 //Fsys /8

//touch key OSC frequency selection
//#define FsTouch()	_tkfs1 = 0; _tkfs0 = 0 //500KHz
//#define FsTouch()	_tkfs1 = 0; _tkfs0 = 1 //1MHz
//#define FsTouch()	_tkfs1 = 1; _tkfs0 = 0 //1.5MHz
#define FsTouch()	_tkfs1 = 1; _tkfs0 = 1 //2MHz

//– TK16DH/TK16DL Register
//Touch Key Function 16-bit Counter Register Pair
#define DataTouch_H _tk16dh
#define DataTouch_L _tk16dl

//– TKn16DH/TKn16DL Register
//Touch Key Module n 16-bit C/F Counter Register Pair
//Module 0
#define DataTouch_1H _tkm016dh
#define DataTouch_1L _tkm016dl
#define DataTouch1 ((_tkm016dh <<8) | _tkm016dl)

//• TKMnROH/TKMnROL Register
//Touch Key Module n Reference Oscillator Capacitor Select Register Pair
//Reference Oscillator internal capacitor selection TKM0RO[9:0] × 50pF / 1024
#define Ref1Touch()	_tkm0rol = 200; _tkm0roh = 0; //Module 0

//• TKMnC0 Register
//Multi-frequency function control
#define MFC1Touch(x) _m0dfen = x; // Disable:0 OR Enabled:1 Module 0

//Touch key module n C-to-F oscillator frequency hopping function control select
#define CtF1Touch(x) _m0sofc = x; // Controlled by MnSOF2~MnSOF0:0 OR Controlled by hardware circuit:1 Module 0

//Selecting key oscillator or reference oscillator frequency as the	C to F oscillator is controlled by software
//Module 0
//#define	SCtf0Touch() _m0sof2 = 0; _m0sof1= 0; _m0sof0 = 0;
//#define	SCtf0Touch() _m0sof2 = 0; _m0sof1= 0; _m0sof0 = 1;
//#define	SCtf0Touch() _m0sof2 = 0; _m0sof1= 1; _m0sof0 = 0;
//#define	SCtf0Touch() _m0sof2 = 0; _m0sof1= 1; _m0sof0 = 1;
//#define	SCtf0Touch() _m0sof2 = 1; _m0sof1= 0; _m0sof0 = 0;
//#define	SCtf0Touch() _m0sof2 = 1; _m0sof1= 0; _m0sof0 = 1;
//#define	SCtf0Touch() _m0sof2 = 1; _m0sof1= 1; _m0sof0 = 0;
#define	SCtf1Touch() _m0sof2 = 1; _m0sof1= 1; _m0sof0 = 1

//• TKMnC1 Register
//Touch key module n time slot counter clock source select
#define	TSc1Touch(x) _m0tss = x; //Reference Oscillator:0 OR  FSYS/4:1 Module 0

//Touch key module n Reference oscillator enable control
#define	ROc1Touch(x) _m0roen = x; // Disable:0 OR Enabled:1 Module 0

//Touch key module n Key oscillator enable control
#define	KOc1Touch(x) _m0koen = x; // Disable:0 OR Enabled:1 Module 0

//Touch key modules Keys enable control
#define	Module1ENTouch(w,x,y,z) _m0k4en = w; _m0k3en = x; _m0k2en = y; _m0k1en = z; // Module 0

//Touch key modules Keys enable control
#define	InKeyTouch1() _pbs17 = 1; _pbs16 = 0;
#define	InKeyTouch2() _pbs15 = 1; _pbs14 = 0;

//Multiplexer Key Select
#define KeyTouch1() _m0sk01 = 1; _m0sk00 = 1;	//key1
#define KeyTouch2() _m0sk01 = 1; _m0sk00 = 0;	//key2
	
//INIT TOUCH KEY INTERRUPT
//#define EMI() _emi = 1; //global interrupt enable
#define IntTouch(x) _tkme = x //touch interrupt enable
#define	FlagIntTouch(x) _tkmf = x //touch interrupt Flag : Set Or Reset
#define	Flag_Int_Touch _tkmf //touch interrupt Flag Read

void TuochKeyInit()
{
//Common
 FcTouch();
 FsTouch();
 IntTouch(0);
 FlagIntTouch(0);
 TimeTouch(0);
 DRACTouch(1);
 ModeTouch(1);
 TTSCSTouch(0);


//Module 0
 Ref1Touch();
 SCtf1Touch();
 MFC1Touch(1);
 CtF1Touch(0);
 TSc1Touch(0);
 ROc1Touch(1);
 KOc1Touch(1);
 Module1ENTouch(1,1,0,0);
 InKeyTouch1();
 InKeyTouch2();
}

void Key_Touch()
{
	//KEY1
	if(Count_C1<Count_B1-40  && Count_C2>Count_B2-30){
		Count_T1++;
		if(Count_T1>150)Count_T1=150;
	}else if(Count_C1>Count_B1-10){Count_T1=0;}
	
	if(Count_T1==(FINGER_FOCUS_ON-10))
	{
		if(State>=0 && State<=14){
			if(q1==1)q1=0;
			else q1=1;
			
			LED_B1=q1;
			LED_W1=!q1;
		}
		if(State>=20 && State<=24){
			Belink=0;Belinker=1;
			State=20;
			Min--;
			if(Min<=0)Min=60;
			Math();
		}
		if(State>=25 && State<=30){
			Belink=0;Belinker=1;
			State=25;
			Hrs--;
			if(Hrs<=0)Hrs=23;
			Math();
		}
		
		Bip=1;
	}
	
	
	//KEY2
	if(Count_C2<Count_B2-40 && Count_C1>Count_B1-30){
		Count_T2++;
		if(Count_T2>150)Count_T2=150;
	}else if(Count_C2>Count_B2-10){Count_T2=0;}
	
	if(Count_T2 == FINGER_FOCUS_ON)
	{
		if(State>=0 && State<=14){
			if(q2==1)q2=0;
			else q2=1 ;
			
			LED_B2=q2;
			LED_W2=!q2;
		}
		if(State>=20 && State<=24){
			Belink=0;Belinker=1;
			State=20;
			Min++;
			if(Min>=60)Min=0;
			Math();
		}
		if(State>=25 && State<=30){
			Belink=0;Belinker=1;
			State=25;
			Hrs++;
			if(Hrs>=24)Hrs=0;
			Math();
		}
		
		Bip=1;
		
	}
	
	
	// Setting	
	if(Count_C2<Count_B2-40 && Count_C1<Count_B1-40){
		Count_TQ++;
		if(Count_TQ>1000)Count_TQ=1000;
	}else if(Count_C2>Count_B2-10 && Count_C1>Count_B1-10){Count_TQ=0;
}
	if(Count_TQ == 200)
	{
		Belinking=1,State=20;
		Bip=2;
	}

}


void CalibrTuoch()
{
	for(j = 0; j < 2;j++)
	{	
		StartTouch(0);
		if(j == 0)    {KeyTouch1();delay_10us(500);}
		if(j == 1)    {KeyTouch2();delay_10us(500);}
		
		GCC_CLRWDT();
			 	
		for(i=0; i <20 ; i++)
		{
			if(j == 0)    {ROc1Touch(1);KOc1Touch(1);}
			if(j == 1)    {ROc1Touch(1);KOc1Touch(1);}
			
			StartTouch(1);
					/*Multiplexer Key Select*/
			    	GCC_CLRWDT();
			while(!FlagTouch){};//wait for tkrcov flag
	
			if(j == 0){Count_C1 = (unsigned int)DataTouch1;Count_P1 += Count_C1;}
			if(j == 1){Count_C2 = (unsigned int)DataTouch1;Count_P2 += Count_C2;}
				
			FlagTouch = 0;
			StartTouch(0);
			
			GCC_CLRWDT();
			delay_ms(5);
		}
	}
	Count_B1 = Count_P1 /20;
	Count_B2 = Count_P2 /20;
	
	Count_P1 = 0;
	Count_P2 = 0;
	
	GCC_CLRWDT();
}


void Key_Select(char Sel)
{
	/*switch(Sel)
	{
		case 0: ROc1Touch(1);KOc1Touch(1);StartTouch(1);KeyTouch1();
		while(!FlagTouch){} ;Count_C1 = DataTouch1;Count_P1+=Count_C1;
		Count_H1++;if(Count_H1>=20){Count_H1=0;Count_B1=Count_P1/20;Count_P1=0;}
		FlagTouch =0;StartTouch(0);break;
		
		case 1: ROc1Touch(1);KOc1Touch(1);StartTouch(1);KeyTouch2();
		while(!FlagTouch){}; Count_C2 = DataTouch1;Count_P2+=Count_C2;
		Count_H2++;if(Count_H2>=20){Count_H2=0;Count_B2=Count_P2/20;Count_P2=0;}
		FlagTouch =0;StartTouch(0);break;
		
		
	}*/
	
	if(Sel==0){
		ROc1Touch(1);KOc1Touch(1);StartTouch(1);KeyTouch1();
		
		while(!FlagTouch ){GCC_NOP();};
		Count_C1 = DataTouch1;
		CalibrCount1++;
		if(CalibrCount1>3)
		{
			CalibrCount1=0;	
			Count_P1 += Count_C1;
			Count_H1++;if(Count_H1>=20){Count_H1=0;Count_B1=Count_P1/20;Count_P1=0;}
		}
			
		FlagTouch =0;StartTouch(0);
	}
	
	if(Sel==1){
		ROc1Touch(1);KOc1Touch(1);StartTouch(1);KeyTouch2();
		
		while(!FlagTouch ){GCC_NOP();};
		Count_C2 = DataTouch1;
		CalibrCount2++;
		if(CalibrCount2>3)
		{
			CalibrCount2=0;	
			Count_P2 += Count_C2;
			Count_H2++;if(Count_H2>=20){Count_H2=0;Count_B2=Count_P2/20;Count_P2=0;}
		}
			
		FlagTouch =0;StartTouch(0);
	}
}



//void __attribute((interrupt(0x28))) TOUCH_ISR(void)
//{
//  ///...
//}
