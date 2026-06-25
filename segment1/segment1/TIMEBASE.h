

#define EMI(x) _emi = x;
#define TB1_ONF(x) _tb1on = x; // On : 1 , Off : 0
#define TB0_ONF(x) _tb0on = x; // On : 1 , Off : 0

//#define TB1_FRQ() _clksel11=0; _clksel10=0; //FSYS/1
#define TB1_FRQ() _clksel11=0; _clksel10=1; //FSYS/4
//#define TB1_FRQ() _clksel11=1; _clksel10=0; //FSUB/1
//#define TB1_FRQ() _clksel11=1; _clksel10=1; //FSUB/1

//#define TB0_FRQ() _clksel01=0; _clksel00=0; //FSYS/1
//#define TB0_FRQ() _clksel01=0; _clksel00=1; //FSYS/4
#define TB0_FRQ() _clksel01=1; _clksel00=0; //FSUB/1
//#define TB0_FRQ() _clksel01=1; _clksel00=1; //FSUB/1

//#define TB1() _tb12 = 0; _tb11 = 0; _tb10 = 0 //Div2_8
//#define TB1() _tb12 = 0; _tb11 = 0; _tb10 = 1 //Div2_9
#define TB1() _tb12 = 0; _tb11 = 1; _tb10 = 0; //Div2_10
//#define TB1() _tb12 = 0; _tb11 = 1; _tb10 = 1; //Div2_11
//#define TB1() _tb12 = 1; _tb11 = 0; _tb10 = 0 //Div2_12
//#define TB1() _tb12 = 1; _tb11 = 0; _tb10 = 1 //Div2_13
//#define TB1() _tb12 = 1; _tb11 = 1; _tb10 = 0 //Div2_14
//#define TB1() _tb12 = 1; _tb11 = 1; _tb10 = 1   //Div2_15

#define TB0() _tb02 = 0; _tb01 = 0; _tb00 = 0 //Div2_8
//#define TB0() _tb02 = 0; _tb01 = 0; _tb00 = 1 //Div2_9
//#define TB0() _tb02 = 0; _tb01 = 1; _tb00 = 0 //Div2_10
//#define TB0() _tb02 = 0; _tb01 = 1; _tb00 = 1 //Div2_11
//#define TB0() _tb02 = 1; _tb01 = 0; _tb00 = 0 //Div2_12
//#define TB0() _tb02 = 1; _tb01 = 0; _tb00 = 1 //Div2_13
//#define TB0() _tb02 = 1; _tb01 = 1; _tb00 = 0 //Div2_14
///#define TB0() _tb02 = 1; _tb01 = 1; _tb00 = 1   //Div2_15

#define TB0_ENB(x) _tb0e = x;//EN : 1 , DI : 0
#define	TB0_FLG(x) _tb0f = x;

#define TB1_ENB(x) _tb1e = x;//EN : 1 , DI : 0
#define	TB1_FLG(x) _tb1f = x;


volatile  int newnaumber=0, oldnaumber=0, n=0,nj=0,UP=0 , DN=0,R=0, row=0;
volatile int  rizesh=8 , conter8=0 ,uart_s=0;
volatile unsigned long ni=0;
volatile unsigned char tens_digit=0;

volatile unsigned char MODE = 0;

#define MODE_NORMAL 0
#define MODE_OV 1
#define MODE_DOOR 2


void TB0_INIT()
{
 TB0_FRQ();
 TB0_ONF(1);
 TB0();
 TB0_ENB(1);
 TB0_FLG(0);
 EMI(1);
}

void TB1_INIT()
{
 TB1_FRQ();
 TB1_ONF(1);
 TB1();
 TB1_ENB(1);
 TB1_FLG(0);
 EMI(1);
}

void Date();

void __attribute((interrupt(0x24))) TB0_ISR(void)
{

	
	/*n++;
	
	if(n>300){
		n=0;
		uart_s=0;
		UP?newnaumber++:newnaumber--;
	}
	if (newnaumber>8)DN=UP,UP=!UP;
	if (newnaumber<1)DN=UP,UP=!UP;*/
	
	
	
	nj++;//”—⁄  ÕÂ 
	
	
	if(MODE==MODE_OV){
		
		if(nj>20)nj=0,conter8++;
		if (conter8>=2)conter8=0;
	}
	
	/* ---------- MODE : DOOR ---------- */
	
	else if(MODE==MODE_DOOR){
		
		if(nj>17)nj=0,conter8++;
		if (conter8>=5)conter8=0;
	}
	
	/* ---------- MODE : NORMAL ---------- */
	
	else{
		if(nj>12)nj=0,conter8++;
		if (conter8>=8)conter8=0;
	}

	
	
	
	
	ni++;//”—⁄   ⁄œœ
	if(ni>3  && oldnaumber!=newnaumber){
		ni=0;
		R++;
	}
	
		
	GCC_CLRWDT();
}










