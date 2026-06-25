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
	/*INIT SYS CLOCK*/
	_smod = 1; //8MHZ
	
	/*INIT I/O PORTS*/
	_pac3 = 0; //PA.7 is output
	_pac2 = 0; //PA.6 is output
	_pac5 =1; //PA.5 is input
	
	_papu5=1; //PA.5 is Pulled High

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
	_m0mxs0 =1;
	_m0mxs1 =1;	//key2
	
	
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
	_m0k4io =1;
	

	
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
 		
 		
 		
 		alltouch=0;
 		
 		for( t=0; t<19 ;t++)
	    {
	       arraytouch[t]=arraytouch[t+1];
	       
	       alltouch += arraytouch[t];
	       if(arraytouch[t]< min ){min=arraytouch[t];}
	       if(arraytouch[t]> max ){max=arraytouch[t];}
	    }
	    
	    
 		arraytouch[19]=touch;
 		alltouch += arraytouch[19];
 		alltouch = alltouch /20;
 		
 		
 		
 		/*Delay(1);
 		n++;
 		if(n>50){
 			n=0;
	 		for(j=0;j<(alltouch-4500) ;j++)
		    {
		       _pa2 = ~ _pa2;
		       Delay(1);
		    }
 		}*/
 		 	
	 	///////////////////////////touch process/////////////////////////
 		if(alltouch < touchThreshold -40 )
 		{
 			fingerCounter++;
 			if(fingerCounter>1500){
 				fingerCounter=0;
 				touchThreshold=alltouch;
 			}
 			
 		}
 		else if(alltouch > touchThreshold -30 )
 		{
 			fingerCounter=0;
 			f++;
 			if(f>500){
 				f=0;
 				touchThreshold=alltouch;
 			}
 		}
 		if(fingerCounter == FINGER_FOCUS_ON)
 		{
 			LIGHT = ~ LIGHT;
 			
 			//Delay(500);
 			
 		}
 		/////////////////////////////////////////////////////////////////
 	}
} 


