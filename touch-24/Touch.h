volatile unsigned long Count_C1=0,Count_C1_Backup=0; //Calibr
volatile unsigned int Count_S1=0; //Sense
volatile unsigned int Count_T1=0; //Time
volatile unsigned char CalibrCount=0,CalibrSample=0;



volatile unsigned char Timedown=0 , Data[3] ,DataM[3],RFData[3] , eerom=0;
volatile unsigned char   Count=0 ,Count_format=0 , Buffer=0,Bit=0 , count_RF_seve=0,i=0;	

volatile bit  Start=0,Lock=0,Frist=0,Finish=0,bizer=1,bizer_rf=0,LearnRF=0;


volatile unsigned char rf_bit_index = 0;
volatile unsigned char rf_byte_index = 0;
volatile unsigned char rf_buffer = 0;

volatile unsigned char rf_valid = 0;
volatile unsigned char rf_sync = 0;

volatile unsigned long learn_timeout = 0;


volatile unsigned char frame_ok_count = 0;
volatile unsigned char noise_count = 0;

volatile unsigned char last_frame[3];


volatile unsigned char fast_touch_count = 0;
volatile unsigned int fast_touch_timer = 0;
volatile unsigned char RF_Mode = 0;
/*
0 = NORMAL
1 = LEARN
2 = REMOVE
*/


#define SHORT_MIN   2
#define SHORT_MAX   10
#define LONG_MIN    11
#define LONG_MAX    35
#define SYNC_MIN    110
#define SYNC_MAX    230


#define EE_COUNT_ADDR 0     // ¬œ—” –ŒÌ—Â  ⁄œ«œ —Ì„Ê ùÂ«
#define EE_START_ADDR 1     // ‘—Ê⁄ òœÂ«Ì —Ì„Ê 
#define REMOTE_SIZE   3
#define MAX_REMOTES   40

unsigned char remote_count;



#define FINGER_FOCUS_ON	70

//I/O Pin or Touch Key 1..4 Function Select
#define IO_Touch() _m0k4io = 1; _m0k3io = 0;_m0k2io = 0;_m0k1io = 0;

//Touch key 8-bit time slot counter preload register
#define TimeTouch()	_tktmr = 0

//touch key module 16-bit counter clock source selection	
#define FcTouch()	_tk16s1 =0; _tk16s0 =0 //Fsys /1
//#define FcTouch()	_tk16s1 =0; _tk16s0 =1 //Fsys /2
//#define FcTouch()	_tk16s1 =1; _tk16s0 =0 //Fsys /4
//#define FcTouch()	_tk16s1 =1; _tk16s0 =1 //Fsys /8

//touch key OSC frequency selection
//#define FsTouch()	_tkfs1 = 0; _tkfs0 = 0 //500KHz
//#define FsTouch()	_tkfs1 = 0; _tkfs0 = 1 //1MHz
//#define FsTouch()	_tkfs1 = 1; _tkfs0 = 0 //1.5MHz
#define FsTouch()	_tkfs1 = 1; _tkfs0 = 1 //2MHz

//Reference Oscillator internal capacitor selection TKM0RO[9:0] ◊ 50pF / 1024
#define RefTouch()	_tkm0rol = 200; _tkm0roh = 0


//Multiplexer Key Select
#define KeyTouch1()	_m0mxs1 = 0;	_m0mxs0 = 0;	//key1
#define KeyTouch2()	_m0mxs1 = 0;	_m0mxs0 = 1;	//key2
#define KeyTouch3()	_m0mxs1 = 1;	_m0mxs0 = 0;	//key3
#define KeyTouch4()	_m0mxs1 = 1;	_m0mxs0 = 1;	//key4

//Multi-frequency function control
#define MFT_EN() _m0dfen = 1; //enabled
#define MFT_DI() _m0dfen = 0; //disabled

//Filter function control
#define FFT_EN() _m0filen = 1; //enabled
#define FFT_DI() _m0filen = 0; //disabled

//C to F oscillator frequency-hopping function control
//#define CtFTouch() _m0sofc = 1 //Controlled by hardware
#define CtFTouch()_m0sofc = 0 //Controlled by software

