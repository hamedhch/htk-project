
//Select Fsys For ADC
//#define ADC_CLK() _sacks2 = 0; _sacks1 = 0; _sacks0 = 0;//Fsys/1
//#define ADC_CLK() _sacks2 = 0; _sacks1 = 0; _sacks0 = 1;//Fsys/2
#define ADC_CLK() _sacks2 = 0; _sacks1 = 1; _sacks0 = 0;//Fsys/4
//#define ADC_CLK() _sacks2 = 0; _sacks1 = 1; _sacks0 = 1;//Fsys/8
//#define ADC_CLK() _sacks2 = 1; _sacks1 = 0; _sacks0 = 0;//Fsys/16
//#define ADC_CLK() _sacks2 = 1; _sacks1 = 0; _sacks0 = 1;//Fsys/32
//#define ADC_CLK() _sacks2 = 1; _sacks1 = 1; _sacks0 = 0;//Fsys/64
//#define ADC_CLK() _sacks2 = 1; _sacks1 = 1; _sacks0 = 1;//Fsys/128

//Select Left Or Right Format By ADRFS 
#define ADC_FORM(x) _adrfs = x; // D11 ~ D0 0 0 0 0 Or 0 0 0 0 D11 ~ D0

#define ADC_FORMAT _adrfs

//Selection PIN ADC REG
//#define ADC_PIN _acerl //  Define PIN Is A/D Input Or Not

#define ADC_Pross _adbz // A/D Converter Pross...

//SETING REG ADC
#define	ADC_SETING _sadc0

//Convetor DATA ADC
#define ADC_CONV_H _sadoh
#define ADC_CONV_L _sadol

//Stearter
#define	ADC_START()	{_start = 0; _start = 1; _start = 0;}



// Activer ADC
#define	ADC(x) _adcen = x;

//Refrence Voltage For ADC
#define	ADC_REF()  _savrs1 = 0; _savrs0 = 1; //VDD
//#define	ADC_REF()  _savrs1 = 0; _savrs0 = 0; //Vref
//#define	ADC_REF()  _savrs1 = 1; _savrs0 = 0; //VR

//EMI 
//#define	ADC_INT()		_ade = 1 // Interrupt On
#define ADC_INT()	_ade = 0         // Interrupt Off

#define	ADC_R_FLAG()	_adf = 0 // RESET FLAG
#define	ADC_S_FLAG()	_adf = 1 // SET FLAG

#define ADC_CH0()  _pbs01 = 1; _pbs00 = 1; /**< Analog channel 0 */
#define	ADC_CH1()  _pbs03 = 1; _pbs02 = 1; /**< Analog channel 1 */
#define	ADC_CH2()  _pbs05 = 1; _pbs04 = 1; /**< Analog channel 2 */
#define	ADC_CH3()  _pbs07 = 1; _pbs06 = 1; /**< Analog channel 3 */
#define ADC_CH4()  _pbs11 = 1; _pbs10 = 1; /**< Analog channel 4 */
#define	ADC_CH5()  _pbs13 = 1; _pbs12 = 1; /**< Analog channel 5 */
#define	ADC_CH6()  _pbs15 = 1; _pbs14 = 1; /**< Analog channel 6 */
#define	ADC_CH7()  _pbs17 = 1; _pbs16 = 1; /**< Analog channel 7 */

void ADC_INIT(void);
void ADC_SelectChannel(unsigned char ADC_Channel);
unsigned int ADC_GetValue(void);
unsigned int ADC_GetChannelValue(unsigned char ADC_Channel);

void ADC_INIT(void)
{
 ADC_CLK();	
 ADC_REF();
 ADC_FORM(1);
 ADC_CH0();
 ADC(0);
}

void ADC_SelectChannel(unsigned char ADC_Channel)
{	
	if(ADC_Channel >= 0 && ADC_Channel < 8)
	{
		/* clear ADC channel */
	    ADC_SETING &= 0b11111000;
	    
		
		/* selection external ADC channel */
	    ADC_SETING |= ADC_Channel;
		
		/* select IO in AD input */
	}	
}//end of ADC_SelectChannel(unsigned char ADC_Channel) 


