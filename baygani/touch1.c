#include "BS83B04A-4.h"
#include "defines.h"

///////////////////////////////////////////////////////
ulong touchThreshold=0;
int i,j,n,t;

int f;
ulong fingerCounter = 0;
bool isInDoor=0;
uint touch;
uint  min , max;
ulong  alltouch=0;
uint arraytouch[20];

///////////////////////////////////////////////////////

volatile int counter=0;



void __attribute((interrupt(0x0C))) timer(void)
{
	counter++;
	if(counter==1000){
		counter=0;
		/*_pa1= ~_pa1;*/
		
	}
}

////////////////////////////////////////////////////////

void Delay(unsigned long count)
{
    volatile unsigned long i;
    for(i=0;i<count;i++)
    {
        asm("nop");
        GCC_CLRWDT();
    }
}



void init()
{
	
	
	
	/////////////////////////////////////////////////////////
	
	_ts=0;
    _ton=1;
    
	_tpsc0=1;
    _tpsc1=0;
    _tpsc2=1;
    
    
    _emi=1;
    _hlclk=1;
    
    _tf=1;
    _te=1;
    
    
	
	/////////////////////////////////////////////////////////
	
	/*INIT SYS CLOCK*/
	_smod = 1; //8MHZ
	
	/*INIT I/O PORTS*/
	/*_pac1 = 0; //PA.7 is output
	_pac3 = 0; //PA.6 is output
	_pac5 = 0;*/
	
	
	
	
	_pac4 = 0; 
	/*_pac3 = 0; 
	_pac2 = 0;*/
	
	
	
	

	/*INIT TOUCH KEY*/
	//The Time slot counter overflow time setup is (256-TKTMR[7:0]) × 32
	_tktmr = 100;
	
	/*touch key module 16-bit counter clock source selection	
		00: fSYS /1
	  	01: fSYS /2
	  	10: fSYS /4
	  	11: fSYS /8*/
	_tk16s0 =1;
	_tk16s1 =1;
	 
	 /*touch key OSC frequency selection
		00: 500kHz
		01: 1000kHz
		10: 1500kHz
		11: 2000kHz*/
	_tkfs0 = 1;
	_tkfs1 = 1;
	
	/*Reference Oscillator internal capacitor selection
		TKM0RO[9:0] × 50pF / 1024.*/
	_tkm0rol = 200;
	_tkm0roh = 0;
	
	/*Multiplexer Key Select*/
	/*_m0mxs0 =1;
	_m0mxs1 =1;	//key4*/
	
	_m0mxs0 =0;
	_m0mxs1 =0;	//key1
	
	
	/*Multi-frequency function control*/
	//_m0dfen = 1; //enabled
	_m0dfen = 0; //disabled
	/*Filter function control*/
	_m0filen = 1; //enabled
	//_m0filen = 0; //disabled
	
	/*C to F oscillator frequency-hopping function control*/
	_m0sofc = 1;//Controlled by hardware
	//_m0sofc = 0;//Controlled by software
	/*Selecting key oscillator or reference oscillator frequency as the
		C to F oscillator is controlled by software*/
	//M0SOF2~M0SOF0
 	_m0sof2=1;
 	_m0sof1=0;
 	_m0sof0=0;
	/*Time Slot counter Select*/
	//_m0tss = 1;//fsys/4
	_m0tss = 0;//Reference Oscillator
	/* Reference Oscillator control*/
	_m0roen = 1; //enabled
	
	/*key oscillator control*/
	_m0koen = 1; //enabled
	
	/*I/O Pin or Touch Key 1..4 Function Select*/
	//_m0k1io =1;
	
	//_m0k4io =1;
	_m0k1io =1;
	

	
	/*INIT TOUCH KEY INTERRUPT */
	//_emi = 1; //global interrupt enable
	//_tkme = 1; //touch interrupt enable
}

void main()
{
	init();
	Delay(10000);
	//LIGHT=1;
	
	_tkst=0;
	for(i=0; i <20 ; i++)
	{
		_m0roen = 1; //Reference Oscillator enable
	 	_m0koen = 1; //key oscillator enable
		_tkst =1;   
			
		while( !_tkrcov ){};//wait for tkrcov flag
		
		touch= (unsigned int )((_tkm016dh <<8) | _tkm016dl) ;
		touchThreshold += touch;
		
		_tkrcov = 0;
		_tkst=0;
		
		
		Delay(2000);
	}
	touchThreshold = touchThreshold /20;
	
	//LIGHT =0;
	
	_m0roen = 1;//Reference Oscillator enable
 	_m0koen = 1;//key oscillator enable
	_tkst =1; 
	while(1)
	{ 	
		GCC_CLRWDT();// reset WDT
		
			
 		if( _tkrcov )//touch update
 		{
 			touch= (unsigned int )((_tkm016dh <<8) | _tkm016dl) ;
			_tkrcov = 0;
			_tkst=0;
			
			_m0roen = 1;//Reference Oscillator enable
		 	_m0koen = 1;//key oscillator enable
			_tkst =1; 
 		}
 		
 		
 		
 		if(touch>alltouch+15  || touch<alltouch-15 )alltouch=touch;
 		//alltouch=touch;
 		/*alltouch=(alltouch-arraytouch[0]+touch)/5;
 		
 		arraytouch[0]=arraytouch[1];
 		arraytouch[1]=arraytouch[2];
 		arraytouch[2]=arraytouch[3];
 		arraytouch[3]=arraytouch[4];
 		arraytouch[4]=touch;
 		*/
 		/*for( t=0; t<4 ;t++)
	    {
	       arraytouch[t]=arraytouch[t+1];
	       
	       alltouch += arraytouch[t];
	       
	    }
	    
	    
 		arraytouch[4]=touch;
 		alltouch += arraytouch[4];
 		alltouch = alltouch /5;*/
 		
 		
 		
 		/*Delay(1);
 		n++;
 		if(n>200){
 			n=0;
	 		for(j=0;j<(alltouch-4500) ;j++)
		    {
		       _pa2 = ~ _pa2;
		       Delay(1);
		    }
 		}*/
 		 	
	 	///////////////////////////touch process/////////////////////////
 		if(alltouch < touchThreshold -120 )
 		{
 			fingerCounter++;
 			if(fingerCounter>5000){
 				fingerCounter=0;
 				touchThreshold=alltouch;
 			}
 			
 		}
 		else if(alltouch > touchThreshold -10 )
 		{
 			
 			f++;
 			if(f>100){
 				fingerCounter=0;
 			}
 			if(f>1000){
 				f=0;
 				touchThreshold=alltouch;
 			}
 		}
 		if(fingerCounter == FINGER_FOCUS_ON)
 		{
 			
 			out1 = ~ out1;
 			
 			
 		}
 		/////////////////////////////////////////////////////////////////
 	}
} 