//Selecting key oscillator or reference oscillator frequency as the	C to F oscillator is controlled by software
//#define	SCtfTouch() _m0sof2 = 0; _m0sof1= 0; _m0sof0 = 0
//#define	SCtfTouch() _m0sof2 = 0; _m0sof1= 0; _m0sof0 = 1
//#define	SCtfTouch() _m0sof2 = 0; _m0sof1= 1; _m0sof0 = 0
//#define	SCtfTouch() _m0sof2 = 0; _m0sof1= 1; _m0sof0 = 1
//#define	SCtfTouch() _m0sof2 = 1; _m0sof1= 0; _m0sof0 = 0
//#define	SCtfTouch() _m0sof2 = 1; _m0sof1= 0; _m0sof0 = 1
//#define	SCtfTouch() _m0sof2 = 1; _m0sof1= 1; _m0sof0 = 0
#define	SCtfTouch() _m0sof2 = 1; _m0sof1= 1; _m0sof0 = 1

//Time Slot counter Select
#define	TScTouch()	_m0tss = 0 //Reference Oscillator
//#define TScTouch() _m0tss = 1 //fsys/4

//Reference Oscillator control
//#define ROcTouch() _m0roen = 0; //disabled
#define	ROcTouch()	_m0roen = 1 //enabled

//key oscillator control
//#define KOcTouch() _m0koen = 0//disabled
#define	KOcTouch() _m0koen = 1 //enabled

#define	TouchStart(x) _tkst = x; 	
	
//INIT TOUCH KEY INTERRUPT
#define EMI() _emi = 1; //global interrupt enable
#define IntTouch(x) _tkme = x //touch interrupt enable
#define	FlagIntTouch(x) _tkmf = x //touch interrupt Flag : Set Or Reset
#define	Flag_Int_Touch _tkmf //touch interrupt Flag Read




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


signed char find_remote_index()
{
    unsigned char addr;

    for(i=0;i<MAX_REMOTES;i++)
    {
        addr = EE_START_ADDR + (i*REMOTE_SIZE);

        if(eeprom_read(addr)==DataM[0] &&
           eeprom_read(addr+1)==DataM[1] &&
           eeprom_read(addr+2)==DataM[2])
        {
            return i;
        }
    }

    return -1;
}

signed char find_empty_slot()
{
    unsigned char addr;

    for(i=0;i<MAX_REMOTES;i++)
    {
        addr = EE_START_ADDR + (i*REMOTE_SIZE);

        if(eeprom_read(addr)==0xFF &&
           eeprom_read(addr+1)==0xFF &&
           eeprom_read(addr+2)==0xFF)
        {
            return i;
        }
    }

    return -1;
}


void remove_remote()
{
    signed char index;
    unsigned char addr;

    index = find_remote_index();

    if(index >= 0)
    {
        addr = EE_START_ADDR + (index*REMOTE_SIZE);

        eeprom_write(0xFF , addr);
        eeprom_write(0xFF , addr+1);
        eeprom_write(0xFF , addr+2);

        BIZ=1;
        delay_ms(200);
        BIZ=0;
    }
}

//  «»⁄ Å«ò ò—œ‰ ò· Õ«›ŸÂ
void format_memory() {
    // ›ﬁÿ ò«›Ì”   ⁄œ«œ —Ì„Ê ùÂ« —« ’›— ò‰Ì„ (Å«ò ò—œ‰ „‰ÿﬁÌ)
    remote_count = 0;
    eeprom_write(0, EE_COUNT_ADDR);
    
    // «Œ Ì«—Ì: «ê— »ŒÊ«ÂÌ Ê«ﬁ⁄« Â„Â ”·Ê·ùÂ« FF ‘Ê‰œ (Å«ò ò—œ‰ ›Ì“ÌòÌ)
    // «Ì‰ ò«— “„«‰ù»— «”  Ê »—«Ì «„‰Ì  »Ì‘ — «‰Ã«„ „Ìù‘Êœ
}



void check_remote() {
    unsigned char  addr;

    for(i = 0; i < MAX_REMOTES; i++) {
        addr = EE_START_ADDR + (i * REMOTE_SIZE);

        // ŒÊ«‰œ‰ òœ —Ì„Ê  ‘„«—Â i
        if(eeprom_read(addr) == DataM[0]) {
            if(eeprom_read(addr+1) == DataM[1]) {
                if(eeprom_read(addr+2) == DataM[2]) {
                    
                    out=0;
					_ton=0;
					
					BIZ=1;
					delay_ms(100);
					BIZ=0;
					
					delay_ms(700);
					out=1;
					_ton=1;
					
					
                    return;
                }
            }
        }
    }
    
    Lock = 0;
}


