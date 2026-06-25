#include "BS83B04A-4.h"



void delay()
{
	unsigned int a=0 , i;
	
	for(i=0 ; i<=65535 ; i++)
	{
		a++;
	}
	_clrwdt();
}


void main()
{
	_pac3=0;
	
	while(1)
	{
		_pa3=1;
		delay();
		_pa3=0;
	    delay();	
	}

}

