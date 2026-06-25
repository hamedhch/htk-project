#include "BS83B04A-4.h"
#include "defines.h"

///////////////////////////////////////////////////////
volatile ulong touchThreshold=0;
volatile int i,j,n;

volatile ulong f;
volatile ulong fingerCounter = 0;
volatile uint touch;
volatile ulong  alltouch=0;



volatile int ncount=0;
volatile int counter=0;
volatile int counter2=0;
volatile int counter3=0;
volatile int m=0 ;
volatile bit q=0;


//////////////////////////////////////////////////////


void __attribute((interrupt(0x04))) int0(void)
{
	ncount=counter;
	
	counter=0;
	
		
	if(q==1){
		
		counter3=counter3-2;
		
		if(counter3<0){
			counter3=-1;
			out1= 1;
			//_ton=0;
		}else{
			out1= 0;
		}
		
	}
	
	if(q==0 ){
		out1= 0;
		if(counter2<=160){
			counter2=counter2+4;
		}
		if(counter2>160){
			//_ton=0;
		}
	}
}




///////////////////////////////////////////////////////





void __attribute((interrupt(0x0C))) timer(void)
{
	
	counter++;
	
	
	
	if(q==1 ){
		
		if(counter>=counter3){
			out1=1;
		}
		counter2=counter3;
		
	}
	if(q==0){
		
		if(counter==counter2){
			out1=1;
		}
		counter3=ncount;
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
	
	
	
	_ints1=1;
	_ints0=1;
	_inte=1;
	
	
	
	
		
	
	/////////////////////////////////////////////////////////
	
	_ts=0;
    _ton=1;
    
	_tpsc0=1;
    _tpsc1=0;
    _tpsc2=0;
    
    
    _emi=1;
    _hlclk=1;
    
    _tf=1;
    _te=1;
    
	
	/////////////////////////////////////////////////////////
	
	/*INIT SYS CLOCK*/
	_smod = 1; //8MHZ
	
	/*INIT I/O PORTS*/
	
	_pac4 = 0;
	_pac2 = 0;
	
	

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
	_tkm0roh = 0
	;
	
	/*Multiplexer Key Select*/
	_m0mxs0 =0;
	_m0mxs1 =0;	//key2
	
	
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
		
		_m0roen = 1;//Reference Oscillator enable
	 	_m0koen = 1;//key oscillator enable
		_tkst =1; 
			
		GCC_CLRWDT();
		
		while( !_tkrcov ){};
		
 		touch= (unsigned int )((_tkm016dh <<8) | _tkm016dl) ;
		_tkrcov = 0;
		_tkst=0;
 		
 		
 		
 		
 		if(touch>alltouch+10  || touch<alltouch-10 )alltouch=touch;
 		
 		
 		
 		/*n++;
 		if(n>10){
 			n=0;
	 		for(j=0;j<(alltouch-5500) ;j++)
		    {
		       _pa2 = ~ _pa2;
		       //Delay(1);
		    }
 		}*/
 		 	
	 	///////////////////////////touch process/////////////////////////
 		if(alltouch < touchThreshold - 50 )
 		{
 			f=0;
 			fingerCounter++;
 			if(fingerCounter>5000){
 				fingerCounter=0;
 				touchThreshold=alltouch;
 			}
 		}
 		
 		else if(alltouch > touchThreshold -20 )
 		{
 			
 			
 			f++;
 			fingerCounter=0;
 			
 			if(f>10){
 				
 			}
 			if(f>5000){
 				f=0;
 				touchThreshold=alltouch;
 			}
 		}
 		if(fingerCounter == FINGER_FOCUS_ON)
 		{
 			//_ton=1;
 			
 			if(q==0 && m==0) q=1 , m=1;
 			if(q==1 && m==0) q=0 , m=1;
 			
 			m=0;
 		}
 		/*if(alltouch < touchThreshold - 50 )
 		{
 			fingerCounter++;
 			
 			
 			
 			if(fingerCounter>30000 && q==0){
 				fingerCounter=0;
 				touchThreshold=alltouch;
 			}
 			
 		}
 		else if(alltouch > touchThreshold -10 )
 		{
 			f++;
 			
 			fingerCounter=0;
 			
 			if(fingerCounter >= FINGER_FOCUS_ON  && fingerCounter <= FINGER_FOCUS_ON+5000  )
	 		{
	 			q = ~ q;
	 		}
	 		
 			if(f>50000){
 				f=0;
 				touchThreshold=alltouch;
 			}
 		}
 		*/
 		/////////////////////////////////////////////////////////////////
 	}
} 


