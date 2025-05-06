
#define S_SEG(A,B,C,D,E,F,G)_pa0=A;_pa1=B;_pe2=C;_pe1=D;_pc3=E;_pa7=F;_pa6=G;
#define COM(F,R,T,O) _pa5=O;_pe3=T;_pe0=R;_pc2=F;
#define OUT()_pbc3=0;_pbc2=0;_pbc1=0;_pec1=0;_pbc4=0;_pcc0=0;_pbc5=0;_pec4=1;_pec3=0;_pac0=0;_pac2=0;  _pac6=0;_pac7=0;_pcc2=0;_pec0=0;_pcc3=0;_pac1=0;_pec2=0;_pac5=0;_pcc1=0;_pec5=0;

#define BUZ _pe5

#define inpout _pe4

#define DOT _pa2

#define LED_B1 _pc0
#define LED_B2 _pb3
#define LED_W1 _pb1
#define LED_W2 _pb2

#define OUT1  _pb4
#define OUT2  _pb5

				
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