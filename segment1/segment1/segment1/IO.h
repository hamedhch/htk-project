


//#define inpout _pe4
	
	
//#define S_SEG(A,B,C,D,E,F,G)_pa0=A;_pa1=B;_pe2=C;_pe1=D;_pc3=E;_pa7=F;_pa6=G;
//#define COM(F,R,T,O) _pa5=O;_pe3=T;_pe0=R;_pc2=F;
//#define OUT()_pbc3=0;_pbc2=0;_pbc1=0;_pec1=0;_pbc4=0;_pcc0=0;_pbc5=0;_pec4=1;_pec3=0;_pac0=0;_pac2=0;  _pac6=0;_pac7=0;_pcc2=0;_pec0=0;_pcc3=0;_pac1=0;_pec2=0;_pac5=0;_pcc1=0;_pec5=0;
	
	


// ????? ???????? ??? (???????? ??????)
#define ANODE_1  _pa0
#define ANODE_2  _pa2
#define ANODE_3  _pe3
#define ANODE_4  _pe2
#define ANODE_5  _pc1
#define ANODE_6  _pc0
#define ANODE_7  _pa6
#define ANODE_8  _pa7
// ????? ???????? ???? (???????? ??????)
#define CATHODE_1  _pc2
#define CATHODE_2  _pc3
#define CATHODE_3  _pe0
#define CATHODE_4  _pe1
#define CATHODE_5  _pb6
#define CATHODE_6  _pb7
#define CATHODE_7  _pb2
#define CATHODE_8  _pb3
#define CATHODE_9  _pe5
#define CATHODE_10 _pe4
#define CATHODE_11 _pa3
#define CATHODE_12 _pa4
#define CATHODE_13 _pb5
#define CATHODE_14 _pb4
#define CATHODE_15 _pb1
#define CATHODE_16 _pb0

	

const unsigned char numbers[14][8] = {
    {0x00, 0x7E, 0x81, 0x81, 0x91, 0x91, 0xF2, 0x00}, // 0
    {0x00, 0x00, 0x00, 0x82, 0xFF, 0x80, 0x00, 0x00}, // 1
    {0x00, 0xC2, 0xA1, 0x91, 0x91, 0x91, 0x8E, 0x00}, // 2
    {0x00, 0x42, 0x89, 0x89, 0x89, 0x89, 0x76, 0x00}, // 3
    {0x00, 0x30, 0x28, 0x24, 0x22, 0xFF, 0x20, 0x00}, // 4
    {0x00, 0x4F, 0x89, 0x89, 0x89, 0x89, 0x71, 0x00}, // 5
    {0x00, 0x7E, 0x89, 0x89, 0x89, 0x89, 0x72, 0x00}, // 6
    {0x00, 0x01, 0x01, 0xE1, 0x11, 0x09, 0x07, 0x00}, // 7
    {0x00, 0x76, 0x89, 0x89, 0x89, 0x89, 0x76, 0x00}, // 8
    {0x00, 0x4E, 0x91, 0x91, 0x91, 0x91, 0x7E, 0x00}, // 9
    {0xFF, 0xFF, 0xFF, 0x07, 0x07, 0x07, 0x07, 0x07}, // UP
    {0x07, 0x07, 0x07, 0x07, 0x07, 0xFF, 0xFF, 0xFF}, // DN
};

const unsigned char jahatUP[8][8] = {
    { 0xFF, 0xFF, 0xFF, 0x07, 0x07, 0x07, 0x07, 0x07 }, // ÌåÊ ÈÇáÇ
    { 0xFF, 0xFF, 0x03, 0x03, 0x03, 0x03, 0x03, 0x83 }, // ÌåÊ Çííä
    { 0xFF, 0x01, 0x01, 0x01, 0x01, 0x01, 0xC1, 0xC1 }, // ÌåÊ 
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0xE0, 0xE0 }, // ÌåÊ ÑÇÓÊ
    { 0x00, 0x00, 0x00, 0x00, 0xF0, 0xF0, 0xF0, 0x70 }, // ÊæÞÝ
    { 0x00, 0x00, 0x00, 0xF8, 0xF8, 0xF8, 0x38, 0x38 }, // ÍÑ˜Ê ÓÑíÚ
    { 0x00, 0x00, 0xFC, 0xFC, 0xFC, 0x1C, 0x1C, 0x1C }, // ÍÑ˜Ê ÂåÓÊå
    { 0x00, 0xFE, 0xFE, 0xFE, 0x0E, 0x0E, 0x0E, 0x0E }  // ÍÇáÊ ÎÇÕ
};


