; ========================================================================================================================
; * Created by: Holtek Touch MCU Workshop, Version 3.5.3.0
; TKS_GLOBE_VARIES.inc
; 10:24:50 PM Friday, August 04, 2023
; ========================================================================================================================
#include "BS83B04A-4.inc"
#define _BS83B04A_
#define _V413_
#define IO              0
#define KEY             1
; Keys' attribute & settings ...
#define KEY1            IO
#define Key1Threshold   16
#define KEY2            IO
#define Key2Threshold   16
#define KEY3            IO
#define Key3Threshold   16
#define KEY4            KEY
#define Key4Threshold   16
#define IO_TOUCH_ATTR   00000000000000000000000000001000b
#define IO_TOUCH_ATTR2  0000b
; Components' settings ...
; Global options' settings ...
#define DebounceTimes   5 	; 80mS
#define AutoCalibrationPeriod 7 	; x 8 (640mS)
#define HighSensitive   0 	; uncheck
#define MaximumKeyHoldTime 0 	; Disable
#define FastResponse    0 	; uncheck
#define AutoFrequencyHopping 0 	; uncheck
#define PowerSave       0 	; uncheck
#define NoiseProtect    0 	; uncheck
#define MovingCalibration 0 	; uncheck
#define GlobeOptionA    (DebounceTimes | (AutoCalibrationPeriod << 4))
#define GlobeOptionB    ((MaximumKeyHoldTime << 4) | HighSensitive)
#define GlobeOptionC    ((NoiseProtect << 4) | (FastResponse << 2) | (AutoFrequencyHopping << 3) | (MovingCalibration << 7) | (PowerSave << 6))
