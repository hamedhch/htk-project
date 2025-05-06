#pragma debug scope 1 1
#line 7 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
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
#pragma debug scope 2 1 ; 11 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 11 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR1
L2:
#pragma debug scope 3 2 ; 13 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 13 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 14 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 15 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 16 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 17 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR WDT
L3:
#line 11 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 2 1 ; 11 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR b0_1
SZ CR1
SET b0_1.0
INC b0_1
CLR CR1
SZ b0_1.0
SET CR1
#line 11 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
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
#line 9 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR1 DBIT ; i_u
#pragma debug variable 2 2 CR1 i_u
_Delay_10us ENDP
#line 24 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
@Delay_Chek .SECTION 'CODE'
PUBLIC _Delay_Chek
_Delay_Chek PROC
#pragma debug scope 4 1 ; 26 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 26 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR2
#line 26 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
JMP L10
L7:
#pragma debug scope 5 4 ; 29 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 29 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CALL _Delay_10us
L8:
#line 27 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 4 1 ; 27 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
INC CR2
L10:
#line 26 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
MOV A,CR2
SUB A,03h
SNZ [0ah].0
JMP L7
L6:
RET
#line 25 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR2 DB ? ; i
#pragma debug variable 8 4 CR2 i
_Delay_Chek ENDP
#line 35 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
@Delay_1ms .SECTION 'CODE'
PUBLIC _Delay_1ms
_Delay_1ms PROC
#pragma debug scope 6 1 ; 37 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 37 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR3
#line 37 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
JMP L15
L12:
#pragma debug scope 7 6 ; 39 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 39 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 40 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 41 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 42 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
NOP
#line 43 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR WDT
L13:
#line 37 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 6 1 ; 37 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
INC CR3
L15:
#line 37 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
MOV A,CR3
SUB A,064h
SNZ [0ah].0
JMP L12
L11:
RET
#line 36 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR3 DB ? ; i_m
#pragma debug variable 8 6 CR3 i_m
_Delay_1ms ENDP
#line 48 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
@Delay_ms .SECTION 'CODE'
PUBLIC _Delay_ms
_Delay_ms PROC
#pragma debug scope 8 1
#line 47 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
PUBLIC Delay_ms0
LOCAL Delay_ms0 DB 2 DUP (?) ; ms
#pragma debug variable 12 8 Delay_ms0 ms
#pragma debug scope 8 1 ; 50 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 50 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CLR CR4
CLR CR4[1]
#line 50 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
JMP L20
L17:
#pragma debug scope 9 8 ; 52 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#line 52 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
CALL _Delay_1ms
L18:
#line 50 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
#pragma debug scope 8 1 ; 50 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
INC CR4
SZ [0AH].2
INC CR4[1]
L20:
#line 50 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
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
#line 49 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\DELAY.h"
LOCAL CR4 DB 2 DUP (?) ; i_m
#pragma debug variable 12 8 CR4 i_m
_Delay_ms ENDP
#line 15 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
@IO_INIT .SECTION 'CODE'
PUBLIC _IO_INIT
_IO_INIT PROC
#pragma debug scope 10 1 ; 16 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
#line 16 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
MOV A,0a0h
MOV __pac,A
#line 17 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
SET [014H].2
#line 18 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
SET [014H].6
#line 19 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
SET [014H].0
#line 20 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IO.h"
CLR [014H].1
L22:
RET
_IO_INIT ENDP
#line 37 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@TB0Init .SECTION 'CODE'
PUBLIC _TB0Init
_TB0Init PROC
#pragma debug scope 11 1 ; 38 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 38 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].6
#line 39 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].7
#line 40 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].2
#line 40 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].1
#line 40 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].0
#line 41 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].2
#line 42 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].5
#line 43 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].0
L23:
RET
_TB0Init ENDP
#line 47 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@TB1Init .SECTION 'CODE'
PUBLIC _TB1Init
_TB1Init PROC
#pragma debug scope 12 1 ; 48 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 48 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].6
#line 49 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].7
#line 50 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].5
#line 50 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].4
#line 51 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].3
#line 52 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].6
#line 53 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].0
L24:
RET
_TB1Init ENDP
#line 57 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@TBINIT .SECTION 'CODE'
PUBLIC _TBINIT
_TBINIT PROC
#pragma debug scope 13 1 ; 58 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
#line 58 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].6
#line 59 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].7
#line 60 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].5
#line 60 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].4
#line 61 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].3
#line 62 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].6
#line 63 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [01BH].5
#line 63 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [01BH].4
#line 64 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].3
#line 65 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
CLR [0EH].6
#line 66 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
SET [0EH].0
L25:
RET
_TBINIT ENDP
#line 70 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@@ISR_TB0 .SECTION AT 08H 'CODE'
RETI
#line 94 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
@@ISR_TB1 .SECTION AT 0cH 'CODE'
RETI
#line 24 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
@EXININIT .SECTION 'CODE'
PUBLIC _EXININIT
_EXININIT PROC
#pragma debug scope 16 1 ; 25 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
#line 25 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0DH].1
#line 25 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0DH].0
#line 26 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [015H].5
#line 26 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [016H].5
#line 26 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [018H].1
#line 26 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [018H].0
#line 27 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0EH].1
#line 28 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
CLR [0EH].4
#line 29 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
SET [0EH].0
L28:
RET
_EXININIT ENDP
#line 34 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\EXINT.h"
@@ISR_EXINT .SECTION AT 04H 'CODE'
RETI
#line 14 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 18 1 ; 15 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 15 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _IO_INIT
#line 16 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,064h
MOV Delay_ms0,A
MOV A,00h
MOV Delay_ms0[1],A
CALL _Delay_ms
#line 17 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _TB0Init
#line 18 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _EXININIT
#line 19 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Detect
MOV [04H],A
MOV A,OFFSET _Detect
MOV [03H],A
CLR [02H]
#line 20 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
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
#line 21 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
CLR [02H]
#line 22 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
CLR [02H]
#line 22 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L32
L31:
#pragma debug scope 19 18 ; 25 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 25 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CLR WDT
#line 29 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _in
MOV [04H],A
MOV A,OFFSET _in
MOV [03H],A
CLR [02H]
#line 29 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L37
L34:
#pragma debug scope 20 19 ; 31 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 31 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _Delay_10us
#line 32 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
SET [014H].2
#line 33 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _Delay_10us
#line 34 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CLR [014H].2
L35:
#line 29 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 19 18 ; 29 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _in
MOV [04H],A
MOV A,OFFSET _in
MOV [03H],A
INC [02H]
L37:
#line 29 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _in
MOV [04H],A
MOV A,OFFSET _in
MOV [03H],A
MOV A,[02H]
SUB A,014h
SNZ [0AH].0
JMP L34
#line 36 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
SZ [014H].7
JMP L38
#pragma debug scope 21 19 ; 37 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 37 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
INC [02H]
#line 38 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
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
#line 41 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 19 18 ; 41 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L39
L38:
#pragma debug scope 22 19 ; 43 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 43 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
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
#line 44 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
CLR [02H]
L39:
#line 49 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 19 18 ; 49 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _in
MOV [04H],A
MOV A,OFFSET _in
MOV [03H],A
CLR [02H]
#line 49 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L43
L40:
#pragma debug scope 23 19 ; 51 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 51 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CALL _Delay_10us
L41:
#line 49 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 19 18 ; 49 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _in
MOV [04H],A
MOV A,OFFSET _in
MOV [03H],A
INC [02H]
L43:
#line 49 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _in
MOV [04H],A
MOV A,OFFSET _in
MOV [03H],A
MOV A,[02H]
SUB A,014h
SNZ [0AH].0
JMP L40
#line 54 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
SNZ [014H].7
JMP L44
#pragma debug scope 24 19 ; 55 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 55 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
INC [02H]
#line 56 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
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
#line 59 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 19 18 ; 59 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L45
L44:
#pragma debug scope 25 19 ; 61 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 61 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
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
#line 62 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
CLR [02H]
L45:
#line 67 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 19 18 ; 67 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
MOV A,014h
SUB A,[02H]
SZ [0AH].0
JMP L50
MOV A,01h
MOV CR5,A
JMP L51
L50:
CLR CR5
L51:
MOV A,BANK _Lock
MOV [04H],A
MOV A,OFFSET _Lock
MOV [03H],A
SZ [02H]
JMP L52
MOV A,01h
MOV CR6,A
JMP L53
L52:
CLR CR6
L53:
MOV A,CR5
AND A,CR6
MOV b0_13,A
SZ b0_13
JMP L58
JMP L46
L58:
#pragma debug scope 26 19 ; 69 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 69 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Lock
MOV [04H],A
MOV A,OFFSET _Lock
MOV [03H],A
MOV A,1
MOV [02H],A
#line 70 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
INC [02H]
#line 71 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
MOV A,[02H]
XOR A,01h
SNZ [0AH].2
JMP L54
#pragma debug scope 27 26 ; 73 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 73 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
SET [014H].0
#line 74 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CLR [014H].1
#line 75 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 26 19 ; 75 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L55
L54:
#pragma debug scope 28 26 ; 78 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 78 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
CLR [014H].0
#line 79 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
SET [014H].1
#line 80 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
CLR [02H]
L55:
L46:
#line 84 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 19 18 ; 84 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
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
JMP L59
SNZ [0ah].2
JMP L56
MOV A,00h
SUB A,b0_13[2]
SNZ [0Ah].0
JMP L59
SNZ [0Ah].2
JMP L56
MOV A,00h
SUB A,b0_13[1]
SNZ [0Ah].0
JMP L59
SNZ [0Ah].2
JMP L56
MOV A,0c8h
SUB A,b0_13
SZ [0ah].0
JMP L56
L59:
#pragma debug scope 29 19 ; 86 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#line 86 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
MOV A,BANK _Lock
MOV [04H],A
MOV A,OFFSET _Lock
MOV [03H],A
CLR [02H]
L56:
L32:
#line 23 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
#pragma debug scope 18 1 ; 23 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP L31
L30:
#line 214 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
JMP $
LOCAL b0_13 DB 4 DUP(?)
LOCAL CR5 DB ? ; 48
LOCAL CR6 DB ? ; 49
_main ENDP
#line 10 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _in
@in .SECTION 'DATA'
_in DB ? ; in
#pragma debug variable 8 1 _in in
#line 8 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Pq
@Pq .SECTION 'DATA'
_Pq DB ? ; Pq
#pragma debug variable 4 1 _Pq Pq
#line 8 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Lock
@Lock .SECTION 'DATA'
_Lock DB ? ; Lock
#pragma debug variable 4 1 _Lock Lock
#line 8 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Puls_Count
@Puls_Count .SECTION 'DATA'
_Puls_Count DB ? ; Puls_Count
#pragma debug variable 4 1 _Puls_Count Puls_Count
#line 8 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Detect
@Detect .SECTION 'DATA'
_Detect DB ? ; Detect
#pragma debug variable 4 1 _Detect Detect
#line 7 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Puls_off
@Puls_off .SECTION 'DATA'
_Puls_off DB 4 DUP (?) ;Puls_off
#pragma debug variable 4 1 _Puls_off Puls_off
#line 7 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Puls_on
@Puls_on .SECTION 'DATA'
_Puls_on DB 4 DUP (?) ;Puls_on
#pragma debug variable 4 1 _Puls_on Puls_on
#line 7 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
PUBLIC _Timer
@Timer .SECTION 'DATA'
_Timer DB 4 DUP (?) ;Timer
#pragma debug variable 4 1 _Timer Timer
#line 31 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _m
@m .SECTION 'DATA'
_m DB 4 DUP (?) ;m
#pragma debug variable 4 1 _m m
#line 30 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Set
@Set .SECTION 'DATA'
_Set DB ? ; Set
#pragma debug variable 4 1 _Set Set
#line 30 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Counter_Off
@Counter_Off .SECTION 'DATA'
_Counter_Off DB ? ; Counter_Off
#pragma debug variable 4 1 _Counter_Off Counter_Off
#line 30 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Counter_On
@Counter_On .SECTION 'DATA'
_Counter_On DB ? ; Counter_On
#pragma debug variable 4 1 _Counter_On Counter_On
#line 30 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Counter
@Counter .SECTION 'DATA'
_Counter DB ? ; Counter
#pragma debug variable 4 1 _Counter Counter
#line 30 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\TIMEBASE.h"
PUBLIC _Backup
@Backup .SECTION 'DATA'
_Backup DB ? ; Backup
#pragma debug variable 4 1 _Backup Backup
#line 13 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
#line 13 "E:\hamed\touch2\IR-Detector38khz-HR66F002-V2\IR-Detector-HR66F002\IR-Detector-HR66F002.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
