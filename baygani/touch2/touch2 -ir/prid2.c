#include "BS83B04A-4.h"
#include "defines.h"

///////////////////////////////////////////////////////



volatile int codread[10];
volatile int ncount=0;
volatile long counter3=0;
volatile long counter2=0;
volatile long counter=0;
volatile int m=0 ;
volatile bit q=0;


//////////////////////////////////////////////////////


void __attribute((interrupt(0x04))) int0(void)
{
	/*counter++;
	q=~q;*/
	out=~out;
}




///////////////////////////////////////////////////////





void __attribute((interrupt(0x0C))) timer(void)
{
	
		/*if(counter>100){
			counter=0;
			out=~out;
		}
		if(q){
			
			ledir=1;
			ledir=1;
			ledir=1;
			ledir=1;
			ledir=1;
			ledir=1;
			
			ledir=0;
		
			}*/
	
	
}

////////////////////////////////////////////////////////



void init()
{
	
	
	
	
	
	/////////////////////////////////////////////////////////
	
	
	
	_ints1=0;
	_ints0=1;
	_inte=1;
	
	
	/////////////////////////////////////////////////////////
	
	
	
	/*_ws2=1;
	_ws1=0;
	_ws0=0;
	
	_we0=0;
	_we1=1;
	_we2=0;
	_we3=1;
	_we4=0;
	
	_fsyson=1;
	_wrf=1;*/
	
	
	/////////////////////////////////////////////////////////
	
	_ts=0;
    _ton=1;
    
	_tpsc0=0;
    _tpsc1=0;
    _tpsc2=0;
    
    
    _emi=1;
    _hlclk=1;
    
    _tf=1;
    _te=1;
    
    
    
    
	_pac3 = 0;
	_pac5 = 0;
	
	out=0;
}



void main()
{
	init();
	

	while(1)
	{ 	
		GCC_CLRWDT();// reset WDT
		ledir=1;
		
 	}
} 