void learn_remote()
{
    signed char index;
    unsigned char addr;

    index = find_remote_index();

    if(index >= 0)
    {
        BIZ=1;delay_ms(40);BIZ=0;
        delay_ms(40);
        BIZ=1;delay_ms(40);BIZ=0;
        delay_ms(40);
        BIZ=1;delay_ms(40);BIZ=0;
        return;
    }

    index = find_empty_slot();

    if(index >= 0)
    {
        addr = EE_START_ADDR + (index*REMOTE_SIZE);

        eeprom_write(DataM[0],addr);
        eeprom_write(DataM[1],addr+1);
        eeprom_write(DataM[2],addr+2);

        BIZ=1;delay_ms(40);BIZ=0;
        delay_ms(40);
        BIZ=1;delay_ms(40);BIZ=0;
    }
}




void TuochKeyInit()
{
//Common
 IntTouch(0);
 FlagIntTouch(0);
 TimeTouch();
 FcTouch();
 FsTouch();

//Module 1
 IO_Touch();
 RefTouch();
 MFT_EN();
 FFT_EN();
 CtFTouch();
 SCtfTouch();
 TScTouch();
 ROcTouch();
 KOcTouch();
}

void Key_Touch()
{
	
	if(fast_touch_timer<1000)fast_touch_timer++;
    
	if(Count_S1 < Count_C1 - 80)
	{
		Count_T1++;if(Count_T1> 2000){Count_T1 = 2000;}
	}
	else if(Count_S1 > Count_C1 -30 )
	{
		Count_T1=0;
		out=1;
		bizer=0;
		//BIZ=0;
	}
	
	if(Count_T1 == FINGER_FOCUS_ON)
	{
		out=0;
		
		CalibrCount=0;
		CalibrSample=0;
		Count_C1_Backup=0;
		
		if(bizer==0){
			BIZ=1;
			delay_ms(100);
			BIZ=0;
			bizer=1;
		}
		
		
		if (RF_Mode >= 1) {
	        fast_touch_count++;
			
			if(fast_touch_timer<500)
			{
			    if(fast_touch_count>=4)
			    {
			        format_memory();
			
			        BIZ=1;
			        delay_ms(600);
			        BIZ=0;
					
					LearnRF = 0;
					RF_Mode = 0;
			        fast_touch_count=0;
			    }
			}
			else
			{
			    fast_touch_count=1;
			}
			
			fast_touch_timer=0;
	    } 
	    
	    
	}
	
	
	
	if(Count_T1==1000  ){
		
    	Count_T1++;
	
	    if(RF_Mode==0)
	    {
	        RF_Mode=1; // LEARN
	
	        BIZ=1;
	        delay_ms(200);
	        BIZ=0;
	        delay_ms(40);
	        BIZ=1;
	        delay_ms(40);
	        BIZ=0;
	        delay_ms(40);
	        BIZ=1;
	        delay_ms(40);
	        BIZ=0;
	
	        LearnRF=1;
	    }
	    else if(RF_Mode==1)
	    {
	        RF_Mode=2; // REMOVE
	
	        BIZ=1;
	        delay_ms(40);
	        BIZ=0;
	        delay_ms(40);
	        BIZ=1;
	        delay_ms(40);
	        BIZ=0;
	        delay_ms(40);
	        BIZ=1;
	        delay_ms(200);
	        BIZ=0;
	    }
	    else
	    {
	        RF_Mode=1; // »—ê‘  »Â Learn
	
	        BIZ=1;
	        delay_ms(200);
	        BIZ=0;
	        delay_ms(40);
	        BIZ=1;
	        delay_ms(40);
	        BIZ=0;
	        delay_ms(40);
	        BIZ=1;
	        delay_ms(40);
	        BIZ=0;
	
	        LearnRF=1;
	    }
	
	    learn_timeout=0;
	}
	
	if(RF_Mode >= 1 && learn_timeout >= 100000){
	    RF_Mode = 0;
	    Count_format = 0;
	    BIZ=1;
		delay_ms(40);
		BIZ=0;
	}

	if (Lock==1)
	{
	    if(RF_Mode==1)
	    {
	        learn_remote();
	        RF_Mode=0;
	        LearnRF=0;
	    }
	    else if(RF_Mode==2)
	    {
	        remove_remote();
	        RF_Mode=0;
	    }
	    else
	    {
	        check_remote();
	    }
	
	    Lock=0;
	    Finish=0;
	}


	

}


