#include "BS83B04A-4.h"


#define LED1 _pa4
#define LED2 _pa3
#define LED3 _pa2

#define pin _pa1

#define OUTPUT() _pac4=0;_pac3=0;_pac2=0;
#define INPUT() _pac1=1;_papu1=1;


#include "DELAY.h"
#include "2ch-1key.h"


void main()
{
	
	/////////////////////////////////////////////////////////
	
	_ints1=1;
	_ints0=1;
	_inte=1;
	
	
 /////////////////////////////////////////////////////////
	
	_ts=0;
    _ton=1;
    
	_tpsc0=0;
    _tpsc1=1;
    _tpsc2=0;
    
    
    _emi=1;
    _hlclk=1;
    
    _tf=1;
    _te=1;
    
    _pa1;
    _pac1=1;
    _papu1=1;
    
 OUTPUT();
 INPUT();
 delay_ms(1);
 TuochKeyInit();
 delay_ms(1);
 CalibrTuoch();
 
 while(1)
 {
 	GCC_CLRWDT();
 	Key_Select();
 	Key_Touch();
 	
 	
 }
}
 