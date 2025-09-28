#include "BS83B04A-4.h"
#include "DELAY.h"

#define LED1 _pa4
#define LED2 _pa2
#define LED3 _pa0
#define OUTPUT() _pac4=0;_pac2=0;_pac0=0;

#include "3ch-3key.h"





void main()
{
	

	
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
   
 OUTPUT();
 delay_ms(1);
 TuochKeyInit();
 delay_ms(1);
 CalibrTuoch();
  
    /*LED1=q2;
	LED3=!q2;*/
    
    LED1=1;
    LED2=1;
    LED3=1;
    
 while(1)
 {
 	GCC_CLRWDT();
 	Key_Select(i);
 	i++;if(i>=3)i=0;
 	Key_Touch();
 }
}
 