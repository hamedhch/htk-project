#include "BS66F340C.h"


#include "DELAY.h"

#include "IO.h"

#include "ADC.h"

#include "TIMEBASE.h"


#include "PTM.h"

#include "TOUCH.h"

void main()
{
	delay_ms(1);
	ADC_INIT();
	IO_INIT();
 	delay_ms(1);
	TB0_INIT();
 	delay_ms(1);
	TB1_INIT();
 	delay_ms(1);
	PTMRINIT();
 	delay_ms(1);
	TuochKeyInit();
 	delay_ms(1);
	CalibrTuoch();
	
	
	LED_B1=q1;
	LED_W1=!q1;
	
	LED_B2=q2;
	LED_W2=!q2;
	
	Dot=0;
	
	while(1)
	 {
	 
	 	if(inpout!=0)Litgh=1;
		else Litgh=0;
	 	
	 	GCC_CLRWDT();
	 	//CalibrTuoch();
	 	
	 	Key_Select(iq);
	 	iq++;if(iq>=2)iq=0;
	 	Key_Touch();
	 	
	 	
	 }
}