void CalibrTuoch()
{
	
	TouchStart(0);
	KeyTouch4();delay_10us(250);delay_10us(250);
	GCC_CLRWDT();	
	
	
	for(i=0; i <20 ; i++)
	{
		 ROcTouch();
		 KOcTouch();
		 TouchStart(1);
		/*Multiplexer Key Select*/
    	GCC_CLRWDT();
		while( !_tkrcov ){};//wait for tkrcov flag
		Count_S1 = (unsigned int )((_tkm016dh <<8) | _tkm016dl);
		Count_C1 += Count_S1;
		_tkrcov = 0;
		TouchStart(0);	
		GCC_CLRWDT();
		delay_ms(5);
	}
	Count_C1 = Count_C1 /20;
	GCC_CLRWDT();
}


void Key_Select()
{
	ROcTouch();
	KOcTouch();
	TouchStart(1);
	KeyTouch4();
	while(!_tkrcov ){GCC_NOP();} ;
	Count_S1 = (unsigned int)((_tkm016dh <<8) | _tkm016dl);
	CalibrCount++;
	if(CalibrCount>100)
	{
		CalibrCount=0;	
		Count_C1_Backup += Count_S1;
		CalibrSample++;
		if(CalibrSample>=20)
		{
			CalibrSample=0;
			Count_C1=Count_C1_Backup/20;
			Count_C1_Backup=0;
		}
	}
		
	_tkrcov =0;
	TouchStart(0);	
}



void __attribute((interrupt(0x28))) TOUCH_ISR(void)
{
  ///...
}


void __attribute((interrupt(0x04))) int0(void)
{
	

}

///////////////////////////////////////////////////////



void __attribute__((interrupt(0x0C))) timer(void)
{
    if (RF_Mode>=1 && learn_timeout < 100000)
        learn_timeout++;

    if (data_rf == 0 && Timedown < 250) {
        Timedown++;
        Frist = 1;
        return;
    }

    if (!Frist) {
        Timedown = 0;
        return;
    }

    unsigned char t = Timedown;

    Timedown = 0;
    Frist = 0;

    /* --- Anti-Noise Rule 1 --- */
    /* «ê— Å«·” ŒÌ·Ì òÊçò Ì« ŒÌ·Ì »“—ê »Êœ° «“ ‰ÊÌ“Â */
    if (t < 5 || t > 200) {
        rf_sync = 0;
        return;
    }

    /* SYNC detect */

    if (t >= SYNC_MIN && t <= SYNC_MAX) {

        /* --- Anti-Noise Rule 2 --- */
        /* Å«·” Sync ŒÌ·Ì òÊ «Â = ‰ÊÌ“ */
        if(t < (SYNC_MIN + 5)) 
            return;

        rf_sync = 1;
        rf_bit_index = 8;
        rf_byte_index = 0;
        rf_buffer = 0;
        noise_count = 0;

        return;
    }

    if (!rf_sync)
        return;

    /* decode bit */

    if (t >= SHORT_MIN && t <= SHORT_MAX) {

        rf_buffer = (rf_buffer << 1) | 1;
        rf_bit_index--;

    }
    else if (t >= LONG_MIN && t <= LONG_MAX) {

        rf_buffer <<= 1;
        rf_bit_index--;

    }
    else {

        noise_count++;

        /* --- Anti-Noise Rule 3 --- */
        if (noise_count > 2)    /* ﬁ»·« 4 »Êœ */
            rf_sync = 0;

        return;
    }

    if (rf_bit_index != 0)
        return;

    RFData[rf_byte_index++] = rf_buffer;

    rf_buffer = 0;
    rf_bit_index = 8;

    if (rf_byte_index < 3)
        return;

    rf_sync = 0;
    rf_byte_index = 0;

    /* frame validation */

    if (RFData[0] == last_frame[0] &&
        RFData[1] == last_frame[1] &&
        RFData[2] == last_frame[2]) {

        frame_ok_count++;

        if (frame_ok_count >= 2) {

            DataM[0] = RFData[0];
            DataM[1] = RFData[1];
            DataM[2] = RFData[2];

            Lock = 1;
            Finish = 1;

            frame_ok_count = 0;
        }

    }
    else {

        last_frame[0] = RFData[0];
        last_frame[1] = RFData[1];
        last_frame[2] = RFData[2];

        frame_ok_count = 1;
    }
}






