
#define IRREC _pa7
#define IRTRN _pa2
#define TRIAC _pa6 //OUT

#define LED_1 _pa0 //ON
#define LED_2 _pa1 //OFF

#define ZEROC _pa5 


#define IO() _pac=0b10100000;

void IO_INIT()
{
 IO();
 IRTRN=1;
 TRIAC=0;
 LED_1=1;
 LED_2=0;
}
	
	
