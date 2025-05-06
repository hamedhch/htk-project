#include "HT66F002.h"
#include "DELAY.h"
#include "IO.h"
#include "TIMEBASE.h"
#include "EXINT.h"

volatile unsigned long Timer ,Puls_on,Puls_off;
volatile unsigned char Detect,Puls_Count,Lock,Pq;

unsigned char in;


void main()
{
 IO_INIT();
 Delay_ms(100);
 TB0Init();
 EXININIT();
 Detect=0;
 Timer=0;
 Puls_Count=0;
 Set=0;
 while(1)
 {
	_clrwdt();
	
	
		
    for(in=0;in<20;in++)
    {
		Delay_10us();
		IRTRN=1;
		Delay_10us();
		IRTRN=0;
    }
    for(in=0;in<20;in++)
    {
		Delay_10us();
		
    }
	/*
	IRTRN=1;
	Delay_Chek();
	if(IRREC==1){
		Puls_on++;
		Puls_Count++;
		Pq=1;
	}else
	{
		Puls_off++;
		Puls_Count=0;
		Pq=0;
	}
	IRTRN=0;
	Delay_Chek();
	if(IRREC!=1){
		Puls_off++;
		Puls_Count++;
		if(Pq==1){
			Puls_on=0;
			Puls_off=0;
		}
	}else
	{
		Puls_on++;
		Puls_Count=0;
	}
	
	
	if(Puls_Count>100 & Lock==0)
	{
		Lock=1;
		Puls_on=0;
		Puls_off=0;
		Set++;
		if(Set==1)
		{
			LED_1=1;
			LED_2=0;
		}
		else
		{
			LED_1=0;
			LED_2=1;
			Set=0;
		}

	}
	
	if((Puls_on>4000 || Puls_off>4000 ))
	{
		Lock=0;
		Puls_Count=0;
	}
			*/
			
			
	/*
 	if(IRREC==1)
 	{
 		Delay_Chek();
 		if(IRREC==1)
 		{
			Puls_Count++;
			if(Puls_Count>50 )
			{
				Detect=1;
			}
 		}
 		else
 		{
 			Puls_Count=0;
 		}
 	}
	if(Detect==1)
	{
		Timer++;
		if(Timer>500 & Timer<510 & Lock==1)
		{
			Lock=0;
			Set++;
			if(Set==1)
			{
				LED_1=1;
				LED_2=0;
				//TRIAC= 1;
			}
			else
			{
				LED_1=0;
				LED_2=1;
				Set=0;
				//TRIAC= 0;
			}
			//Detect=2;
		}
		Delay_10us();Delay_10us();Delay_10us();Delay_10us();Delay_10us();
		Delay_10us();Delay_10us();Delay_10us();Delay_10us();Delay_10us();
		if(Timer>600 & IRREC==0)
		{
			Timer=0;
			Lock=1;
			Detect=0;		
		}
		if(IRREC==1 & Lock==0)
		{
			Timer=550;
		}
		
		
	}
*/
 		/*if(Timer>10000)
 		{
 			Secend++;
 			Timer=0;
 			if(Secend>20)
 			{
 				Secend=0;
 				Detect=0;
 				LED_1=0;
 				LED_2=1;
 			}
 		}
 	}*/
 }				
}