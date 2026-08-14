#include "BS83B04A-4.h"
#include "DELAY.h"

#define BIZ _pa5
#define out _pa1
#define data_rf _pa0
#define test_rf _pa3

#define OUTPUT() _pac5=0;_pac1=0;_pac0=1;_pac3=0;


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
 
 BIZ=0;
 out=1;
 
 
 
 LearnRF=0;
 Lock=0;
 
 remote_count = eeprom_read(EE_COUNT_ADDR);
    
    // ÇÑ ÍÇÝÙå ÎÇã ÈÇÔÏ (0xFF) íÇ ÚÏÏ ÛíÑãäØÞí ÈÇÔÏ¡ ÕÝÑÔ ãí˜äíã
    if(remote_count > MAX_REMOTES) {
        remote_count = 0;
        eeprom_write(0, EE_COUNT_ADDR);
    }
 
 GCC_DELAY(1000);
 
 
 while(1)
 {
 	GCC_CLRWDT();
 	Key_Select();
 	Key_Touch();
 	
 	
 	
 }
}
 
 
 
 
 
 
 