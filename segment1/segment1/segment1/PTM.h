//#define	EMI(x)              _emi = x;
#define	MF2_ISR(x)	        _mf2e = x;
#define MF2_FLAG(x)		    _mf2f = x;
#define	PTM(x)			    _pton = x;
#define	PTM_CCRA_ISR(x)	    _ptmae = x;
#define PTM_FLAG_A(x)		_ptmaf = x;
#define	PTM_CCRP_ISR(x)	    _ptmpe = x;
#define PTM_FLAG_P(x)		_ptmpf = x;
#define	PTM_RUN(x)			_ptpau = x;
#define PTM_MATCH(x)        _ptcclr = x;

#define	PTM_GET_CCRA_FLAG	_ptmaf
#define	PTM_GET_CCRP_FLAG	_ptmpf
#define PTM_MATCH_AP        _ptcclr

#define PTM_DATA_AH         _ptmah
#define PTM_DATA_AL         _ptmal
#define PTM_DATA_PH         _ptmrph
#define PTM_DATA_PL         _ptmrpl


#define	PTM_TIMER()     	_ptm1 = 1; _ptm0 = 1;	//Select STM timer/counter Mode	

//#define	PTM_CLK() _ptck2 = 0; _ptck1 = 0; _ptck0 = 0; //Select STM Counter clock Fsys/4
//#define	PTM_CLK() _ptck2 = 0; _ptck1 = 0; _ptck0 = 1; //Select STM Counter clock Fsys
//#define	PTM_CLK() _ptck2 = 0; _ptck1 = 1; _ptck0 = 0; //Select STM Counter clock FH/16
//#define	PTM_CLK() _ptck2 = 0; _ptck1 = 1; _ptck0 = 1; //Select STM Counter clock FH/64
//#define	PTM_CLK() _ptck2 = 1; _ptck1 = 0; _ptck0 = 0; //Select STM Counter clock Ftbc
#define	PTM_CLK() _ptck2 = 1; _ptck1 = 0; _ptck0 = 1; //Select STM Counter clock Ftbc
//#define	PTM_CLK() _ptck2 = 1; _ptck1 = 1; _ptck0 = 0; //Select STM Counter clock TCKn rising edge clock
//#define	PTM_CLK() _ptck2 = 1; _ptck1 = 1; _ptck0 = 1; //Select STM Counter clock TCKn falling edge clock

#define	PTM_GET_COUNTER_VALUE()	((u16)_ptmdh<<8 | _ptmdl)

void PTMR_PERIOD(unsigned int TempPeriod)
{
 if(PTM_MATCH_AP==1) 
 {
	PTM_DATA_AL = TempPeriod & 0x00ff;	//
	PTM_DATA_AH = TempPeriod >> 8;		//
 }
 else
 {	
	PTM_DATA_PL = TempPeriod & 0x00ff;	//
	PTM_DATA_PH = TempPeriod >> 8;		//			
 }	
}

void PTMRINIT()
{
	PTM_TIMER();
	PTM_CLK();
	PTM(1);
	PTM_MATCH(1);
	PTMR_PERIOD(506);
	PTM_CCRA_ISR(1);
	PTM_CCRP_ISR(0);
	PTM_RUN(0);
	MF2_ISR(1);
	MF2_FLAG(0);
	EMI(1);
}
	

void __attribute((interrupt(0x20))) PTMR(void)
{
 if(1==PTM_GET_CCRA_FLAG)
 {
 	PTM_GET_CCRA_FLAG=0;
 	GCC_CLRWDT();
 	S++;
	if(S>63)
	{
		
		
		S=0;
		Date();
		
		
	
	}
	GCC_CLRWDT();
 }
}		