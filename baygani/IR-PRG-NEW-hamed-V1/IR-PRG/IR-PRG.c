#include "HT66F002.h"
#include "DELAY.h"
#include "IO.h"
#include "STM.h"
#include "TIMEBASE.h"
#include "EXINT.h"

void main()
{
 Frist=0;
 CountEdge=0; 
 Zero_Time=0;
 Zero_Flag=0;
 Trig=0;
 Triger=0;
 Shift=0;
 Set=0;
 Count=0;
 CountSW=0;
 Backup=0;
 Detect=0;
 IO_INIT();
 STM_INIT();
 TB0_INIT();
 TB1_INIT();
 EX_INIT();

 while(1)
 {
 	_clrwdt();
 	
 	/*while(1)
 	{
	 	_clrwdt();
		while(IRREC==1){_clrwdt();}
		while(IRREC==0){Count++;Delay_1ms();}
		if(Count>30)
	 	{
	 		
	 		Set++;
	 		if(Set==1)
	 		{
				LED_1=1;
				LED_2=0;
				Shift=2;
				Triger=60;
	 		}
	 		else
	 		{
				LED_1=0;
				LED_2=1;
				Shift=1;
				Triger=15;
				Count=0;
				Set=0;
	 		}
 			Count=0;
 			Delay_ms(200);
 			Detect=1;
 			break;
		}
		else
		{
			Count=0;
			Detect=0;
		}
		
 	}
	while(Detect==1)
	{
		if(IRREC==1)
		{
			Count++;
			if(Count>250)
			{
				Detect=0;
				Count=0;
			}
			Delay_ms(1);
		}
		else
		{
			Count=0;
		}
	}	*/
 }		
 	
 /*	if(Detect==1 & Frist==0)
 	{
 		Frist=1;
 		Set++;
 		if(Set==1)
 		{
				LED_1=1;
				LED_2=0;
				Shift=2;
				Triger=60;
 		}
 		else
 		{
				LED_1=0;
				LED_2=1;
				Set=0;
				Shift=1;
				Triger=15;
 		}
 		
 		OK=0;
 	}*/
 
}