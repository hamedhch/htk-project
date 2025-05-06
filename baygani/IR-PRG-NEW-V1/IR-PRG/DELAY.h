
#define Off 0
#define On 1

// Delay 10 Micro Seccond
void Delay_10us()
{

 bit i_u;

    for(i_u=0;i_u<1;i_u++)
    {
    	_nop();
    	_nop();
    	_nop();
    	_nop();
    	_clrwdt();
         
    }
      
}

void Delay_Chek()
{
  unsigned char i;
    for(i=0;i<10;i++)
    {
		Delay_10us();
    }
}

// Delay Mili Seccond
void Delay_1ms()
{
  unsigned char i_m;
    for(i_m=0;i_m<100;i_m++)
    {
    	_nop();
    	_nop();
    	_nop();
    	_nop();
    	_clrwdt();
    }
}

void Delay_ms(unsigned int ms)
{
  unsigned int i_m;
    for(i_m=0;i_m<ms;i_m++)
    {
		Delay_1ms();
    }
}

