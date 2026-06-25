/************************************************************
PS:If Fsys = 16MHZ, BaudRate input values reference table.
   -------------------------------------------------------------------
   | Baud Rate values | 4800 | 9600 | 19200 | 38400 | 57600 |115200|
   -------------------------------------------------------------------
   | High speed Mode  | 0xcf | 0x67 |  0x33 |  0x19 |  0x10 | 0x08 |
   | error rate       | 0.16%| 0.16%| 0.16% | 0.16% |  2.1% |-3.5% |
   -------------------------------------------------------------------
   | Low speed Mode   | 0x33 | 0x19 | 0x0c  |  ---- |  ---- |    
   | error rate       | 0.16%| 0.16%| 0.16% |  ---- |  ---- |
   -------------------------------------------------------------------  

PS:If Fsys = 12MHZ, BaudRate input values reference table.
   -------------------------------------------------------------------
   | Baud Rate values | 4800 | 9600 | 19200 | 38400 | 57600 |115200|
   -------------------------------------------------------------------
   | High speed Mode  | 0x9b | 0x4d |  0x26 |  0x13 |  0x0c | ---- |
   | error rate       | 0.16%| 0.16%| 0.16% | -2.3% | 0.16% | ---- |
   -------------------------------------------------------------------
   | Low speed Mode   | 0x26 | 0x13 | 0x09  |  0x04 |  ---- | ---- |  
   | error rate       | 0.16%|-2.3% |-2.3%  | -2.3% |  ---- | ---- |
   -------------------------------------------------------------------  

PS:If Fsys = 8MHZ, BaudRate input values reference table.
   -------------------------------------------------------------------
   | Baud Rate values | 4800 | 9600 | 19200 | 38400 | 57600 | 
   -------------------------------------------------------------------
   | High speed Mode  | 0x67 | 0x33 |  0x19 |  0x0c |  0x08 | 
   | error rate       | 0.16%| 0.16%| 0.16% | 0.16% | -3.5% |
   -------------------------------------------------------------------
   | Low speed Mode   | 0x19 | 0x0c |  ---- |  ---- |  ---- |    
   | error rate       | 0.16%| 0.16%| 
   -------------------------------------------------------------------  
   
PS:If Fsys = 11.0592MHZ, BaudRate input values reference table.
   -------------------------------------------------------------------
   | Baud Rate values | 4800 | 9600 | 19200 | 38400 | 57600 | 
   -------------------------------------------------------------------
   | High speed Mode  | 0x67 | 0x33 |  0x19 |  0x0c |  0x08 | 
   | error rate       | 0.16%| 0.16%| 0.16% | 0.16% | -3.5% |
   -------------------------------------------------------------------
   | Low speed Mode   | 0x19 | 0x0c |  ---- |  ---- |  ---- |    
   | error rate       | 0.16%| 0.16%| 
   -------------------------------------------------------------------  
*************************************************************/	

volatile unsigned int  g_nUART_ISR_Value[2];	//uart receive buff
volatile unsigned char g_nUART_err_Flag;		//uart error flag
volatile unsigned char UART_RX_FLAG;			//uart receive success flag


#define UART_EMI(x) _emi = x;
#define ACC _acc
	
#define	UART_ONF(x)		_uarten = x;			//UART function enable
#define	UART_TX(x)		_txen = x;				//TX function enable
#define	UART_RX(x)		_rxen = x;				//RX function enable
#define	UART_ISR(x)		_ure = x;				//UART interrupt enable
#define UART_RIE(x)		_rie = x;               //UART receiver interrupt enable
#define UART_TIIE(x)	_tiie = x;              //UART transmitter idle interrupt enable
#define UART_TEIE(x)	_teie = x;              //UART transmitter empty interrupt enable
#define UART_ADD(x)     _adden = x;             //UART Address detect function enable               //UART Address detect function disable
#define UART_WAKE(x)	_wake = x;              //UART RX pin falling edge wake-up function enable
#define UART_TXBRK(x)	_txbrk = x;             //UART transmit break character function enable
#define UART_SPEED(x)   _brgh = x;
#define UART_STOP(x)    _stops = x;
#define UART_PARIT(x)   _pren = x;
#define UART_EVOD(x)    _prt = x; 
#define UART_BNUM(x)    _bno = x;
#define UART_BDR(x)	    _brg = x;
#define UART_TX9(x)     _tx8 = x;
#define	UART_FLAGS 		_usr
#define UART_DATA       _txr_rxr
#define UART_TXFLAG     _txif
#define UART_TXIDLE     _tidle
#define UART_BITN   	_bno
#define UART_PARITY 	_pren
#define	UART_FLAG		_urf
#define UART_ODEV  		_prt
#define UART_PARFLAG 	_perr
#define UART_NOISFLAG 	_nf
#define UART_FRAMFLAG 	_ferr
#define UART_OVERFLAG 	_oerr
#define UART_RX9 		_rx8
#define UART_RXFLAG 	_rxif

//#define PIN_RX() _pbc3=1; _pbpu3=1;_ifs11=0;_ifs10=0;_pbs07=0;_pbs06=1;//PB3
#define PIN_RX() _pac1=1; _papu1=1;_ifs11=1;_ifs10=1;_pas03=1;_pas02=0;//PA1

