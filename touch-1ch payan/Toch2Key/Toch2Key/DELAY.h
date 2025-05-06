
#define Off 0
#define On 1

// Function Tag
void delay_10us(unsigned long count);
void delay_ms(unsigned long count);

// Delay 10 Micro Seccond
void delay_10us(unsigned long count_u)
{

 unsigned long i_u;

    for(i_u=0;i_u<count_u;i_u++)
    {
    	GCC_CLRWDT();
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
         
    }
      
}

void delay_us(unsigned long count_u)
{

 unsigned long i_u;

    for(i_u=0;i_u<count_u;i_u++)
    {
    	GCC_CLRWDT();
        asm("nop");    
    }
      
}

// Delay Mili Seccond
void delay_ms(unsigned long count_m)
{
  unsigned long i_m;
	count_m = count_m * 100;
    for(i_m=0;i_m<count_m;i_m++)
    {
    	GCC_CLRWDT();
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
    }

}

