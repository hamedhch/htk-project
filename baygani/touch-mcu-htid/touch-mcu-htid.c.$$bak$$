//#include "BS83B04A-4.h"
//#include "BS66F340.h"
#include "BS83B04A_LIBV413.h"
#include "TKS_GLOBE_VARIES.h"

void clock_init();
void self_touch_init();

void main()
{	
	clock_init();
	self_touch_init();
	BS83B04A_LIBV413_INITIAL(); 
	
	_pac3=0;
	_pa3=0;
	
	int a;
	
	while(1)
	{ 
		BS83B04A_LIBV413();  
		_clrwdt();	
		
		if(KEY_DATA[3] & 0x10){
			if(a==0){
			_pa3=!_pa3;
			a=1;
			
			}
		
		}
		else
		a=0;
		
		
		
	}

}

void clock_init()
{
	//_fsyson =0;
	
	//_fhs = 0;
//	_hircs0 = 1;
//	_hircs1 = 0;
	
	//while(_hirsf == 0);
}

void self_touch_init()
{
	GLOBE_VARIES[0]=GlobeOptionA;
	GLOBE_VARIES[1]=GlobeOptionB;
	GLOBE_VARIES[2]=GlobeOptionC;
	
    GLOBE_VARIES[2 + 1] = Key4Threshold; 
    
  KEY_IO_SEL[0] = IO_TOUCH_ATTR & 0xF;
  KEY_IO_SEL[1] = (IO_TOUCH_ATTR >> 8) & 0xF;
  KEY_IO_SEL[2] = (IO_TOUCH_ATTR >> 16) & 0xF;
  KEY_IO_SEL[3] = (IO_TOUCH_ATTR >> 24) & 0xF;  
  KEY_IO_SEL[4] = IO_TOUCH_ATTR2 & 0xF ;    

}