const unsigned char jahatDN[8][8] = {
    { 0xE0, 0xE0, 0xE0, 0xE0, 0xE0, 0xFF, 0xFF, 0xFF }, // Çæá
    { 0xC1, 0xC0, 0xC0, 0xC0, 0xC0, 0xC0, 0xFF, 0xFF }, // Ïæã
    { 0x83, 0x83, 0x80, 0x80, 0x80, 0x80, 0x80, 0xFF }, // Óæã
    { 0x07, 0x07, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00 }, // åÇÑã
    { 0x0E, 0x0F, 0x0F, 0x0F, 0x00, 0x00, 0x00, 0x00 }, // äÌã
    { 0x1C, 0x1C, 0x1F, 0x1F, 0x1F, 0x00, 0x00, 0x00 }, // ÔÔã
    { 0x38, 0x38, 0x38, 0x3F, 0x3F, 0x3F, 0x00, 0x00 }, // åÝÊã
    { 0x70, 0x70, 0x70, 0x70, 0x7F, 0x7F, 0x7F, 0x00 }  // åÔÊã
};


const unsigned char jahatDOOR[8][8] = {
	
	{0xFF, 0xFF, 0xFF, 0x07, 0x07, 0x07, 0x07, 0x07},
	{0xFF, 0xFF, 0xFF, 0x07, 0x07, 0x07, 0x07, 0x07},
	{0xFF, 0xFF, 0xFF, 0x07, 0x07, 0x07, 0x07, 0x07},
	{0xFF, 0xFF, 0xFF, 0x07, 0x07, 0x07, 0x07, 0x07},
	{0xFF, 0xFF, 0xFF, 0x07, 0x07, 0x07, 0x07, 0x07},
	{0xFF, 0xFF, 0xFF, 0x07, 0x07, 0x07, 0x07, 0x07},
	{0xFF, 0xFF, 0xFF, 0x07, 0x07, 0x07, 0x07, 0x07},
	{0xFF, 0xFF, 0xFF, 0x07, 0x07, 0x07, 0x07, 0x07},

};

//unsigned char shift(unsigned char value , int count) {
//	
//	unsigned char firstBits=0,remainingBits=0;
//	
//	switch(count) {
//        case 1: firstBits = (value & 0b10000000) >> 1;remainingBits = value & 0b01111111;break;
//        case 2: firstBits = (value & 0b11000000) >> 1;remainingBits = value & 0b00111111;break;
//        case 3: firstBits = (value & 0b11100000) >> 1;remainingBits = value & 0b00011111;break;
//        case 4: firstBits = (value & 0b11110000) >> 1;remainingBits = value & 0b00001111;break;
//        case 5: firstBits = (value & 0b11111000) >> 1;remainingBits = value & 0b00000111;break;
//        case 6: firstBits = (value & 0b11111100) >> 1;remainingBits = value & 0b00000011;break;
//        case 7: firstBits = (value & 0b11111110) >> 1;remainingBits = value & 0b00000001;break;
//        
//    }
//    
//	return firstBits | remainingBits;
//}
	
	
void initMatrix() {
    
    _pac0 = _pac2 = _pec3 = _pec2 = _pcc1 = _pcc0 = _pac6 = _pac7 = 0;

    
    _pcc2 = _pcc3 = _pec0 = _pec1 = _pbc6 = _pbc7 = _pbc2 = _pbc3 = 0;
    _pec5 = _pec4 = _pac3 = _pac4 = _pbc5 = _pbc4 = _pbc1 = _pbc0 = 0;
    
    
    GCC_DELAY(100);
}	
	
void cleardisplay() {
	
	ANODE_1=ANODE_2=ANODE_3=ANODE_4=ANODE_5=ANODE_6=ANODE_7=ANODE_8=0;
	CATHODE_1=CATHODE_2=CATHODE_3=CATHODE_4=CATHODE_5=CATHODE_6=CATHODE_7=CATHODE_8=0;
	CATHODE_9=CATHODE_10=CATHODE_11=CATHODE_12=CATHODE_13=CATHODE_14=CATHODE_15=CATHODE_16=0;

}
	