//
//
//void __attribute__((interrupt(0x0C))) timer(void)
//{
//
//    if (RF_Mode>=1 && learn_timeout < 100000)
//        learn_timeout++;
//
//    if (data_rf == 0 && Timedown < 250) {
//        Timedown++;
//        Frist = 1;
//        return;
//    }
//
//    if (!Frist) {
//        Timedown = 0;
//        return;
//    }
//
//    unsigned char t = Timedown;
//
//    Timedown = 0;
//    Frist = 0;
//
//    /* SYNC detect */
//
//    if (t >= SYNC_MIN && t <= SYNC_MAX) {
//
//        rf_sync = 1;
//        rf_bit_index = 8;
//        rf_byte_index = 0;
//        rf_buffer = 0;
//        noise_count = 0;
//
//        return;
//    }
//
//    if (!rf_sync)
//        return;
//
//    /* decode bit */
//
//    if (t >= SHORT_MIN && t <= SHORT_MAX) {
//
//        rf_buffer = (rf_buffer << 1) | 1;
//        rf_bit_index--;
//
//    }
//    else if (t >= LONG_MIN && t <= LONG_MAX) {
//
//        rf_buffer <<= 1;
//        rf_bit_index--;
//
//    }
//    else {
//
//        noise_count++;
//
//        if (noise_count > 4)
//            rf_sync = 0;
//
//        return;
//    }
//
//    if (rf_bit_index != 0)
//        return;
//
//    RFData[rf_byte_index++] = rf_buffer;
//
//    rf_buffer = 0;
//    rf_bit_index = 8;
//
//    if (rf_byte_index < 3)
//        return;
//
//    rf_sync = 0;
//    rf_byte_index = 0;
//
//    /* frame validation */
//
//    if (RFData[0] == last_frame[0] &&
//        RFData[1] == last_frame[1] &&
//        RFData[2] == last_frame[2]) {
//
//        frame_ok_count++;
//
//        if (frame_ok_count >= 2) {
//
//            DataM[0] = RFData[0];
//            DataM[1] = RFData[1];
//            DataM[2] = RFData[2];
//
//            Lock = 1;
//            Finish = 1;
//
//            frame_ok_count = 0;
//        }
//
//    }
//    else {
//
//        last_frame[0] = RFData[0];
//        last_frame[1] = RFData[1];
//        last_frame[2] = RFData[2];
//
//        frame_ok_count = 1;
//    }
//
//}
//
//
//


//**************************************************





//
//void __attribute__((interrupt(0x0C))) timer(void)
//{
//    if (LearnRF == 1 && learn_timeout < 100000) learn_timeout++;
//
//    if (data_rf == 0 && Timedown < 250) {
//        Timedown++;
//        Frist = 1;
//    }
//    else {
//        if (Frist == 1) {
//
//            unsigned char t = Timedown;
//
//            if (t >= SYNC_MIN && t <= SYNC_MAX) {
//                rf_bit_index = 8;
//                rf_byte_index = 0;
//                rf_buffer = 0;
//                rf_sync = 1;
//            }
//            else if (rf_sync == 1) {
//
//                if (t >= SHORT_MIN && t <= SHORT_MAX) {
//                    rf_buffer <<= 1;
//                    rf_buffer |= 1;
//                    rf_bit_index--;
//                }
//                else if (t >= LONG_MIN && t <= LONG_MAX) {
//                    rf_buffer <<= 1;
//                    rf_bit_index--;
//                }
//                else {
//                    rf_sync = 0;
//                    rf_bit_index = 8;
//                }
//
//                if (rf_bit_index == 0) {
//                    RFData[rf_byte_index] = rf_buffer;
//                    rf_byte_index++;
//                    rf_bit_index = 8;
//                    rf_buffer = 0;
//
//                    if (rf_byte_index >= 3) {
//                        rf_sync = 0;
//                        rf_byte_index = 0;
//
//                        if (RFData[0] == Data[0] &&
//                            RFData[1] == Data[1] &&
//                            RFData[2] == Data[2]) {
//
//                            DataM[0] = RFData[0];
//                            DataM[1] = RFData[1];
//                            DataM[2] = RFData[2];
//
//                            Lock = 1;
//                            Finish = 1;
//                        }
//
//                        Data[0] = RFData[0];
//                        Data[1] = RFData[1];
//                        Data[2] = RFData[2];
//                    }
//                }
//            }
//
//            Frist = 0;
//        }
//
//        Timedown = 0;
//    }
//
//}
//



