#include "BS83B04A-4.h"
#include "DELAY.h"

#define LED1 _pa4
#define LED2 _pa3
#define LED3 _pa2
#define LED4 _pa5
#define OUTPUT() _pac5=0;_pac4=0;_pac3=0;_pac2=0;

#include "TOUCH.h"



unsigned char in;






void main()
{
	
	/////////////////////////////////////////////////////////
	
	
	
	_ints1=0;
	_ints0=1;
	_inte=1;
	
	
	
	
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
 /*TuochKeyInit();
 delay_ms(1);
 CalibrTuoch();*/
 
 while(1)
 {
 	GCC_CLRWDT();
 	
 	/*unsigned long i_u;
 	
 	for(in=0;in<20;in++)
    {
		for(i_u=0;i_u<2;i_u++)
	    {
	    	GCC_CLRWDT();
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        
	        
	         
	    }
		LED1=1;
		for(i_u=0;i_u<2;i_u++)
	    {
	    	GCC_CLRWDT();
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        
	        
	         
	    }
		LED1=0;
    }
    for(in=0;in<20;in++)
    {
		for(i_u=0;i_u<3;i_u++)
	    {
	    	GCC_CLRWDT();
	        asm("nop");
	        asm("nop");
	        asm("nop");
	        asm("nop");
	         
	    }
		
    }
 	*/
 	/*Key_Select();
 	Key_Touch();*/
 }
}
 