//#define PIN_TX() _pbs05=0;_pbs04=1; //PB2
#define PIN_TX() _pas13=1; _pas12=0; //PA5 _pas13=1; _pas12=0; tx on



#define START_BYTE 0x0A

volatile unsigned char UART_Frame[4];
volatile unsigned char UART_Index = 0;
volatile unsigned char UART_FrameReady = 0;
volatile unsigned char UART_StartDetected = 0;


volatile unsigned char ones_digit=0;



/************* detect mode select*********************
* Custom options.
* PS: But EVENPR_MODE and ODDPR_MODE are only one.
*/
	
//	#define		EVENPR_MODE			1			//Even parity Mode
//	#define		ODDPR_MODE			1			//Odd  parity Mode
//	#define		NF_MODE				1			//Noise Mode
//	#define		FERR_MODE			1			//Framing error Mode
//	#define		OERR_MODE			1			//Overrun error Mode
	
/** end of detect mode select **/


void UART_INIT(unsigned char BaudRate);		//UART initialization function, input Baud Rate values
void UART_TRANS(unsigned int data);			//UART transmit function
void UART_FUNCTION();
 
void UART_INIT(unsigned char BaudRate)
{
 PIN_TX();
 PIN_RX();
 UART_PARIT(0);
 UART_EVOD(0);
 UART_BNUM(0);
 UART_SPEED(1);
 UART_STOP(0);
 UART_BDR(BaudRate);
 GCC_CLRWDT();
 UART_ONF(1);
 UART_TX(1);
 UART_RX(1);
 UART_RIE(1);
 UART_TIIE(0);
 UART_TEIE(0);
 UART_ADD(0); 
 UART_WAKE(0);
 UART_TXBRK(0);
 UART_ISR(1);
 UART_EMI(1);
}

//void UART_TRANS(unsigned int data)
//{
//	UART_TX9(0);		
//
//	while(!UART_TXFLAG){GCC_NOP();}					
//	
//	if(UART_BITN == 1)
//	{	
//		if(UART_PARITY == 1)
//		{
//			UART_DATA = data;
//		}
//		else
//		{	 
//			if( data > 255)
//			{
//				UART_TX9(1);
//			}
//			UART_DATA = data;
//		}
//	}	 
//	else
//	{
//		UART_DATA = data;
//	}
//	
//	while(!UART_TXIDLE){GCC_NOP();}
//}
 

volatile unsigned char BufRx[10]={0},BackupBuf[10]={0},UartTime=0,BufInd=0,RxDone=0;

void __attribute((interrupt(0x10))) UART(void)
{
	unsigned char data;

	UART_FLAG = 0;
	data = UART_DATA;

	// „—Õ·Â 1 : ÅÌœ« ò—œ‰ start byte
	if(UART_StartDetected == 0)
	{
		if(data == START_BYTE)
		{
			UART_StartDetected = 1;
			UART_Index = 0;
			UART_Frame[UART_Index++] = data;
		}
	}
	else
	{
		UART_Frame[UART_Index++] = data;

		if(UART_Index >= 4)
		{
			UART_Index = 0;
			UART_StartDetected = 0;
			UART_FrameReady = 1;
		}
	}

	uart_s = data;   // »—«Ì œÌ»«ê ›⁄·Ì Å—ÊéÂ
}


void UART_FUNCTION()
{
    if(!UART_FrameReady) return;

    UART_FrameReady=0;

    unsigned char b1 = UART_Frame[0];
    unsigned char b2 = UART_Frame[1];
    unsigned char b3 = UART_Frame[2];

    if(b1 != START_BYTE) return;
    /* OV MODE */

    if(b2==0xC7 && b3==0xA3)
    {
        MODE = MODE_OV;
        return;
    }

    /* DOOR MODE */

    if(b2==0xA3 && b3==0xA1)
    {
        MODE = MODE_DOOR;
        return;
    }

    MODE = MODE_NORMAL;

    unsigned char seg = b2 & 0x7F;

    switch(seg)
    {
        case 0x40: ones_digit=0; break;
        case 0x79: ones_digit=1; break;
        case 0x24: ones_digit=2; break;
        case 0x30: ones_digit=3; break;
        case 0x19: ones_digit=4; break;
        case 0x12: ones_digit=5; break;
        case 0x02: ones_digit=6; break;
        case 0x78: ones_digit=7; break;
        case 0x00: ones_digit=8; break;
        case 0x10: ones_digit=9; break;
        case 0x03: ones_digit=11; break;
        case 0x0C: ones_digit=12; break;
    }

    newnaumber = ones_digit;

    tens_digit = b3 & 0x7F;
    
    switch(tens_digit)
	{
	    case 0x3F: tens_digit = 0; break; // -
	    case 0x03: tens_digit = 1; break; // B
	    case 0x0C: tens_digit = 2; break; // P
	    case 0x79: tens_digit = 3; break; // 1
	    case 0x24: tens_digit = 4; break; // 2
	
	    default: tens_digit = 0x7F; break; // Ì⁄‰Ì œÂê«‰ ‰œ«—Ì„
	}
    

    /* direction */

    if((b2 & 0x80)==0)
    {
        UP=1;
        DN=0;
    }
    else if((b3 & 0x80)==0)
    {
        UP=0;
        DN=1;
    }
    else
    {
        UP=0;
        DN=0;
    }
}
