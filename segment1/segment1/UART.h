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
#define PIN_TX() _pas13=1; _pas12=0; //PA5




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

void UART_TRANS(unsigned int data)
{
	UART_TX9(0);		

	while(!UART_TXFLAG){GCC_NOP();}					
	
	if(UART_BITN == 1)
	{	
		if(UART_PARITY == 1)
		{
			UART_DATA = data;
		}
		else
		{	 
			if( data > 255)
			{
				UART_TX9(1);
			}
			UART_DATA = data;
		}
	}	 
	else
	{
		UART_DATA = data;
	}
	
	while(!UART_TXIDLE){GCC_NOP();}
}
 

volatile unsigned char BufRx[10]={0},BackupBuf[10]={0},UartTime=0,BufInd=0,RxDone=0;

void __attribute((interrupt(0x10))) UART(void)
{
	unsigned char UartData=0;
	UART_RX_FLAG =0;
	UART_FLAG=0;
	UartData= UART_DATA;	//first Byte
	UartTime=0;
	BufRx[BufInd]=UartData;BufInd++;
	//if(RxDone==0){if(BufInd>=12){RxDone=1;}}
	
	//if(BufRx[BufInd-1]==13){RxDone=1;BufInd=0;}
	uart_s=1;
}


void UART_FUNCTION()
{
 if(UART_FLAG==1)
 {
 	UART_FLAG=0;
	g_nUART_ISR_Value[0] = 0;	//clear first receive data buff
	g_nUART_ISR_Value[1] = 0;	//clear second receive data buff
	g_nUART_err_Flag = 0;		//clear error flag	
	UART_RX_FLAG =0;			//clear receive finished flag
		
	/* parity error flag*/
	if (UART_PARFLAG)
	{
		/* Odd parity error,user can set error flag in here */
		g_nUART_err_Flag |= 0x80;
	}
	if (UART_NOISFLAG)
	{
		/* Noise error,user can set error flag in here */
		g_nUART_err_Flag |= 0x40;
	}		
	if (UART_FRAMFLAG)
	{
		/* Framing error,user can set error flag in here */
		g_nUART_err_Flag |= 0x20;
	}		
	if (UART_OVERFLAG)
	{
		/* Overrun error,user can set error flag in here */
		g_nUART_err_Flag |= 0x10;
	}


	if(UART_PARITY==1 || UART_NOISFLAG==1 || UART_FRAMFLAG==1 || UART_OVERFLAG)
	{	
		if (g_nUART_err_Flag & 0xf0)
		{
			ACC = UART_FLAGS;
			ACC = UART_DATA;	//read USR and TXR_RXT register to clear error flag
			g_nUART_ISR_Value[0] = 0;//clear first receive data buff
			g_nUART_ISR_Value[1] = 0;//clear second receive data buff
			return;		
		}
	}
/**************************************/
	
	/* receive data success */
	if(UART_RXFLAG==1)
	{
		if(UART_BITN==1)
		{
			if (UART_PARITY==1)
			{
				g_nUART_ISR_Value[0] = UART_DATA;	//first Byte,MSB is parity bit
			}	
			else
			{
				if(UART_RX9==1)
				{
					ACC = UART_FLAGS;
					g_nUART_ISR_Value[0] = UART_DATA + 256;	//first Byte,MSB=1 is data bit
				}
				else
				{
					ACC = UART_FLAGS;
					g_nUART_ISR_Value[0] = UART_DATA;	//first Byte,MSB=0 is data bit
				}
			}
			if(UART_RXFLAG==1)
			{
				if(UART_PARITY==1)
				{
					g_nUART_ISR_Value[1] = UART_DATA;	//second Byte,MSB is parity bit
				}	
				else
				{
					if(UART_RX9==1)
					{
						ACC = UART_FLAGS;
						g_nUART_ISR_Value[1] = UART_DATA + 256;	//second Byte,MSB=1 is data bit				
					}
					else
					{
						ACC = UART_FLAGS;
						g_nUART_ISR_Value[1] = UART_DATA;//second Byte,MSB=0 is data bit
					}
				}
			}
		}	
		else
		{
			ACC = UART_FLAGS;
			g_nUART_ISR_Value[0] = UART_DATA;	//first Byte
			if (UART_RXFLAG==1)
			{
				ACC = UART_FLAGS;
				g_nUART_ISR_Value[1] = UART_DATA;//second Byte
			}
			UART_RX_FLAG = 1;	//receive success and complete
		}	
	}	
 }
}



void Uart_Print (char *string)
{
  while (*string)  
  {
	UART_TRANS(*string++);
  }
}



void UART_String(char *str)
{
	int i;
    for (i = 0; str[i] != '\0'; ++i)
    {
        UART_TRANS(str[i]);
    }
}