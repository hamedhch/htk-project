#include "BS83B04A-4.h"

volatile int counter=0;






void __attribute((interrupt(0x0C))) timer(void)
{
	counter++;
	if(counter==1000){
		counter=0;
		_pa1= ~_pa1;
		
	}
}




void main()
{
    _ts=0;
    _ton=1;
    
    _tpsc0=1;
    _tpsc1=0;
    _tpsc2=1;
    
    _emi=1;
    _smod=1;
    _hlclk=1;
    
    _tf=1;
    _te=1;
    
	_pac1 = 0;
	
	while(1){
		
		_clrwdt();
		
	
	}


}