//******************************************************




//void __attribute((interrupt(0x0C))) timer(void)
//{
//	/*Counter++;
//		
//	if(Counter>=Counter_On && counterrgb>=50)
//	{
//		LED1=1;
//	}*/
//	
//	//data_rf=!data_rf;
//	
//	if (LearnRF == 1 && learn_timeout < 100000) learn_timeout++;
//
//	if(data_rf==0 && Timedown<200){
//		Timedown++;Frist=1;
//        //test_rf=!test_rf;
//	 }
//	 else
//	 {
//		
//        
//		if(Timedown>=190){
//			Finish=0;
//			Timedown=0;
//			
//        }
//        
//		if(Frist==1 && Finish==0)
//        {
//			
//			if(Start==1)
//			{
//				
//				
//				Bit--;
//				if(Timedown>=11 && Timedown<= 22){
//					Buffer = Buffer << 1;  
//					
//				}
//				else if(Timedown>=3 && Timedown<= 9){
//					Buffer = Buffer << 1;
//					Buffer = Buffer + 1;
//					
//				}
//                else{
//					Count=0;
//                    Bit=8;
//                    Buffer=0;
//                    Start=0;
//                    
//                }
//                
//				if(Bit == 0){
//					Bit=8;
//					Data[Count]=RFData[Count];
//					RFData[Count]=Buffer;
//					Count++;
//					
//					if(Count>=3)
//					{
//						
//						Count=0;
//						Start=0;
//						if(Data[0]==RFData[0] && Data[1]==RFData[1] &&Data[2]==RFData[2]) 
//						{
//							DataM[0]=RFData[0];
//							DataM[1]=RFData[1];
//							DataM[2]=RFData[2];
//							
//							Finish=1;
//							Lock=1;
//							
//							
//							
//						}else
//						{
//                         
//                        }
//					} 
//					Buffer=0;
//				}
//			}
//            
//			if(Timedown>=150 && Timedown<=185){ 
//				Start=1;Bit=8;
//				
//            }
//            
//			Frist=0;
//			
//		}
//        Timedown=0;
//	 }
//
//
//
//
//}






//*********************************************************


//void __attribute((interrupt(0x0C))) timer(void)
//{
//	/*Counter++;
//		
//	if(Counter>=Counter_On && counterrgb>=50)
//	{
//		LED1=1;
//	}*/
//	
//	//data_rf=!data_rf;
//	
//	if (LearnRF == 1 && learn_timeout < 100000) learn_timeout++;
//	
//	
//	if(data_rf==0 && Timedown<200){
//		Timedown++;Frist=1;
//        //test_rf=!test_rf;
//	 }
//	 else
//	 {
//		
//        
//		if(Timedown>=190){
//			Finish=0;
//			Timedown=0;
//			
//        }
//        
//		if(Frist==1 && Finish==0)
//        {
//			
//			if(Start==1)
//			{
//				
//				
//				Bit--;
//				if(Timedown>=11 && Timedown<= 22){
//					Buffer = Buffer << 1;  
//					
//				}
//				else if(Timedown>=3 && Timedown<= 9){
//					Buffer = Buffer << 1;
//					Buffer = Buffer + 1;
//					
//				}
//                else{
//					Count=0;
//                    Bit=8;
//                    Buffer=0;
//                    Start=0;
//                    
//                }
//                
//				if(Bit == 0){
//					Bit=8;
//					Data[Count]=RFData[Count];
//					RFData[Count]=Buffer;
//					Count++;
//					
//					if(Count>=3)
//					{
//						
//						Count=0;
//						Start=0;
//						if(Data[0]==RFData[0] && Data[1]==RFData[1] &&Data[2]==RFData[2]) 
//						{
//							DataM[0]=RFData[0];
//							DataM[1]=RFData[1];
//							DataM[2]=RFData[2];
//							
//							Finish=1;
//							Lock=1;
//							
//							
//							
//						}else
//						{
//                         
//                        }
//					} 
//					Buffer=0;
//				}
//			}
//            
//			if(Timedown>=150 && Timedown<=185){ 
//				Start=1;Bit=8;
//				
//            }
//            
//			Frist=0;
//			
//		}
//        Timedown=0;
//	 }
//
//
//
//
//}
