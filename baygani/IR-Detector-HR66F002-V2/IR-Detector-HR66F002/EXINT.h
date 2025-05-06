#define EMI(x) _emi=x; //Enable Master Interrupt: On --> 1 , Off --> 0

#define EXI_E(x) _inte=x; //Enable Ex Interrupt: On --> 1 , Off --> 0
#define EXI_F(x) _intf=x; //Flag Ex Interrupt: Flag --> 1 , Clear --> 0

//#define EXI_EDGE() _int0s1 = 0; _int0s0 = 0; //Disable Interrupt
//#define EXI_EDGE() _int0s1 = 0; _int0s0 = 1; //Rising Edge Interrupt
//#define EXI_EDGE() _int0s1 = 1; _int0s0 = 0; //Falling Edge Interrupt
#define EXI_EDGE() _int0s1 = 1; _int0s0 = 1; //Dual Edge Interrupt

//#define EXI_PIN(x) _pac5=0; _papu5=x; _intps1=0; _intps0=0;// PA5 --> PIN Interrupt
#define EXI_PIN(x) _pac2=1; _papu2=x; _intps1=0; _intps0=1;// PA2 --> PIN Interrupt
//#define EXI_PIN(x) _pac3=1; _papu3=x; _intps1=1; _intps0=0;// PA3 --> PIN Interrupt
//#define EXI_PIN(x) _pac7=1; _papu7=x;_intps1=1; _intps0=1; // PA7 --> PIN Interrupt

//#define PIN _pa5
#define PIN _pa2
//#define PIN _pa3
//#define PIN _pa7

#pragma vector ISR_EXINT @0x04

void EXININIT()
{
	EXI_EDGE();
	EXI_PIN(0);
	EXI_E(1);
	EXI_F(0);
	EMI(1);
}
	
	
void ISR_EXINT(void)
{
	Backup=Counter;
	
	Counter=0;
	
	
//	m++;
//	if(m>=50){
//		
//		TRIAC=0;
//	}
//	if(m>=100){
//		
//		m=0;
//		TRIAC
//		=1;
//	}
	
	
		
	if(Set==1){
		
		Counter_Off=Counter_Off-1;
		
		if(Counter_Off<0){
			Counter_Off=-2;
			TRIAC= 0;
		}else{
			TRIAC= 1;
		}
		
	}
	
	if(Set==0)
	{
		TRIAC=1;
		if(Counter_On<=40)
		{
			Counter_On=Counter_On+1;
		}
	}
}
