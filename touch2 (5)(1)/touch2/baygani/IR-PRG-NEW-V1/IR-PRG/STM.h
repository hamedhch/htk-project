

/**
  ******************************************************************************
  * @file HT8_STM.h
  * @brief The header file of the STM library.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2019-03-08
  ******************************************************************************
  * @attention
  *
  * Firmware Disclaimer Information
  *
  * 1. The customer hereby acknowledges and agrees that the program technical documentation, including the
  *    code, which is supplied by Holtek Semiconductor Inc., (hereinafter referred to as "HOLTEK") is the
  *    proprietary and confidential intellectual property of HOLTEK, and is protected by copyright law and
  *    other intellectual property laws.
  *
  * 2. The customer hereby acknowledges and agrees that the program technical documentation, including the
  *    code, is confidential information belonging to HOLTEK, and must not be disclosed to any third parties
  *    other than HOLTEK and the customer.
  *
  * 3. The program technical documentation, including the code, is provided "as is" and for customer reference
  *    only. After delivery by HOLTEK, the customer shall use the program technical documentation, including
  *    the code, at their own risk. HOLTEK disclaims any expressed, implied or statutory warranties, including
  *    the warranties of merchantability, satisfactory quality and fitness for a particular purpose.
  *
  * <h2><center>Copyright (C) Holtek Semiconductor Inc. All rights reserved</center></h2>
  ************************************************************************************************************/


/* Define to prevent recursive inclusion -------------------------------------*/



#define	STM_ENABLE()			(_st0on = 1)
#define	STM_DISABLE()			(_st0on = 0)
#define	STM_CCRA_ISR_ENABLE()	(_stma0e = 1)
#define	STM_CCRA_ISR_DISABLE()	(_stma0e = 0)
#define STM_SET_FLAG_A()		(_stma0f = 1)
#define STM_CLEAR_FLAG_A()		(_stma0f = 0)
#define	STM_CCRP_ISR_ENABLE()	(_stmp0e = 1)
#define	STM_CCRP_ISR_DISABLE()	(_stmp0e = 0)
#define STM_SET_FLAG_P()		(_stmp0f = 1)
#define STM_CLEAR_FLAG_P()		(_stmp0f = 0)
#define	STM_PAUSE()				(_st0pau = 1)
#define	STM_RUN()				(_st0pau = 0)
#define	STM_GET_CCRA_FLAG()		_stma0f
#define	STM_GET_CCRP_FLAG()		_stmp0f

#define STM_CAPTURE_RISING_EDGE()		(_st0io1 = 0, _st0io0 = 0)
#define STM_CAPTURE_FALLING_EDGE()		(_st0io1 = 0, _st0io0 = 1)
#define STM_CAPTURE_BOTH_EDGE()			(_st0io1 = 1, _st0io0 = 0)
#define STM_CAPTURE_DISABLE()			(_st0io1 = 1, _st0io0 = 1)

/******** STM work mode select ********/

//	#define	STM_TIMER_COUNTER_MODE			1
	#define	STM_PWM_OUTPUT_MODE				1	
//	#define	STM_COMPARE_MATCH_MODE			1
//	#define	STM_CAPTURE_INPUT_MODE			1
//	#define	STM_SINGLE_PULSE_OUTPUT_MODE	1

/**** end of STM work mode select *****/


/************* clock select **************/

//	#define		STM_FSYS_DIV4				1
	#define		STM_FSYS					1
//	#define		STM_FH_DIV16				1
//	#define		STM_FH_DIV64				1
//	#define		STM_FTBC					1
//	#define		STM_TCK_RISING_EDGE			1
//	#define		STM_TCK_FALLING_EDGE		1
/********* end of clock select *********/

	
/** TM Counter Clear condition selection **/
	
	#define		STM_CCRA_MATCH				1
//	#define		STM_CCRP_MATCH				1	
/* end of TMn Counter Clear condition selection */


/************* TM Output pin select**************************
* Single selection. 
*/
	#define 	STP0_PA2			1			//Output pin select pa2
//	#define		STP0_PA0			1			//Output pin select pa0
//	#define		STP0_DISABLE		1			//Output pin disable
/** end of Output pin select **/


/************* TM Inverting Output pin select**************************
* Single selection. 
*/
	#define 	STP0B_PA5			1			//Inverting Output pin select pa5
//	#define		STP0B_PA1			1			//Inverting Output pin select pa1
//	#define		STP0B_DISABLE		1			//Inverting Output pin disable
/** end of Inverting Output pin select **/


/************* TM Input pin select**************************
* Single selection. 
*/
	#define 	STP0I_PA6			1			//Input pin select pa6,default
//	#define		STP0I_PA0			1			//Input pin select pa0
/** end of Input pin select **/


