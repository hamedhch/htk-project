#include "BS66F340C.h"


#include "DELAY.h"

#include "IO.h"

#include "TIMEBASE.h"


void main()
{
	delay_ms(1);
	initMatrix();
 	delay_ms(1);
	TB0_INIT();
 	delay_ms(1);
	TB1_INIT();
 	delay_ms(1);
	
	
	while(1)
	 {
	 
	 
	 	GCC_CLRWDT();
	 	
		 
	 }
}