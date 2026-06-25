#ifndef _DEFINES_H
#define _DEFINES_H

typedef unsigned long ulong;
typedef unsigned int uint;
typedef unsigned char uchar;
typedef unsigned char bool;
#define true 1
#define false 0 


#define SIG_DOOR 	(!_pa5) //active low PRIDE

#define SIG_FINGER 	_pa1
#define SIG_BATT 	_pa4
#define LIGHT		_pa2
#define LED_BLUE    _pa3


#define FINGER_FOCUS_ON		400

#define SHORT_DELAY			10000
#define LONG_DELAY          20000

#endif