/************* TM CLK pin select**************************
* Single selection. 
*/
	#define 	STCK0_PA7			1			//CLK pin select pa7,default
//	#define		STCK0_PA6			1			//CLK pin select pa6
/** end of CLK pin select **/

	
/*-------------------- PWM OUTPUT MODE setting -----------------*/
#ifdef	STM_PWM_OUTPUT_MODE		
/***************** Output control ***************/
//	#define		STM_PWM_ACTIVE_LOW	 		1
	#define		STM_PWM_ACTIVE_HIGH			1
/************* end of Output control ************/
	
/************** Output polarity control *********/
	#define		STM_NON_INVERTED			1
//	#define		STM_INVERTED				1
/******** end of Output polarity control ********/

/************** PWM duty and period control *********/
	#define		STM_CCRP_P_CCRA_D			1	//CCRP control period,CCRA control duty
//	#define		STM_CCRP_D_CCRA_P			1	//CCRP control duty,CCRA control period
/******** end of PWM duty and period control ********/

#endif
/*------------ end of PWM OUTPUT MODE setting -----------------*/



/*--------------- SINGLE PULSE OUTPUT MODE setting ------------*/
#ifdef	STM_SINGLE_PULSE_OUTPUT_MODE		
/* Output control */
//	#define		STM_ACTIVE_LOW				1
	#define		STM_ACTIVE_HIGH				1
/* end of Output control */
	
/***** Output polarity control *****/
	#define		STM_NON_INVERTED			1
//	#define		STM_INVERTED				1
/* end of Output polarity control */		

/***** STCK0 trigger control *****/
	#define		STM_STCK0_TRIG_ENABLE		1
//	#define		STM_STCK0_TRIG_DISABLE		1
/* end of STCK0 trigger control */
#endif

/*--------- end of SINGLE PULSE OUTPUT MODE setting ---------*/


/*-------------- TIMER COUNTER MODE setting -----------------*/

#ifdef	STM_TIMER_COUNTER_MODE

	#define	STM_GET_COUNTER_VALUE()	((u16)_stm0dh<<8 | _stm0dl)

#endif
/*---------- end of TIMER COUNTER MODE setting -------------*/


/*------------- COMPARE MATCH MODE setting -----------------*/
#ifdef	STM_COMPARE_MATCH_MODE	
	/* Select output function */
//	#define		STM_NO_CHANGE				1	/* No change */
//	#define		STM_OUTPUT_LOW				1	/* Output low */
//	#define		STM_OUTPUT_HIGH				1	/* Output high */
	#define		STM_OUTPUT_TOGGLE			1	/* Toggle output */
/* end of Select output function */
	
/* Output initialization status control */
//	#define		STM_INITIAL_LOW				1	/* Initial low */
	#define		STM_INITIAL_HIGH			1	/* Initial high */
/* end of Output control */
	
/***** Output polarity control *****/
	#define		STM_NON_INVERTED			1
//	#define		STM_INVERTED				1
/* end of Output polarity control */	
#endif

/*---------- end of COMPARE MATCH MODE setting -------------*/



/*-------------- CAPTURE INPUT MODE setting ---------------*/
#ifdef STM_CAPTURE_INPUT_MODE
/* GET CAPTURE VALUE function */
	#define	STM_GET_CAPTURE_VALUE()	((u16)_stm0ah<<8 | _stm0al)

#endif
/*----------- end of CAPTURE INPUT MODE setting ---------*/



void STM_Init(void);
void STM_PwmOutputConfig(void);
void STM_PwmUpdate(unsigned int TempCCRA,unsigned char TempCCRP);
void STM_SinglePulseOutputConfig(void);
void STM_SinglePulseUpdate(unsigned int TempCCRA);
void STM_CounterModeConfig(unsigned int TempPeriod);
void STM_CompareMatchOutputConfig();
void STM_CompareMatchOutputUpdate(unsigned int TempMatchTime);