unsigned int ADC_GetValue(void)
{
	unsigned int Value;
	
	/* start AD converter */
	ADC_START();
	
	/* waitting AD conversion finish */
	while(1 == ADC_Pross);	
	
        /* AD conversion data alignment right */
	    if(ADC_FORMAT == 1)		
		{
			/* get the AD conversion value */
			Value = (ADC_CONV_H <<8) |ADC_CONV_L;
		}	
	
        /* AD conversion data alignment left */
	    if(ADC_FORMAT == 0)	
		{
			/* get the AD conversion value */
			Value = (ADC_CONV_H <<4) | (ADC_CONV_L >>4);
		}	

	return Value;
}

unsigned int ADC_GetChannelValue(unsigned char ADC_Channel)
{
        unsigned int AD_ConverterValue;

        _sadc1 &= 0b00011111;

        if(ADC_Channel >= 0 && ADC_Channel < 8)
        {
                _sadc0 &= 0b11110000;                                   //Set ADC input only comes from SAPIN

                _sadc0 |= ADC_Channel;                                  //Select SAPIN input channel 
        }

        else
        {
                _sadc1 |= ADC_Channel;                                  //Select internal ADC channel
        }

        ADC_START();                                                    //Start AD converter

        while( 1 == _adbz );                                              //Waitting AD conversion finish

       if(ADC_FORMAT == 1)	                                  //AD conversion data alignment right
        {
                AD_ConverterValue = (_sadoh << 8) | _sadol;             //get the AD conversion value
        }

        if(ADC_FORMAT == 0)	                                                           //AD conversion data alignment left
        {
                AD_ConverterValue = (_sadoh << 4) | (_sadol >> 4);      //get the AD conversion value
        }


        return AD_ConverterValue;
}

const unsigned int NTC_Table[]=
{
	0x3BE,0x3E4,0x40B,0x433,0x45B,0x483,0x4AD,0x4D7,0x502,0x52D,
	0x558,0x584,0x5B1,0x5DD,0x60A,0x637,0x665,0x693,0x6C0,0x6EE,
	0x71C,0x749,0x777,0x7A5,0x7D2,0x7FF,0x82C,0x858,0x885,0x8B0,
	0x8DC,0x907,0x931,0x95B,0x985,0x9AE,0x9D6,0x9FE,0xA25,0xA4B,
	0xA71,0xA96,0xABB,0xADE,0xB02,0xB24,0xB46,0xB67,0xB87,0xBA6,
	0xBC5,0xBE3,0xC01,0xC1D,0xC39,0xC55,0xC6F,0xC89,0xCA2,0xCBB,
	0xCD3,0xCEA,0xD01,0xD17,0xD2C,0xD41,0xD56,0xD69,0xD7D,0xD8F,
	0xDA1,0xDB3,0xDC4,0xDD4,0xDE4,0xDF4,0xE03,0xE12,0xE20,0xE2E,
	0xE3B,0xE48,0xE55,0xE61,0xE6D,0xE79,0xE84,0xE8F,0xE99,0xEA3,
	0xEAD,0xEB7,0xEC0,0xEC9,0xED2,0xEDA,0xEE2,0xEEA,0xEF2,0xEF9,
};

unsigned char NTC_MAP()
{
	unsigned int NTC_Value=0,NTC_Backup=0;
	unsigned char i;
	ADC(1);
	for(i=0;i<5;i++)
	{
		NTC_Value=ADC_GetChannelValue(0x00);
		
		NTC_Backup+=NTC_Value;
		GCC_DELAY(1000);
		GCC_DELAY(1000);
		
	}
	ADC(0);
	NTC_Value=NTC_Backup/5;
    for(i=0;i<99;i++)
    {
		if(NTC_Value < NTC_Table[i])
		{
			break;	
		}
    }
    
    T1=i/10;
    T2=i%10;
    
    return i;
}