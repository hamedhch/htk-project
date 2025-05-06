
#define IRREC _pa6
#define IRTRN _pa5
#define TRIAC _pa7 //OUT

#define LED_1 _pa0 //ON
#define LED_2 _pa1 //OFF

#define ZEROC _pa2 


#define IO() _pac=0b01000100;

void IO_INIT()
{
 IO();
 IRTRN=0;
 TRIAC=1;
 LED_1=0;
 LED_2=1;
}
	
	