void __attribute((interrupt(0x28))) TB1_ISR(void)
{
	GCC_CLRWDT();
	
	row++;
	if(row>=8)row=0;
	
    cleardisplay();
   
    switch(row) {
        case 0: ANODE_1 = 1;break;
        case 1: ANODE_2 = 1;break;
        case 2: ANODE_3 = 1;break;
        case 3: ANODE_4 = 1;break;
        case 4: ANODE_5 = 1;break;
        case 5: ANODE_6 = 1;break;
        case 6: ANODE_7 = 1;break;
        case 7: ANODE_8 = 1;break;
    }
	
	unsigned char row_data=0;
	unsigned char jahat=0;
	
	/* ---------- MODE : OVERLOAD ---------- */
	
	if(MODE==MODE_OV){
	
	    row_data = numbers[13][row];
	
	    jahat = OVL[conter8][row];   // Ì« «ê— »⁄œ« OVL ”«Œ Ì
	
	}
	
	/* ---------- MODE : DOOR ---------- */
	
	else if(MODE==MODE_DOOR){
	
	    row_data = numbers[oldnaumber][row];
	
	    jahat = jahatDOOR[conter8][row];
	
	}
	
	/* ---------- MODE : NORMAL ---------- */
	
	else{
	
	    if(UP) jahat = jahatUP[conter8][row];
	
	    if(DN) jahat = jahatDN[conter8][row];
	
	    if(oldnaumber!=newnaumber){
	
	        if(UP){
	
	            if(R<8){
	            	
	                if(tens_digit != 0x7F)
					{
					    row_data = alamat[tens_digit][row] | numbers_yekan[newnaumber][row]  << R;
					}
					else
					{
					    row_data = numbers[newnaumber][row]  << R;
					}
	            }
	
	            if(R>=8 && R<16){
	            	
	                if(tens_digit != 0x7F)
					{
					    row_data = alamat[tens_digit][row] | numbers_yekan[newnaumber][row] >> (16-R);
					}
					else
					{
					    row_data = numbers[newnaumber][row] >> (16-R);
					}
	            }
	
	            if(R>=16){
	                R=0;
	                oldnaumber=newnaumber;
	            }
	        }
	        else if(DN){
	
	            if(R<8){
	            	
	                if(tens_digit != 0x7F)
					{
					    row_data = alamat[tens_digit][row] | numbers_yekan[newnaumber][row]  >> R;
					}
					else
					{
					    row_data = numbers[newnaumber][row]  >> R;
					}
	            }
	
	            if(R>=8 && R<16){
	            	
	                if(tens_digit != 0x7F)
					{
					    row_data = alamat[tens_digit][row] | numbers_yekan[newnaumber][row] << (16-R);
					}
					else
					{
					    row_data = numbers[newnaumber][row] << (16-R);
					}
	            }
	
	            if(R>=16){
	                R=0;
	                oldnaumber=newnaumber;
	            }
	
	        }else{
	        	oldnaumber=newnaumber;
	        }
	
	    }
	    else{
	
	        if(tens_digit != 0x7F)
			{
			    row_data =
			        alamat[tens_digit][row] |
			        numbers_yekan[newnaumber][row];
			}
			else
			{
			    row_data = numbers[newnaumber][row];
			}
				
	    }
	
	}

	
		
		
		
		
        CATHODE_1 = (row_data & 0x01) ? 1 : 0 ;
        CATHODE_2 = (row_data & 0x02) ? 1 : 0 ;
        CATHODE_3 = (row_data & 0x04) ? 1 : 0 ;
        CATHODE_4 = (row_data & 0x08) ? 1 : 0 ;
        CATHODE_5 = (row_data & 0x10) ? 1 : 0 ;
        CATHODE_6 = (row_data & 0x20) ? 1 : 0 ;
        CATHODE_7 = (row_data & 0x40) ? 1 : 0 ;
        CATHODE_8 = (row_data & 0x80) ? 1 : 0 ;

       
    	CATHODE_9  = (jahat & 0x01) ? 1 : 0 ;
        CATHODE_10 = (jahat & 0x02) ? 1 : 0 ;
        CATHODE_11 = (jahat & 0x04) ? 1 : 0 ;
        CATHODE_12 = (jahat & 0x08) ? 1 : 0 ;
        CATHODE_13 = (jahat & 0x10) ? 1 : 0 ;
        CATHODE_14 = (jahat & 0x20) ? 1 : 0 ;
        CATHODE_15 = (jahat & 0x40) ? 1 : 0 ;
        CATHODE_16 = (jahat & 0x80) ? 1 : 0 ;
        
       	
    
    
}
