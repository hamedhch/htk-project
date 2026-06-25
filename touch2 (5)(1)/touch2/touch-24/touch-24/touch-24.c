#include "BS83B04A-4.h"
#include "DELAY.h"

#define BIZ _pa5
#define out _pa1
#define data_rf _pa0

#define OUTPUT() _pac5=0;_pac1=0;_pac0=1;


#include "TOUCH.h"










void main()
{
	
	
	/////////////////////////////////////////////////////////
	
	
	
	_ints1=0;
	_ints0=0;
	_inte=0;
	
	
	
	
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
    
    
    
 OUTPUT();
 delay_ms(1);
 TuochKeyInit();
 delay_ms(1);
 CalibrTuoch();
 
 BIZ=0;
 out=1;
 
 while(1)
 {
 	GCC_CLRWDT();
 	Key_Select();
 	Key_Touch();
 }
}
 