// ???? ???? ???? ?? LED ???
//void lightUpPixel(int row, int col) {
//    // ????? ???? ??? LED??
//    cleardisplay();
//
//    // ???? ???? ??? ???? ???
//    switch(row) {
//    	
//    	case 0X00: S_SEG(0,0,0,0,0,0,1); break;
//    	
//        /*case 1: ANODE_1 = 1; break;
//        case 2: ANODE_2 = 1; break;
//        case 3: ANODE_3 = 1; break;
//        case 4: ANODE_4 = 1; break;
//        case 5: ANODE_5 = 1; break;
//        case 6: ANODE_6 = 1; break;
//        case 7: ANODE_7 = 1; break;
//        case 8: ANODE_8 = 1; break;*/
//    }
//
//    // ???? ???? ???? ???? ???
//    switch(col) {
//        case 1: CATHODE_1 = 1; break;
//        case 2: CATHODE_2 = 1; break;
//        case 3: CATHODE_3 = 1; break;
//        case 4: CATHODE_4 = 1; break;
//        case 5: CATHODE_5 = 1; break;
//        case 6: CATHODE_6 = 1; break;
//        case 7: CATHODE_7 = 1; break;
//        case 8: CATHODE_8 = 1; break;
//        case 9: CATHODE_9 = 1; break;
//        case 10: CATHODE_10 = 1; break;
//        case 11: CATHODE_11 = 1; break;
//        case 12: CATHODE_12 = 1; break;
//        case 13: CATHODE_13 = 1; break;
//        case 14: CATHODE_14 = 1; break;
//        case 15: CATHODE_15 = 1; break;
//        case 16: CATHODE_16 = 1; break;
//    }
//}





// ???? ???? ????? ?? ??? ???? ??? ??? ??????









