#pragma debug scope 1 1
#line 7 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
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
#pragma debug scope 2 1 ; 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR1
L2:
#pragma debug scope 3 2 ; 13 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 13 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 14 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 15 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 16 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 17 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR WDT
L3:
#line 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 2 1 ; 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR b0_1
SZ CR1
SET b0_1.0
INC b0_1
CLR CR1
SZ b0_1.0
SET CR1
#line 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
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
#line 9 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR1 DBIT ; i_u
#pragma debug variable 2 2 CR1 i_u
_Delay_10us ENDP
#line 24 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
@Delay_Chek .SECTION 'CODE'
PUBLIC _Delay_Chek
_Delay_Chek PROC
#pragma debug scope 4 1 ; 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR2
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
JMP L10
L7:
#pragma debug scope 5 4 ; 28 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 28 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CALL _Delay_10us
L8:
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 4 1 ; 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
INC CR2
L10:
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
MOV A,CR2
SUB A,03h
SNZ [0ah].0
JMP L7
L6:
RET
#line 25 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR2 DB ? ; i
#pragma debug variable 8 4 CR2 i
_Delay_Chek ENDP
#line 34 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
@Delay_1ms .SECTION 'CODE'
PUBLIC _Delay_1ms
_Delay_1ms PROC
#pragma debug scope 6 1 ; 36 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 36 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR3
#line 36 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
JMP L15
L12:
#pragma debug scope 7 6 ; 38 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 38 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 39 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 40 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 41 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 42 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR WDT
L13:
#line 36 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 6 1 ; 36 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
INC CR3
L15:
#line 36 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
MOV A,CR3
SUB A,064h
SNZ [0ah].0
JMP L12
L11:
RET
#line 35 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR3 DB ? ; i_m
#pragma debug variable 8 6 CR3 i_m
_Delay_1ms ENDP
#line 47 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
@Delay_ms .SECTION 'CODE'
PUBLIC _Delay_ms
_Delay_ms PROC
#pragma debug scope 8 1
#line 46 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
PUBLIC Delay_ms0
LOCAL Delay_ms0 DB 2 DUP (?) ; ms
#pragma debug variable 12 8 Delay_ms0 ms
#pragma debug scope 8 1 ; 49 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 49 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR4
CLR CR4[1]
#line 49 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
JMP L20
L17:
#pragma debug scope 9 8 ; 51 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 51 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CALL _Delay_1ms
L18:
#line 49 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 8 1 ; 49 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
INC CR4
SZ [0AH].2
INC CR4[1]
L20:
#line 49 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
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
#line 48 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR4 DB 2 DUP (?) ; i_m
#pragma debug variable 12 8 CR4 i_m
_Delay_ms ENDP
#line 15 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IO.h"
@IO_INIT .SECTION 'CODE'
PUBLIC _IO_INIT
_IO_INIT PROC
#pragma debug scope 10 1 ; 16 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IO.h"
#line 16 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IO.h"
MOV A,044h
MOV __pac,A
#line 17 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IO.h"
CLR [014H].5
#line 18 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IO.h"
SET [014H].7
#line 19 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IO.h"
CLR [014H].0
#line 20 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IO.h"
SET [014H].1
L22:
RET
_IO_INIT ENDP
#line 37 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@TB0Init .SECTION 'CODE'
PUBLIC _TB0Init
_TB0Init PROC
#pragma debug scope 11 1 ; 38 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 38 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].6
#line 39 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].7
#line 40 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].2
#line 40 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].1
#line 40 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].0
#line 41 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].2
#line 42 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].5
#line 43 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].0
L23:
RET
_TB0Init ENDP
#line 47 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@TB1Init .SECTION 'CODE'
PUBLIC _TB1Init
_TB1Init PROC
#pragma debug scope 12 1 ; 48 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 48 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].6
#line 49 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].7
#line 50 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].5
#line 50 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].4
#line 51 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].3
#line 52 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].6
#line 53 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].0
L24:
RET
_TB1Init ENDP
#line 57 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@TBINIT .SECTION 'CODE'
PUBLIC _TBINIT
_TBINIT PROC
#pragma debug scope 13 1 ; 58 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 58 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].6
#line 59 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].7
#line 60 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].5
#line 60 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].4
#line 61 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].3
#line 62 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].6
#line 63 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].5
#line 63 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].4
#line 64 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].3
#line 65 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].6
#line 66 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].0
L25:
RET
_TBINIT ENDP
#line 70 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@@ISR_TB0 .SECTION AT 08H 'CODE'
JMP _ISR_TB0
@ISR_TB0 .SECTION 'CODE'
_ISR_TB0 PROC
MOV V2A,A
MOV A,[0AH]
MOV V2S,A
MOV A,[03H]
MOV V2MP1,A
MOV A,[04H]
MOV V2BP,A
#pragma debug scope 14 1 ; 74 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 74 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
MOV A,BANK _Counter
MOV [04H],A
MOV A,OFFSET _Counter
MOV [03H],A
INC [02H]
#line 75 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
MOV A,[02H]
XOR A,01h
SNZ [0AH].2
JMP L27
#pragma debug scope 15 14 ; 77 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 77 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
MOV A,BANK _Counter_On
MOV [04H],A
MOV A,OFFSET _Counter_On
MOV [03H],A
MOV A,[02H]
MOV b0_9,A
MOV A,BANK _Counter
MOV [04H],A
MOV A,OFFSET _Counter
MOV [03H],A
MOV A,[02H]
SUB A,b0_9
SNZ [0AH].0
JMP L29
#pragma debug scope 16 15 ; 79 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 79 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [014H].7
L29:
#line 81 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#pragma debug scope 15 14 ; 81 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
MOV A,BANK _Counter_On
MOV [04H],A
MOV A,OFFSET _Counter_On
MOV [03H],A
MOV A,[02H]
MOV b0_9,A
MOV A,BANK _Counter_Off
MOV [04H],A
MOV A,OFFSET _Counter_Off
MOV [03H],A
MOV A,b0_9
MOV [02H],A
L27:
#line 83 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#pragma debug scope 14 1 ; 83 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
SZ [02H]
JMP L31
#pragma debug scope 17 14 ; 85 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 85 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
MOV A,BANK _Counter_Off
MOV [04H],A
MOV A,OFFSET _Counter_Off
MOV [03H],A
MOV A,[02H]
MOV b0_9,A
MOV A,BANK _Counter
MOV [04H],A
MOV A,OFFSET _Counter
MOV [03H],A
MOV A,[02H]
SUB A,b0_9
SNZ [0AH].0
JMP L33
#pragma debug scope 18 17 ; 87 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 87 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [014H].7
L33:
#line 89 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#pragma debug scope 17 14 ; 89 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
MOV A,BANK _Backup
MOV [04H],A
MOV A,OFFSET _Backup
MOV [03H],A
MOV A,[02H]
MOV b0_9,A
MOV A,BANK _Counter_On
MOV [04H],A
MOV A,OFFSET _Counter_On
MOV [03H],A
MOV A,b0_9
MOV [02H],A
L31:
L26:
MOV A,V2MP1
MOV [03H],A
MOV A,V2BP
MOV [04H],A
MOV A,V2S
MOV [0AH],A
MOV A,V2A
RETI
_ISR_TB0 ENDP
RAMBANK 0 @ISR_TB0
@ISR_TB0 .SECTION 'DATA'
b0_9 DB ?
#line 94 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@@ISR_TB1 .SECTION AT 0cH 'CODE'
RETI
#line 24 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
@EXININIT .SECTION 'CODE'
PUBLIC _EXININIT
_EXININIT PROC
#pragma debug scope 20 1 ; 25 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#line 25 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0DH].1
#line 25 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0DH].0
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [015H].2
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [016H].2
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [018H].1
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [018H].0
#line 27 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0EH].1
#line 28 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [0EH].4
#line 29 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0EH].0
L36:
RET
_EXININIT ENDP
#line 34 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
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
#pragma debug scope 21 1 ; 35 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#line 35 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
MOV A,BANK _Counter
MOV [04H],A
MOV A,OFFSET _Counter
MOV [03H],A
MOV A,[02H]
MOV b0_12,A
MOV A,BANK _Backup
MOV [04H],A
MOV A,OFFSET _Backup
MOV [03H],A
MOV A,b0_12
MOV [02H],A
#line 37 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
MOV A,BANK _Counter
MOV [04H],A
MOV A,OFFSET _Counter
MOV [03H],A
CLR [02H]
#line 54 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
MOV A,[02H]
XOR A,01h
SNZ [0AH].2
JMP L38
#pragma debug scope 22 21 ; 56 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#line 56 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
MOV A,BANK _Counter_On
MOV [04H],A
MOV A,OFFSET _Counter_On
MOV [03H],A
SZ [02H]
JMP L46
JMP L40
L46:
#pragma debug scope 23 22 ; 57 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#line 57 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
MOV A,BANK _Counter_On
MOV [04H],A
MOV A,OFFSET _Counter_On
MOV [03H],A
DEC [02H]
#line 58 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [014H].7
#line 59 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#pragma debug scope 22 21 ; 59 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
JMP L41
L40:
#pragma debug scope 24 22 ; 60 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#line 60 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
MOV A,BANK _Counter_On
MOV [04H],A
MOV A,OFFSET _Counter_On
MOV [03H],A
CLR [02H]
#line 61 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [014H].7
L41:
L38:
#line 67 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#pragma debug scope 21 1 ; 67 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
SZ [02H]
JMP L42
#pragma debug scope 25 21 ; 69 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#line 69 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [014H].7
#line 70 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
MOV A,BANK _Counter_Off
MOV [04H],A
MOV A,OFFSET _Counter_Off
MOV [03H],A
MOV A,050h
SUB A,[02H]
SNZ [0AH].0
JMP L44
#pragma debug scope 26 25 ; 72 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#line 72 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
MOV A,BANK _Counter_Off
MOV [04H],A
MOV A,OFFSET _Counter_Off
MOV [03H],A
MOV A,02h
ADDM A,[02H]
L44:
L42:
L37:
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
b0_12 DB ?
#line 10 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 27 1 ; 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 11 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _IO_INIT
#line 12 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,064h
MOV Delay_ms0,A
MOV A,00h
MOV Delay_ms0[1],A
CALL _Delay_ms
#line 13 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _TB0Init
#line 14 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _EXININIT
#line 15 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Detect
MOV [04H],A
MOV A,OFFSET _Detect
MOV [03H],A
CLR [02H]
#line 16 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
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
#line 17 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
CLR [02H]
#line 18 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
CLR [02H]
#line 18 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L49
L48:
#pragma debug scope 28 27 ; 21 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 21 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CLR WDT
#line 23 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
SET [014H].5
#line 24 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _Delay_Chek
#line 25 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
SNZ [014H].6
JMP L51
#pragma debug scope 29 28 ; 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 26 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_on
MOV [04H],A
MOV A,OFFSET _Puls_on
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 27 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
INC [02H]
#line 28 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Pq
MOV [04H],A
MOV A,OFFSET _Pq
MOV [03H],A
MOV A,1
MOV [02H],A
#line 29 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 28 27 ; 29 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L52
L51:
#pragma debug scope 30 28 ; 31 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 31 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_off
MOV [04H],A
MOV A,OFFSET _Puls_off
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 32 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
CLR [02H]
#line 33 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Pq
MOV [04H],A
MOV A,OFFSET _Pq
MOV [03H],A
CLR [02H]
L52:
#line 35 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 28 27 ; 35 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CLR [014H].5
#line 36 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _Delay_Chek
#line 37 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
SZ [014H].6
JMP L53
#pragma debug scope 31 28 ; 38 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 38 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_off
MOV [04H],A
MOV A,OFFSET _Puls_off
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 39 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
INC [02H]
#line 40 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Pq
MOV [04H],A
MOV A,OFFSET _Pq
MOV [03H],A
MOV A,[02H]
XOR A,01h
SNZ [0AH].2
JMP L54
#pragma debug scope 32 31 ; 41 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 41 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_on
MOV [04H],A
MOV A,OFFSET _Puls_on
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
#line 42 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_off
MOV [04H],A
MOV A,OFFSET _Puls_off
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
#line 44 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 28 27 ; 44 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L54
L53:
#pragma debug scope 33 28 ; 46 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 46 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_on
MOV [04H],A
MOV A,OFFSET _Puls_on
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 47 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
CLR [02H]
L54:
#line 51 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 28 27 ; 51 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
MOV A,064h
SUB A,[02H]
SZ [0AH].0
JMP L61
MOV A,01h
MOV CR5,A
JMP L62
L61:
CLR CR5
L62:
MOV A,BANK _Lock
MOV [04H],A
MOV A,OFFSET _Lock
MOV [03H],A
SZ [02H]
JMP L63
MOV A,01h
MOV CR6,A
JMP L64
L63:
CLR CR6
L64:
MOV A,CR5
AND A,CR6
MOV b0_13,A
SZ b0_13
JMP L70
JMP L57
L70:
#pragma debug scope 34 28 ; 53 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 53 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Lock
MOV [04H],A
MOV A,OFFSET _Lock
MOV [03H],A
MOV A,1
MOV [02H],A
#line 54 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_on
MOV [04H],A
MOV A,OFFSET _Puls_on
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
#line 55 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_off
MOV [04H],A
MOV A,OFFSET _Puls_off
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
#line 56 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
INC [02H]
#line 57 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
MOV A,[02H]
XOR A,01h
SNZ [0AH].2
JMP L65
#pragma debug scope 35 34 ; 59 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 59 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
SET [014H].0
#line 60 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CLR [014H].1
#line 61 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 34 28 ; 61 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L66
L65:
#pragma debug scope 36 34 ; 64 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 64 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CLR [014H].0
#line 65 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
SET [014H].1
#line 66 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
CLR [02H]
L66:
L57:
#line 71 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 28 27 ; 71 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_on
MOV [04H],A
MOV A,OFFSET _Puls_on
MOV [03H],A
MOV A,[02H]
MOV b0_13,A
INC [03h]
MOV A,[02h]
MOV b0_13[1],A
INC [03h]
MOV A,[02h]
MOV b0_13[2],A
INC [03h]
MOV A,[02h]
MOV b0_13[3],A
MOV A,b0_13[3]
SUB A,00h
SNZ [0ah].0
JMP L71
SNZ [0ah].2
JMP L69
MOV A,b0_13[2]
SUB A,00h
SNZ [0ah].0
JMP L71
SNZ [0ah].2
JMP L69
MOV A,b0_13[1]
SUB A,0fh
SNZ [0ah].0
JMP L71
SNZ [0Ah].2
JMP L69
MOV A,0a0h
SUB A,b0_13
SNZ [0ah].0
JMP L69
L71:
MOV A,BANK _Puls_off
MOV [04H],A
MOV A,OFFSET _Puls_off
MOV [03H],A
MOV A,[02H]
MOV b0_13,A
INC [03h]
MOV A,[02h]
MOV b0_13[1],A
INC [03h]
MOV A,[02h]
MOV b0_13[2],A
INC [03h]
MOV A,[02h]
MOV b0_13[3],A
MOV A,00h
SUB A,b0_13[3]
SNZ [0ah].0
JMP L72
SNZ [0ah].2
JMP L67
MOV A,00h
SUB A,b0_13[2]
SNZ [0Ah].0
JMP L72
SNZ [0Ah].2
JMP L67
MOV A,0fh
SUB A,b0_13[1]
SNZ [0Ah].0
JMP L72
SNZ [0Ah].2
JMP L67
MOV A,0a0h
SUB A,b0_13
SZ [0ah].0
JMP L67
L72:
L69:
#pragma debug scope 37 28 ; 73 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 73 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Lock
MOV [04H],A
MOV A,OFFSET _Lock
MOV [03H],A
CLR [02H]
#line 74 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
CLR [02H]
L67:
L49:
#line 19 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 27 1 ; 19 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L48
L47:
#line 148 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP $
LOCAL b0_13 DB 4 DUP(?)
LOCAL CR5 DB ? ; 59
LOCAL CR6 DB ? ; 60
_main ENDP
#line 8 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Pq
@Pq .SECTION 'DATA'
_Pq DB ? ; Pq
#pragma debug variable 4 1 _Pq Pq
#line 8 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Lock
@Lock .SECTION 'DATA'
_Lock DB ? ; Lock
#pragma debug variable 4 1 _Lock Lock
#line 8 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Puls_Count
@Puls_Count .SECTION 'DATA'
_Puls_Count DB ? ; Puls_Count
#pragma debug variable 4 1 _Puls_Count Puls_Count
#line 8 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Detect
@Detect .SECTION 'DATA'
_Detect DB ? ; Detect
#pragma debug variable 4 1 _Detect Detect
#line 7 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Puls_off
@Puls_off .SECTION 'DATA'
_Puls_off DB 4 DUP (?) ;Puls_off
#pragma debug variable 4 1 _Puls_off Puls_off
#line 7 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Puls_on
@Puls_on .SECTION 'DATA'
_Puls_on DB 4 DUP (?) ;Puls_on
#pragma debug variable 4 1 _Puls_on Puls_on
#line 7 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Timer
@Timer .SECTION 'DATA'
_Timer DB 4 DUP (?) ;Timer
#pragma debug variable 4 1 _Timer Timer
#line 31 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _m
@m .SECTION 'DATA'
_m DB 4 DUP (?) ;m
#pragma debug variable 4 1 _m m
#line 30 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Set
@Set .SECTION 'DATA'
_Set DB ? ; Set
#pragma debug variable 4 1 _Set Set
#line 30 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Counter_Off
@Counter_Off .SECTION 'DATA'
_Counter_Off DB ? ; Counter_Off
#pragma debug variable 4 1 _Counter_Off Counter_Off
#line 30 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Counter_On
@Counter_On .SECTION 'DATA'
_Counter_On DB ? ; Counter_On
#pragma debug variable 4 1 _Counter_On Counter_On
#line 30 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Counter
@Counter .SECTION 'DATA'
_Counter DB ? ; Counter
#pragma debug variable 4 1 _Counter Counter
#line 30 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Backup
@Backup .SECTION 'DATA'
_Backup DB ? ; Backup
#pragma debug variable 4 1 _Backup Backup
#line 9 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN V1A:BYTE
EXTERN V1S:BYTE
EXTERN V1MP1:BYTE
EXTERN V1BP:BYTE
EXTERN V2A:BYTE
EXTERN V2S:BYTE
EXTERN V2MP1:BYTE
EXTERN V2BP:BYTE
#line 9 "C:\Users\hamed\OneDrive\Documents\HTK_Project\IR-Detector-HR66F002-V2\IR-Detector-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
