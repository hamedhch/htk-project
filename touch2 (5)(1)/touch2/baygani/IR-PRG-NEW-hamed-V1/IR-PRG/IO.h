
#define IRREC _pa7
//#define IRTRN _pa2
#define TRIAC _pa6 //OUT

#define LED_1 _pa0 //ON
#define LED_2 _pa1 //OFF

#define ZEROC _pa5 

                  //76543210
#define IO() _pac=0b10100000;_papu7=1;
void IO_INIT()
{
 IO();
 //IRTRN=0;
 TRIAC=0;
 LED_1=0;
 LED_2=1;
}
	