// ???? ????? ?? ???
//void displayNumber(int num) {
//    // ???? ????????? ????? ? ?? ? ??? ??? ??????
//    const int numbers[10][8] = {
//        {0x3C, 0x42, 0x46, 0x5A, 0x62, 0x42, 0x3C, 0x00}, // 0
//        {0x18, 0x38, 0x18, 0x18, 0x18, 0x18, 0x7E, 0x00}, // 1
//        {0x3C, 0x42, 0x02, 0x0C, 0x30, 0x60, 0x7E, 0x00}, // 2
//        {0x3C, 0x42, 0x02, 0x1C, 0x02, 0x42, 0x3C, 0x00}, // 3
//        {0x0C, 0x14, 0x24, 0x44, 0x7E, 0x04, 0x04, 0x00}, // 4
//        {0x7E, 0x40, 0x7C, 0x02, 0x02, 0x42, 0x3C, 0x00}, // 5
//        {0x3C, 0x42, 0x40, 0x7C, 0x42, 0x42, 0x3C, 0x00}, // 6
//        {0x7E, 0x42, 0x04, 0x08, 0x10, 0x10, 0x10, 0x00}, // 7
//        {0x3C, 0x42, 0x42, 0x3C, 0x42, 0x42, 0x3C, 0x00}, // 8
//        {0x3C, 0x42, 0x42, 0x3E, 0x02, 0x42, 0x3C, 0x00}  // 9
//    };
//	
//	 lightUpPixel(1, numbers[num][1]);
//	 
//    /*for (int i = 0; i < 8; i++) {
//        lightUpPixel(i + 1, numbers[num][i]);
//    }*/
//}

	
	
	
	
	
/*	
	
	
	
				
void IO_INIT()
{
	OUT();
	GCC_DELAY(100);
	
}


volatile unsigned char Bip=0, CNT_DISP=0,Disp=0,Seletion=1,Display=2,Hrs=21,Min=50,S=0,Temp=0,Sec=0;
volatile unsigned char May=4,Day=16,H124=24;
volatile unsigned int Yer=1403,Belink=0,Biper=0;
const int Lookup[8]={1,5,9,13,17,22,26,30};
const int LookTime[24]={12,13,14,15,16,17,18,19,20,21,22,23,0,
					1,2,3,4,5,6,7,8,9,10,11};
volatile unsigned char Kab=0,Ok=0,CountOn=0,State=0,CountTemp=0;
volatile bit Lock,Dot=0,Seg1,Seg2,Seg3,Belinker,Belinking,PM1,PM2,SetTime,SetAlarm,Litgh,q1,q2;

void Displayer(char Select)
{
	switch(Select)
    {
		case 0X00: S_SEG(0,0,0,0,0,0,1); break;//0
        case 0X01: S_SEG(1,0,0,1,1,1,1); break;//1
        case 0X02: S_SEG(0,0,1,0,0,1,0); break;//2
        case 0X03: S_SEG(0,0,0,0,1,1,0); break;//3
        case 0X04: S_SEG(1,0,0,1,1,0,0); break;//4
        case 0X05: S_SEG(0,1,0,0,1,0,0); break;//5
        case 0X06: S_SEG(0,1,0,0,0,0,0); break;//6
        case 0X07: S_SEG(0,0,0,1,1,1,1); break;//7
        case 0X08: S_SEG(0,0,0,0,0,0,0); break;//8
        case 0X09: S_SEG(0,0,0,0,1,0,0); break;//9
        //case 0X0A: S_SEG(0,0,0,1,0,0,0); break;//A
        //case 0X0B: S_SEG(1,1,0,0,0,0,0); break;//B
        case 0X0C: S_SEG(0,1,1,0,0,0,1); break;//C
        //case 0X0D: S_SEG(1,0,0,0,0,1,0); break;//D
        //case 0X0E: S_SEG(0,1,1,0,0,0,0); break;//E
        case 0X0F: S_SEG(0,1,1,1,0,0,0); break;//F
        case 0X28: S_SEG(1,1,0,1,0,1,0); break;// n
        //case 0X21: S_SEG(1,1,1,1,1,1,1); break;// OFF
    }
}

volatile unsigned char Y1,Y2,Y3,Y4,M1,M2,D1,D2,H1,H2,N1,N2,T1,T2,S1,S2,TM1,TM2;
volatile unsigned char H1T1,H1T2,H2T1,H2T2,N1T1,N1T2,N2T1,N2T2,Hrs1=6,Hrs2=5,Min1=0,Min2=30;

void Math()
{
	
	H1 = Hrs/10;
	H2 = Hrs%10;
	N1 = Min/10;
	N2 = Min%10;
	
}

void DispTimer(char Blk1, char Blk2)
{
    Disp++;
    switch(Disp)
    {
		case 5:COM(0,0,0,0);if(Blk1==1){Displayer(H1);COM(1,0,0,0);}break;
		case 7:if(Blk1==1){Displayer(H1);COM(1,0,0,0);}break;
		case 8:if(Blk1==1){Displayer(H1);COM(1,0,0,0);}break;
		case 10:if(Blk1==1){Displayer(H1);COM(1,0,0,0);}break;
		case 15:COM(0,0,0,0);if(Blk1==1){Displayer(H2);COM(0,1,0,0);}break;
	    case 18:COM(0,0,0,0);if(Blk2==1){Displayer(N1);DOT=Dot;COM(0,0,1,0);}break;
	    case 20:COM(0,0,0,0);if(Blk2==1){Displayer(N2);COM(0,0,0,1);}break;
	    case 25:if(Blk2==1){Displayer(N2);COM(0,0,0,1);}Disp=0;break;
	    //default: if(Litgh==1){COM(0,0,0,0,0);}break;
	}
}

void DispTemp()
{   
    Disp++;
    switch(Disp)
    {
		case 5:COM(0,0,0,0);Displayer(T1);COM(0,1,0,0);break;
		case 10:COM(0,0,0,0);Displayer(T2);COM(0,0,1,0);break;
	    case 15:COM(0,0,0,0);Displayer(12);COM(0,0,0,1);Disp=0;break;
	    //default: if(Litgh==1){COM(0,0,0,0,0);}break;
	}
}
*/