/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/
void STM_Init(void)
{
/******************** work mode select ********************/
	#ifdef	STM_TIMER_COUNTER_MODE
		_st0m1 = 1; _st0m0 = 1;	//Select STM timer/counter Mode		
		
	#elif	STM_PWM_OUTPUT_MODE
		_st0m1 = 1; _st0m0 = 0;	
		_st0io1 = 1; _st0io0 = 0;	 //Select STM PWM Output Mode
		
		#ifdef	STP0_PA2
			_pas5 = 0; _pas4 = 1;
		#elif 	STP0_PA0
			_pas1 = 0; _pas0 = 1;
		#endif
		
		#ifdef	STP0B_PA5
			_pas7 = 0; _pas6 = 1;
		#elif 	STP0B_PA1
			_pas3 = 0; _pas2 = 1;
		#endif
	
	#elif	STM_SINGLE_PULSE_OUTPUT_MODE
		_st0m1 = 1; _st0m0 = 0;	
		_st0io1 = 1; _st0io0 = 1;	//Select STM Single Pulse Output Mode
		
		#ifdef	STP0_PA2
			_pas5 = 0; _pas4 = 1;
		#elif 	STP0_PA0
			_pas1 = 0; _pas0 = 1;
		#endif
		
		#ifdef	STP0B_PA5
			_pas7 = 0; _pas6 = 1;
		#elif 	STP0B_PA1
			_pas3 = 0; _pas2 = 1;
		#endif
		
	#elif	STM_COMPARE_MATCH_MODE	//Select STM Compare Match Output Mode
		_st0m1 = 0; _st0m0 = 0;
		
		#ifdef	STP0_PA2
			_pas5 = 0; _pas4 = 1;
		#elif 	STP0_PA0
			_pas1 = 0; _pas0 = 1;
		#endif
		
		#ifdef	STP0B_PA5
			_pas7 = 0; _pas6 = 1;
		#elif 	STP0B_PA1
			_pas3 = 0; _pas2 = 1;
		#endif
		
	#elif	STM_CAPTURE_INPUT_MODE	//Select STM Capture Input Mode
		_st0m1 = 0; _st0m0 = 1;	
		
		#ifdef 	STP0I_PA6
			_stp0ips = 0; 
			_pac6 = 1; _papu6 = 1;
		#elif 	STP0I_PA0
			_stp0ips = 1;
			_pas1 = 0; _pas0 = 0;
			_pac0 = 1; _papu0 = 1;
		#endif	
	
	#endif
/** end of work mode select **/		


/********************* clock select **********************/
	#ifdef	STM_FSYS_DIV4
		_st0ck2 = 0; _st0ck1 = 0; _st0ck0 = 0;	//Select STM Counter clock Fsys/4
	
	#elif	STM_FSYS
		_st0ck2 = 0; _st0ck1 = 0; _st0ck0 = 1;	//Select STM Counter clock Fsys
	
	#elif	STM_FH_DIV16
		_st0ck2 = 0; _st0ck1 = 1; _st0ck0 = 0; //Select STM Counter clock FH/16
		
	#elif	STM_FH_DIV64
		_st0ck2 = 0; _st0ck1 = 1; _st0ck0 = 1; //Select STM Counter clock FH/64
		
	#elif	STM_FTBC
		_st0ck2 = 1; _st0ck1 = 0; _st0ck0 = 0;	//Select STM Counter clock Ftbc
		
	#elif	STM_TCK_RISING_EDGE
		_st0ck2 = 1; _st0ck1 = 1; _st0ck0 = 0; //Select STM Counter clock TCKn rising edge clock
		
		#ifdef 	STCK0_PA7
			_stck0ps = 0;
			_pac7 = 1; _papu7 = 1;
		#elif	STCK0_PA6
			_stck0ps = 1;
			_pac6 = 1; _papu6 = 1;
		#endif	
		
	#elif	STM_TCK_FALLING_EDGE
		_st0ck2 = 1; _st0ck1 = 1; _st0ck0 = 1; //Select STM Counter clock TCKn falling edge clock
		
		#ifdef 	STCK0_PA7
			_stck0ps = 0;
			_pac7 = 1; _papu7 = 1;
		#elif	STCK0_PA6
			_stck0ps = 1;
			_pac6 = 1; _papu6 = 1;
		#endif	

	#endif	
/** end of clock select **/
		
/************ TMn Counter Clear condition selection *************/	
	#ifdef	STM_CCRA_MATCH
		_st0cclr = 1;	//STM Counter Clear condition selection STM Comparator A match		
	#else
		_st0cclr = 0;	//STM Counter Clear condition selection STM Comparator P match	
	#endif
/********* end of TMn Counter Clear condition selection *********/	
}


/**
  * @brief STM PWM configure function.
  * Specify the following parameters in HT8_STM.h,\n
  * 1.Output control\n
  * 2.Output polarity control\n
  * @param[in] Non.
  * @retval Non.
  */
void STM_PwmOutputConfig(void)
{
/************* Output control **************/		
	#ifdef	STM_PWM_ACTIVE_LOW
		_st0oc = 0;					//active low
	#else
		_st0oc = 1;					//active high
	#endif
/********* end of Output control ***********/	
		
/******** Output polarity control **********/
	#ifdef	STM_NON_INVERTED
		_st0pol = 0;					//no inverted
	#else
		_st0pol = 1;					//inverted
	#endif
/******** Output polarity control **********/	

/*********** PWM duty and period control *******/
	#ifdef	STM_CCRP_P_CCRA_D
		_st0dpx = 0;
	#else
		_st0dpx = 1;
	#endif
/* end of Output polarity control */
}


