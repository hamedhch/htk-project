#include "BS83B04A-4.h"

unsigned char eeprom_read(unsigned char addr)
{
	unsigned char data;
	_eea = addr;				
	_mp1 = 0x40;
	_bp  = 0x01;	
	_iar1 |=0x02;				
	_iar1 |=0x01;				//active READ 
	while((_iar1 & 0x01) !=0);	//wait read end
	data = _eed;				//EEPROM data
	
	_iar1 &= 0xfD;				//disable RDEN	

     return data;
}

void eeprom_write(unsigned char data,unsigned char addr)
{
	_emi = 0;
	_eea = addr;				//EEPROM address bit 5 ~ bit 0 internal
	_eed = data;				//EEPROM data bit 7 ~ bit 0 internal
	_mp1 = 0x40;
	_bp  = 1;
	_iar1	|=	0x08;			//enable WREN (write enable)
	_iar1	|=	0x04;			//active write 
	
	_nop();
	while((_iar1 & 0x04) !=0);	//wait write end
	
	_iar1 &= 0xf7;				//disable WREN	
	
	_emi = 1;  
}


void main()
{
	eeprom_write(0x01,0x20);
	GCC_DELAY(1000);
 while(1)
 {
 	eeprom_read(0x01);
 	GCC_DELAY(1000);
 	GCC_DELAY(1000);
 	
 }

}