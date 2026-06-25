#include "HT66F002.h"
#include "defines.h"



//#define irR	   		_pa1
	
ulong  Value;
ulong  ValueThreshold;
ulong fingerCounter ;
//int i,j,n,t;

int f , i;


void main()
{



	_pac5 = 0;
	_pac7 = 0;
	_pac1 = 0;
	
	_pac6 = 1;
	
	
	out1=0;
	
	
	//adc  an0
	_pas0 = 1;
	_pas1 = 1;
	
	
	/* select AD convert data alignment right	*/
	_adrfs = 1;
	
	/* select ADC clock fsys/32 */
	_sacks2 = 0; _sacks1 = 1; _sacks0 = 1;

	// ADC reference voltage selection
	_savrs3 = 0; _savrs2 = 0; _savrs1 = 0; _savrs0 = 0;
		
	//adc enable
	_enadc=1;
	
	/* enable ADC interrupt */
	_adf = 0;
	_ade = 1;
	
	/* enable global interrupt */
	_emi = 1;
	
	
	
	for(i=0; i <20 ; i++)
	{
			
		_sacs0=0;
		_sacs1=0;
		
		
		/* start AD converter */
		_start = 0; _start = 1; _start = 0;
		
		/* waitting AD conversion finish */
		while(1 == _adbz);	
		
		/* get the AD conversion value */
		
		Value= (unsigned int )((_sadoh <<8) | _sadol) ;
		ValueThreshold+=Value;
		
		_delay(100);
	}
	ValueThreshold = ValueThreshold /20;
	
	
	while(1){
		
		_clrwdt();
		
		
		
		//ADC input channels selection
		_sacs0=0;
		_sacs1=0;
		
		
		/* start AD converter */
		_start = 0; _start = 1; _start = 0;
		
		/* waitting AD conversion finish */
		while(1 == _adbz);	
		
		/* get the AD conversion value */
		
		Value= (unsigned long )((_sadoh <<8) | _sadol) ;
		
		
		for(i=0; i <Value ; i++)
		{
			_clrwdt();
			out2= ~out2;
			_delay(10);
		}
		
		for(i=0; i <5 ; i++)
		{
			_clrwdt();
			_delay(100000);
		}
		
		//if(Value > 200 )out1=0;
		//if(Value < 200 )out1=1;
 		/*{
 			out1= ~out1;
 		}*/
 		
 		
 		
 		/*if(Value < ValueThreshold - 20 )
 		{
 			fingerCounter++;
 			if(fingerCounter>30000){
 				fingerCounter=0;
 				ValueThreshold=Value;
 			}
 			
 		}
 		else if(Value > ValueThreshold -5 )
 		{
 			
 			f++;
 			if(f>40){
 				fingerCounter=0;
 			}
 			if(f>1000){
 				f=0;
 				ValueThreshold=Value;
 			}
 		}
 		if(fingerCounter == FINGER_FOCUS_ON)
 		{
 			
 			out1= ~out1;
 			
 			
 		}*/
	}
}