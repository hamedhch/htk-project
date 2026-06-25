#include "BS83B04A-4.h"

#define out1		_pa4
#define Rir	        _pa5

void main()
{
	
	_pac4 = 0;
	_pac5 = 1;
	
	while(1)
	{ 
		GCC_CLRWDT();
		if(Rir==0)out1=0;
		if(Rir==1)out1=1;
	}
}