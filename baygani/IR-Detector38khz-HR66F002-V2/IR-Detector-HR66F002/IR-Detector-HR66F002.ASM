#pragma debug scope 1 1
#line 7 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
__stm0ah EQU [02dH]
__stm0al EQU [02cH]
__stm0dh EQU [02bH]
__stm0dl EQU [02aH]
__stm0c1 EQU [029H]
__stm0c0 EQU [028H]
__pasr EQU [026H]
__rstc EQU [025H]
__sadc2 EQU [024H]
__sadc1 EQU [023H]
__sadc0 EQU [022H]
__sadoh EQU [021H]
__sadol EQU [020H]
__eed EQU [01fH]
__eea EQU [01eH]
__smod1 EQU [01cH]
__tbc EQU [01bH]
__wdtc EQU [019H]
__ifs0 EQU [018H]
__pawu EQU [017H]
__papu EQU [016H]
__pac EQU [015H]
__pa EQU [014H]
__mfi0 EQU [011H]
__intc1 EQU [0fH]
__intc0 EQU [0eH]
__integ EQU [0dH]
__smod EQU [0bH]
__status EQU [0aH]
__tblh EQU [08H]
__tblp EQU [07H]
__pcl EQU [06H]
__acc EQU [05H]
__bp EQU [04H]
__mp1 EQU [03H]
__iar1 EQU [02H]
__mp0 EQU [01H]
__iar0 EQU [00H]
@Delay_10us .SECTION 'CODE'
PUBLIC _Delay_10us
_Delay_10us PROC
#pragma debug scope 2 1 ; 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR1
L2:
#pragma debug scope 3 2 ; 13 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 13 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 14 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 15 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 16 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 17 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR WDT
L3:
#line 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 2 1 ; 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR b0_1
SZ CR1
SET b0_1.0
INC b0_1
CLR CR1
SZ b0_1.0
SET CR1
#line 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR b0_1
SZ CR1
SET b0_1.0
MOV A,b0_1
SUB A,01h
SNZ [0Ah].0
JMP L2
L1:
RET
LOCAL b0_1 DB ?
#line 9 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR1 DBIT ; i_u
#pragma debug variable 2 2 CR1 i_u
_Delay_10us ENDP
#line 24 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
@Delay_Chek .SECTION 'CODE'
PUBLIC _Delay_Chek
_Delay_Chek PROC
#pragma debug scope 4 1 ; 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR2
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
JMP L10
L7:
#pragma debug scope 5 4 ; 29 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 29 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CALL _Delay_10us
L8:
#line 27 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 4 1 ; 27 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
INC CR2
L10:
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
MOV A,CR2
SUB A,03h
SNZ [0ah].0
JMP L7
L6:
RET
#line 25 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR2 DB ? ; i
#pragma debug variable 8 4 CR2 i
_Delay_Chek ENDP
#line 35 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
@Delay_1ms .SECTION 'CODE'
PUBLIC _Delay_1ms
_Delay_1ms PROC
#pragma debug scope 6 1 ; 37 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 37 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR3
#line 37 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
JMP L15
L12:
#pragma debug scope 7 6 ; 39 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 39 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 40 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 41 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 42 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 43 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR WDT
L13:
#line 37 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 6 1 ; 37 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
INC CR3
L15:
#line 37 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
MOV A,CR3
SUB A,064h
SNZ [0ah].0
JMP L12
L11:
RET
#line 36 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR3 DB ? ; i_m
#pragma debug variable 8 6 CR3 i_m
_Delay_1ms ENDP
#line 48 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
@Delay_ms .SECTION 'CODE'
PUBLIC _Delay_ms
_Delay_ms PROC
#pragma debug scope 8 1
#line 47 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
PUBLIC Delay_ms0
LOCAL Delay_ms0 DB 2 DUP (?) ; ms
#pragma debug variable 12 8 Delay_ms0 ms
#pragma debug scope 8 1 ; 50 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 50 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR4
CLR CR4[1]
#line 50 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
JMP L20
L17:
#pragma debug scope 9 8 ; 52 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 52 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CALL _Delay_1ms
L18:
#line 50 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 8 1 ; 50 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
INC CR4
SZ [0AH].2
INC CR4[1]
L20:
#line 50 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
MOV A,Delay_ms0[1]
SUB A,CR4[1]
SNZ [0AH].0
JMP L21
SNZ [0AH].2
JMP L17
MOV A,Delay_ms0
SUB A,CR4
SNZ [0AH].0
JMP L21
SNZ [0AH].2
JMP L17
L21:
L16:
RET
#line 49 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR4 DB 2 DUP (?) ; i_m
#pragma debug variable 12 8 CR4 i_m
_Delay_ms ENDP
#line 15 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
@IO_INIT .SECTION 'CODE'
PUBLIC _IO_INIT
_IO_INIT PROC
#pragma debug scope 10 1 ; 16 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
#line 16 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
MOV A,0a0h
MOV __pac,A
#line 17 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
SET [014H].2
#line 18 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
CLR [014H].6
#line 19 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
CLR [014H].0
#line 20 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
SET [014H].1
L22:
RET
_IO_INIT ENDP
#line 37 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@TB0Init .SECTION 'CODE'
PUBLIC _TB0Init
_TB0Init PROC
#pragma debug scope 11 1 ; 38 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 38 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].6
#line 39 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].7
#line 40 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].2
#line 40 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].1
#line 40 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].0
#line 41 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].2
#line 42 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].5
#line 43 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].0
L23:
RET
_TB0Init ENDP
#line 47 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@TB1Init .SECTION 'CODE'
PUBLIC _TB1Init
_TB1Init PROC
#pragma debug scope 12 1 ; 48 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 48 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].6
#line 49 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].7
#line 50 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].5
#line 50 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].4
#line 51 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].3
#line 52 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].6
#line 53 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].0
L24:
RET
_TB1Init ENDP
#line 57 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@TBINIT .SECTION 'CODE'
PUBLIC _TBINIT
_TBINIT PROC
#pragma debug scope 13 1 ; 58 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 58 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].6
#line 59 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].7
#line 60 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].5
#line 60 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].4
#line 61 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].3
#line 62 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].6
#line 63 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].5
#line 63 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].4
#line 64 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].3
#line 65 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].6
#line 66 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].0
L25:
RET
_TBINIT ENDP
#line 70 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@@ISR_TB0 .SECTION AT 08H 'CODE'
RETI
#line 105 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@@ISR_TB1 .SECTION AT 0cH 'CODE'
JMP _ISR_TB1
@ISR_TB1 .SECTION 'CODE'
_ISR_TB1 PROC
MOV V3A,A
MOV A,[0AH]
MOV V3S,A
#pragma debug scope 15 1 ; 106 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 106 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SZ [014H].0
JMP L29
MOV A,01h
MOV CR5,A
JMP L30
L29:
CLR CR5
L30:
MOV A,[014H]
CLR [05H].0
SZ CR5
SET [05H].0
MOV [014H],A
L27:
MOV A,V3S
MOV [0AH],A
MOV A,V3A
RETI
_ISR_TB1 ENDP
RAMBANK 0 @ISR_TB1
@ISR_TB1 .SECTION 'DATA'
CR5 DB ? ; 28
#line 24 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
@EXININIT .SECTION 'CODE'
PUBLIC _EXININIT
_EXININIT PROC
#pragma debug scope 16 1 ; 25 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#line 25 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0DH].1
#line 25 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0DH].0
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [015H].5
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [016H].5
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [018H].1
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [018H].0
#line 27 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0EH].1
#line 28 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [0EH].4
#line 29 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0EH].0
L31:
RET
_EXININIT ENDP
#line 34 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
@@ISR_EXINT .SECTION AT 04H 'CODE'
JMP _ISR_EXINT
@ISR_EXINT .SECTION 'CODE'
_ISR_EXINT PROC
MOV V1A,A
MOV A,[0AH]
MOV V1S,A
MOV A,[03H]
MOV V1MP1,A
MOV A,[04H]
MOV V1BP,A
#pragma debug scope 17 1 ; 35 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#line 35 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
MOV A,BANK _Counter
MOV [04H],A
MOV A,OFFSET _Counter
MOV [03H],A
MOV A,[02H]
MOV b0_12,A
INC [03H]
MOV A,[02H]
MOV b0_12[1],A
MOV A,BANK _Backup
MOV [04H],A
MOV A,OFFSET _Backup
MOV [03H],A
MOV A,b0_12
MOV [02H],A
MOV A,b0_12[1]
INC [03H]
MOV [02H],A
#line 37 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
MOV A,BANK _Counter
MOV [04H],A
MOV A,OFFSET _Counter
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L32:
MOV A,V1MP1
MOV [03H],A
MOV A,V1BP
MOV [04H],A
MOV A,V1S
MOV [0AH],A
MOV A,V1A
RETI
_ISR_EXINT ENDP
RAMBANK 0 @ISR_EXINT
@ISR_EXINT .SECTION 'DATA'
b0_12 DB 2 DUP(?)
#line 14 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 18 1 ; 15 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 15 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _IO_INIT
#line 16 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,064h
MOV Delay_ms0,A
MOV A,00h
MOV Delay_ms0[1],A
CALL _Delay_ms
#line 17 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _TB0Init
#line 18 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,064h
MOV Delay_ms0,A
MOV A,00h
MOV Delay_ms0[1],A
CALL _Delay_ms
#line 19 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _TB1Init
#line 20 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _EXININIT
#line 21 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Detect
MOV [04H],A
MOV A,OFFSET _Detect
MOV [03H],A
CLR [02H]
#line 22 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Timer
MOV [04H],A
MOV A,OFFSET _Timer
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
#line 23 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
CLR [02H]
#line 24 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 24 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L35
L34:
#pragma debug scope 19 18 ; 27 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 27 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CLR WDT
L35:
#line 25 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 18 1 ; 25 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L34
L33:
#line 218 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP $
_main ENDP
#line 10 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _in
@in .SECTION 'DATA'
_in DB ? ; in
#pragma debug variable 8 1 _in in
#line 8 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Pq
@Pq .SECTION 'DATA'
_Pq DB ? ; Pq
#pragma debug variable 4 1 _Pq Pq
#line 8 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Lock
@Lock .SECTION 'DATA'
_Lock DB ? ; Lock
#pragma debug variable 4 1 _Lock Lock
#line 8 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Puls_Count
@Puls_Count .SECTION 'DATA'
_Puls_Count DB ? ; Puls_Count
#pragma debug variable 4 1 _Puls_Count Puls_Count
#line 8 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Detect
@Detect .SECTION 'DATA'
_Detect DB ? ; Detect
#pragma debug variable 4 1 _Detect Detect
#line 7 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Puls_off
@Puls_off .SECTION 'DATA'
_Puls_off DB 4 DUP (?) ;Puls_off
#pragma debug variable 4 1 _Puls_off Puls_off
#line 7 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Puls_on
@Puls_on .SECTION 'DATA'
_Puls_on DB 4 DUP (?) ;Puls_on
#pragma debug variable 4 1 _Puls_on Puls_on
#line 7 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Timer
@Timer .SECTION 'DATA'
_Timer DB 4 DUP (?) ;Timer
#pragma debug variable 4 1 _Timer Timer
#line 31 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _m
@m .SECTION 'DATA'
_m DB 4 DUP (?) ;m
#pragma debug variable 4 1 _m m
#line 30 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Set
@Set .SECTION 'DATA'
_Set DB 2 DUP (?) ;Set
#pragma debug variable 4 1 _Set Set
#line 30 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Counter_Off
@Counter_Off .SECTION 'DATA'
_Counter_Off DB 2 DUP (?) ;Counter_Off
#pragma debug variable 4 1 _Counter_Off Counter_Off
#line 30 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Counter_On
@Counter_On .SECTION 'DATA'
_Counter_On DB 2 DUP (?) ;Counter_On
#pragma debug variable 4 1 _Counter_On Counter_On
#line 30 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Counter
@Counter .SECTION 'DATA'
_Counter DB 2 DUP (?) ;Counter
#pragma debug variable 4 1 _Counter Counter
#line 30 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Backup
@Backup .SECTION 'DATA'
_Backup DB 2 DUP (?) ;Backup
#pragma debug variable 4 1 _Backup Backup
#line 13 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN V1A:BYTE
EXTERN V1S:BYTE
EXTERN V1MP1:BYTE
EXTERN V1BP:BYTE
EXTERN V3A:BYTE
EXTERN V3S:BYTE
#line 13 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
