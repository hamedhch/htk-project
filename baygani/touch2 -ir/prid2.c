#include "BS83B04A-4.h"
#include "defines.h"

///////////////////////////////////////////////////////

volatile int ncount=0;
volatile int counter=0;
volatile int counter2=0;
volatile int counter3=0;

volatile long counterir2=0;
volatile long counterir=0;
volatile int m=0 ;
volatile bit q=0 , o=0;


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
		}else{
			out1= 0;
		}
		
	}
	
	if(q==0 ){
		out1= 0;
		if(counter2<=160)counter2=counter2+6;
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
		counter2=0;
		
	}
	if(q==0){
		
		if(counter==counter2){
			out1=1;
		}
		counter3=ncount;
	}
	
	
	
	
	//////////////////////////////////////ir
	
	counterir++;
	
	if(Rir==0)m=1;
	if(Rir==1 && m==1){
		m=0 ;
		counterir2++;
	}
	
	
	
	if(counterir%32==0 ){
		ledir=~ledir;
	}
	
	
	
	if(counterir>800){
		
		
		ledir=0;
		
		counterir=0;
		
		if(counterir2>10 && counterir2<20 && o==0){
			o=1;
			q=~q;
			
		}
		if(counterir2<10 || counterir2>20){
			o=0;
		}
		counterir2=0;
	}
	
	
}

////////////////////////////////////////////////////////



void init()
{
	
	
	
	
	
	
	/////////////////////////////////////////////////////////
	
	
	
	_ints1=1;
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
    
	_tpsc0=1;
    _tpsc1=0;
    _tpsc2=0;
    
    
    _emi=1;
    _hlclk=1;
    
    _tf=1;
    _te=1;
    
    
    
    
	_pac1 = 0;
	_pac2 = 0;
	_pac3 = 0;
	_pac4 = 0;
	
	
	
	_pac5 = 1;
	
	
}



void main()
{
	init();
	

	while(1)
	{ 	
		GCC_CLRWDT();// reset WDT
		
 	}
} 