/**
  * @brief STM PWM update function.
  * @param[in] CCRA value.
  * @param[in] CCRP value.
  * @retval Non.
  */
void STM_PwmUpdate(unsigned int TempCCRA,unsigned char TempCCRP)
{
	_stm0al = TempCCRA & 0x00ff;	//
	_stm0ah = TempCCRA >> 8;		//
	
	_st0rp2 = (TempCCRP>>2) & 0x01;			
	_st0rp1 = (TempCCRP>>1) & 0x01;	
	_st0rp0 = TempCCRP & 0x01;	
}


/**
  * @brief STM SinglePulse configure function.
  * Specify the following parameters in HT8_STM.h\n
  * 1.Output control\n
  * 2.Output polarity control\n
  * 3.STCK0 trigger control
  * @param[in] Non.
  * @retval Non.
  */
void STM_SinglePulseOutputConfig(void)
{
/************* Output control **************/		
	#ifdef	STM_ACTIVE_LOW
		_st0oc = 0;					//active low
	#else
		_st0oc = 1;					//active high
	#endif
/********* end of Output control **********/	
		
/******** Output polarity control ********/
	#ifdef	STM_NON_INVERTED
		_st0pol = 0;					//no inverted
	#else
		_st0pol = 1;					//inverted
	#endif
/******** Output polarity control ********/	

/******** STCK0 trigger control *****/
	#ifdef	STM_STCK0_TRIG_ENABLE
	
		#ifdef 	STCK0_PA7
			_stck0ps = 0;
			_pac7 = 1; _papu7 = 1;
		#elif	STCK0_PA6
			_stck0ps = 1;
			_pac6 = 1; _papu6 = 1;
		#endif
			
	#endif
/*** end of STCK0 trigger control ***/
}


/**
  * @brief STM SinglePulse update function.
  * @param[in] pulse width value.
  * @retval Non.
  */
void STM_SinglePulseUpdate(unsigned int TempCCRA)
{
	_stm0al = TempCCRA & 0x00ff;	//
	_stm0ah = TempCCRA >> 8;		//
}


/**
  * @brief STM timer/counter mode period config function.
  * @param[in] period value,
  * @retval None.
  */
void STM_CounterModeConfig(unsigned int TempPeriod)
{
#ifdef	STM_CCRA_MATCH
	_stm0al = TempPeriod & 0x00ff;	//
	_stm0ah = TempPeriod >> 8;		//
#else	
	_st0rp2 = (TempPeriod>>2) & 0x01;			
	_st0rp1 = (TempPeriod>>1) & 0x01;	
	_st0rp0 = TempPeriod & 0x01;
#endif		
}


/**
  * @brief STM compare match output config function,
  * Specify the following parameters in HT8_STM.h\n 
  * 1.Output function select\n
  * 2.Output initial status control\n
  * 3.Output polarity control\n
  * @param[in] None.
  * @retval None.
  */
void STM_CompareMatchOutputConfig()
{
/********** Select pin output function **********/	
	#ifdef	STM_NO_CHANGE
		_st0io1 = 0; _st0io0 = 0;	//
	
	#elif	STM_OUTPUT_LOW
		_st0io1 = 0; _st0io0 = 1;	//
	
	#elif	STM_OUTPUT_HIGH
		_st0io1 = 1; _st0io0 = 0;	//
	
	#elif	STM_OUTPUT_TOGGLE
		_st0io1 = 1; _st0io0 = 1;	//
	#endif
/********** Select pin output function **********/	

/***** Output initialization status control *****/			
	#ifdef	STM_INITIAL_LOW
		_st0oc = 0;				//
	#else
		_st0oc = 1;	
	#endif			
/** end of Output initialization status control */		

/*********** Output polarity control ************/	
	#ifdef	STM_NON_INVERTED
		_st0pol = 0;				//
	#else
		_st0pol = 1;				//
	#endif
/******* end of Output polarity control ********/
}


/**
  * @brief STM compare match output update function,
  * @param[in] MatchTime value,
  * @retval None.
  */
void STM_CompareMatchOutputUpdate(unsigned int TempMatchTime)
{
#ifdef	STM_CCRA_MATCH
	_stm0al = TempMatchTime & 0x00ff;	//
	_stm0ah = TempMatchTime >> 8;		//
#else	
	_stm0al = 1;							//
	_stm0ah = 0;							//	
	_st0rp2 = (TempMatchTime>>2) & 0x01;			
	_st0rp1 = (TempMatchTime>>1) & 0x01;	
	_st0rp0 = TempMatchTime & 0x01;
#endif	
}

void STM_INIT()
{
 STM_Init();
	STM_PwmOutputConfig();
	STM_PwmUpdate(128,2);	
	STM_ENABLE();		//enable STM
	
	_delay(2000);	//wait system stable
}
/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/