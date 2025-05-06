#include "BS66F340C.h"


#include "DELAY.h"

#include "IO.h"

#include "TIMEBASE.h"

#include "UART.h"


void main()
{
	delay_ms(1);
	initMatrix();
 	delay_ms(1);
	TB0_INIT();
 	delay_ms(1);
	TB1_INIT();
 	delay_ms(1);
	UART_INIT(0x33);
 	delay_ms(1);
	
	
	while(1)
	 {
	 
	 
	 	GCC_CLRWDT();
	 	
		UART_FUNCTION();
	 }
}