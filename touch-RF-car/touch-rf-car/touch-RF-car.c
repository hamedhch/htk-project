#include "BS83B04A-4.h"
#include "DELAY.h"

//#define LED1 _pa4
//#define LED2 _pa3
//#define LED3 _pa2
//#define OUTPUT() _pac4=0;_pac3=0;_pac2=0;_pac1=0;
//
//#define BUZ _pa1

#define DATA _pa2

#define BUZ _pa0

#define OUTPUT()_pac2=0;_pac0=0;


#include "TOUCH.h"










void main()
{
	
	
	_ts=0;
    _ton=1;
    
	_tpsc0=1;
    _tpsc1=0;
    _tpsc2=0;
    
    
    _emi=1;
    _hlclk=1;
    
    _tf=1;
    _te=1;
    
    
    
 OUTPUT();
 
 BUZ=0;
 DATA=1;
 
 delay_ms(1);
 TuochKeyInit();
 delay_ms(1);
 CalibrTuoch();
 
 BUZ=0;
 
 while(1)
 {
 	GCC_CLRWDT();
 	
 	Key_Select(i);
 	i++;if(i>=4)i=0;
 	Key_Touch();
 }
}
 