//void DispYear()
//{
//    if(Belinker==1){Disp++;}else{Disp=25;}
//    switch(Disp)
//    {
//		case 5: COM(0,0,0,0,0);Displayer(Y1);COM(1,0,0,0,0);break;
//		case 10: COM(0,0,0,0,0);Displayer(Y2);COM(0,1,0,0,0);break;
//	   	case 15: COM(0,0,0,0,0);Displayer(Y3);COM(0,0,1,0,0);break;
//	    case 20: COM(0,0,0,0,0);Displayer(Y4);COM(0,0,0,1,0);break;
//	    case 25: COM(0,0,0,0,0);Disp=0;break;
//	    default: if(Litgh==1){COM(0,0,0,0,0);}break;
//    }
//}
//
//void DispDate(char Blk1, char Blk2)
//{
//    Disp++;
//    switch(Disp)
//    {
//		case 5:COM(0,0,0,0,0);if(Blk1==1){Displayer(M1);COM(1,0,0,0,0);}break;
//		case 10:COM(0,0,0,0,0);if(Blk1==1){Displayer(M2);COM(0,1,0,0,0);}break;
//	    case 15:COM(0,0,0,0,0);if(Blk2==1){Displayer(D1);COM(0,0,1,0,0);}break;
//	    case 20:COM(0,0,0,0,0);if(Blk2==1){Displayer(D2);COM(0,0,0,1,0);}break;
//	    case 25:COM(0,0,0,0,0);Disp=0;break;
//	    default: if(Litgh==1){COM(0,0,0,0,0);}break;
//	}
//}
//
//void DispSetTimer(char Blk1, char Blk2)
//{
//	Disp++;
//    switch(Disp)
//    {
//		case 5:COM(0,0,0,0,0);if(Blk1==1){S_SEG(1,1,1,0,0,0,0);COM(1,0,0,0,0);}break;
//		case 10:COM(0,0,0,0,0);if(Blk1==1){Displayer(TM1);COM(0,1,0,0,0);}break;
//	    case 15:COM(0,0,0,0,0);if(Blk2==1){Displayer(0);COM(0,0,1,0,0);}break;
//	    case 20:COM(0,0,0,0,0);if(Blk2==1){Displayer(TM2);COM(0,0,0,1,0);}break;
//	    case 25:COM(0,0,0,0,0);if(Blk2==1){S_SEG(1,Seg1,Seg2,Seg3,1,1,1);COM(0,0,0,0,1);}Disp=0;break;
//		default: if(Litgh==1){COM(0,0,0,0,0);}break;
//	}
//}
//
//void DispSetTime()
//{
//    if(Belinker==1){Disp++;}else{Disp=25;}
//    switch(Disp)
//    {
//		case 5:COM(0,0,0,0,0);Displayer(S1);COM(1,0,0,0,0);break;
//		case 10:COM(0,0,0,0,0);Displayer(S2);COM(0,1,0,0,0);break;
//	    case 15:COM(0,0,0,0,0);S_SEG(1,1,0,1,0,0,0);COM(0,0,1,0,0);break;
//	    case 20:COM(0,0,0,0,0);break;
//	    case 25:COM(0,0,0,0,0);Disp=0;break;
//	    default: if(Litgh==1){COM(0,0,0,0,0);}break;
//	}
//}
//
//void DispSetTiming1(char Blk1, char Blk2)
//{
//    Disp++;
//    switch(Disp)
//    {
//		case 5:COM(0,0,0,0,0);if(Blk1==1){Displayer(H1T1);COM(1,0,0,0,0);}break;
//		case 10:COM(0,0,0,0,0);if(Blk1==1){Displayer(H1T2);COM(0,1,0,0,0);}break;
//	    case 15:COM(0,0,0,0,0);if(Blk2==1){Displayer(N1T1);COM(0,0,1,0,0);}break;
//	    case 20:COM(0,0,0,0,0);if(Blk2==1){Displayer(N1T2);COM(0,0,0,1,0);}break;
//	    case 25:COM(0,0,0,0,0);S_SEG(1,1,1,1,0,0,1);COM(0,0,0,0,1);if(Blk2==1){S_SEG(1,PM1,Seg2,Seg3,0,0,1);}Disp=0;break;
//		default: if(Litgh==1){COM(0,0,0,0,0);}break;
//	}
//}
//
//void DispSetTiming2(char Blk1, char Blk2)
//{
//    Disp++;
//    switch(Disp)
//    {
//		case 5:COM(0,0,0,0,0);if(Blk1==1){Displayer(H2T1);COM(1,0,0,0,0);}break;
//		case 10:COM(0,0,0,0,0);if(Blk1==1){Displayer(H2T2);COM(0,1,0,0,0);}break;
//	    case 15:COM(0,0,0,0,0);if(Blk2==1){Displayer(N2T1);COM(0,0,1,0,0);}break;
//	    case 20:COM(0,0,0,0,0);if(Blk2==1){Displayer(N2T2);COM(0,0,0,1,0);}break;
//	    case 25:COM(0,0,0,0,0);S_SEG(1,1,1,1,0,0,1);COM(0,0,0,0,1);if(Blk2==1){S_SEG(1,PM2,Seg2,Seg3,0,0,1);}Disp=0;break;
//		default: if(Litgh==1){COM(0,0,0,0,0);}break;	
//	}
//}