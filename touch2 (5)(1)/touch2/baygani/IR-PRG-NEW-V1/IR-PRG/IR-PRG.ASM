#pragma debug scope 1 1
#line 7 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
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
#pragma debug scope 2 1 ; 11 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#line 11 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
CLR CR1
L2:
#pragma debug scope 3 2 ; 13 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#line 13 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
NOP
#line 14 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
NOP
#line 15 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
NOP
#line 16 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
NOP
#line 17 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
CLR WDT
L3:
#line 11 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#pragma debug scope 2 1 ; 11 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
CLR b0_1
SZ CR1
SET b0_1.0
INC b0_1
CLR CR1
SZ b0_1.0
SET CR1
#line 11 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
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
#line 9 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
LOCAL CR1 DBIT ; i_u
#pragma debug variable 2 2 CR1 i_u
_Delay_10us ENDP
#line 24 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
@Delay_Chek .SECTION 'CODE'
PUBLIC _Delay_Chek
_Delay_Chek PROC
#pragma debug scope 4 1 ; 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#line 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
CLR CR2
#line 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
JMP L10
L7:
#pragma debug scope 5 4 ; 28 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#line 28 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
CALL _Delay_10us
L8:
#line 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#pragma debug scope 4 1 ; 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
INC CR2
L10:
#line 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
MOV A,CR2
SUB A,0ah
SNZ [0ah].0
JMP L7
L6:
RET
#line 25 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
LOCAL CR2 DB ? ; i
#pragma debug variable 8 4 CR2 i
_Delay_Chek ENDP
#line 34 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
@Delay_1ms .SECTION 'CODE'
PUBLIC _Delay_1ms
_Delay_1ms PROC
#pragma debug scope 6 1 ; 36 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#line 36 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
CLR CR3
#line 36 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
JMP L15
L12:
#pragma debug scope 7 6 ; 38 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#line 38 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
NOP
#line 39 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
NOP
#line 40 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
NOP
#line 41 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
NOP
#line 42 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
CLR WDT
L13:
#line 36 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#pragma debug scope 6 1 ; 36 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
INC CR3
L15:
#line 36 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
MOV A,CR3
SUB A,064h
SNZ [0ah].0
JMP L12
L11:
RET
#line 35 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
LOCAL CR3 DB ? ; i_m
#pragma debug variable 8 6 CR3 i_m
_Delay_1ms ENDP
#line 47 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
@Delay_ms .SECTION 'CODE'
PUBLIC _Delay_ms
_Delay_ms PROC
#pragma debug scope 8 1
#line 46 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
PUBLIC Delay_ms0
LOCAL Delay_ms0 DB 2 DUP (?) ; ms
#pragma debug variable 12 8 Delay_ms0 ms
#pragma debug scope 8 1 ; 49 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#line 49 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
CLR CR4
CLR CR4[1]
#line 49 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
JMP L20
L17:
#pragma debug scope 9 8 ; 51 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#line 51 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
CALL _Delay_1ms
L18:
#line 49 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
#pragma debug scope 8 1 ; 49 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
INC CR4
SZ [0AH].2
INC CR4[1]
L20:
#line 49 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
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
#line 48 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\DELAY.h"
LOCAL CR4 DB 2 DUP (?) ; i_m
#pragma debug variable 12 8 CR4 i_m
_Delay_ms ENDP
#line 14 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IO.h"
@IO_INIT .SECTION 'CODE'
PUBLIC _IO_INIT
_IO_INIT PROC
#pragma debug scope 10 1 ; 15 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IO.h"
#line 15 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IO.h"
MOV A,0a0h
MOV __pac,A
#line 15 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IO.h"
SET [016H].7
#line 17 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IO.h"
SET [014H].6
#line 18 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IO.h"
CLR [014H].0
#line 19 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IO.h"
SET [014H].1
L22:
RET
_IO_INIT ENDP
#line 220 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
@STM_Init .SECTION 'CODE'
PUBLIC _STM_Init
_STM_Init PROC
#pragma debug scope 11 1 ; 226 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
#line 226 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
SET [029H].7
#line 226 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [029H].6
#line 227 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
SET [029H].5
#line 227 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [029H].4
#line 230 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [026H].5
#line 230 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
SET [026H].4
#line 236 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [026H].7
#line 236 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
SET [026H].6
#line 293 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [028H].6
#line 293 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [028H].5
#line 293 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
SET [028H].4
#line 331 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
SET [029H].0
L23:
RET
_STM_Init ENDP
#line 348 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
@STM_PwmOutputConfig .SECTION 'CODE'
PUBLIC _STM_PwmOutputConfig
_STM_PwmOutputConfig PROC
#pragma debug scope 12 1 ; 353 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
#line 353 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
SET [029H].3
#line 359 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [029H].2
#line 367 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [029H].1
L24:
RET
_STM_PwmOutputConfig ENDP
#line 382 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
@STM_PwmUpdate .SECTION 'CODE'
PUBLIC _STM_PwmUpdate
_STM_PwmUpdate PROC
#pragma debug scope 13 1
#line 381 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
PUBLIC STM_PwmUpdate0
LOCAL STM_PwmUpdate0 DB 2 DUP (?) ; TempCCRA
#pragma debug variable 12 13 STM_PwmUpdate0 TempCCRA
#line 381 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
PUBLIC STM_PwmUpdate1
LOCAL STM_PwmUpdate1 DB ? ; TempCCRP
#pragma debug variable 8 13 STM_PwmUpdate1 TempCCRP
#pragma debug scope 13 1 ; 383 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
#line 383 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
MOV A,STM_PwmUpdate0
AND A,0ffh
MOV b0_8,A
MOV A,STM_PwmUpdate0[1]
AND A,00h
MOV b0_8[1],A
MOV A,b0_8
MOV __stm0al,A
#line 384 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
MOV A,STM_PwmUpdate0[1]
MOV b0_8,A
CLR b0_8[1]
MOV A,b0_8
MOV __stm0ah,A
#line 386 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [0AH].0
RRCA STM_PwmUpdate1
MOV b0_8,A
CLR [0AH].0
RRC b0_8
MOV A,01h
ANDM A,b0_8
MOV A,[028H]
CLR [05H].2
SZ b0_8
SET [05H].2
MOV [028H],A
#line 387 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [0AH].0
RRCA STM_PwmUpdate1
MOV b0_8,A
MOV A,01h
ANDM A,b0_8
MOV A,[028H]
CLR [05H].1
SZ b0_8
SET [05H].1
MOV [028H],A
#line 388 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
MOV A,STM_PwmUpdate1
AND A,01h
MOV b0_8,A
MOV A,[028H]
CLR [05H].0
SZ b0_8
SET [05H].0
MOV [028H],A
L25:
RET
LOCAL b0_8 DB 2 DUP(?)
_STM_PwmUpdate ENDP
#line 402 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
@STM_SinglePulseOutputConfig .SECTION 'CODE'
PUBLIC _STM_SinglePulseOutputConfig
_STM_SinglePulseOutputConfig PROC
#pragma debug scope 14 1 ; 407 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
#line 407 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
SET [029H].3
#line 413 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [029H].2
L26:
RET
_STM_SinglePulseOutputConfig ENDP
#line 441 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
@STM_SinglePulseUpdate .SECTION 'CODE'
PUBLIC _STM_SinglePulseUpdate
_STM_SinglePulseUpdate PROC
#pragma debug scope 15 1
#line 440 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
PUBLIC STM_SinglePulseUpdate0
LOCAL STM_SinglePulseUpdate0 DB 2 DUP (?) ; TempCCRA
#pragma debug variable 12 15 STM_SinglePulseUpdate0 TempCCRA
#pragma debug scope 15 1 ; 442 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
#line 442 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
MOV A,STM_SinglePulseUpdate0
AND A,0ffh
MOV b0_10,A
MOV A,STM_SinglePulseUpdate0[1]
AND A,00h
MOV b0_10[1],A
MOV A,b0_10
MOV __stm0al,A
#line 443 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
MOV A,STM_SinglePulseUpdate0[1]
MOV b0_10,A
CLR b0_10[1]
MOV A,b0_10
MOV __stm0ah,A
L27:
RET
LOCAL b0_10 DB 2 DUP(?)
_STM_SinglePulseUpdate ENDP
#line 453 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
@STM_CounterModeConfig .SECTION 'CODE'
PUBLIC _STM_CounterModeConfig
_STM_CounterModeConfig PROC
#pragma debug scope 16 1
#line 452 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
PUBLIC STM_CounterModeConfig0
LOCAL STM_CounterModeConfig0 DB 2 DUP (?) ; TempPeriod
#pragma debug variable 12 16 STM_CounterModeConfig0 TempPeriod
#pragma debug scope 16 1 ; 455 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
#line 455 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
MOV A,STM_CounterModeConfig0
AND A,0ffh
MOV b0_11,A
MOV A,STM_CounterModeConfig0[1]
AND A,00h
MOV b0_11[1],A
MOV A,b0_11
MOV __stm0al,A
#line 456 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
MOV A,STM_CounterModeConfig0[1]
MOV b0_11,A
CLR b0_11[1]
MOV A,b0_11
MOV __stm0ah,A
L28:
RET
LOCAL b0_11 DB 2 DUP(?)
_STM_CounterModeConfig ENDP
#line 475 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
@STM_CompareMatchOutputConfig .SECTION 'CODE'
PUBLIC _STM_CompareMatchOutputConfig
_STM_CompareMatchOutputConfig PROC
#pragma debug scope 17 1 ; 495 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
#line 495 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
SET [029H].3
#line 501 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CLR [029H].2
L29:
RET
_STM_CompareMatchOutputConfig ENDP
#line 515 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
@STM_CompareMatchOutputUpdate .SECTION 'CODE'
PUBLIC _STM_CompareMatchOutputUpdate
_STM_CompareMatchOutputUpdate PROC
#pragma debug scope 18 1
#line 514 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
PUBLIC STM_CompareMatchOutputUpdate0
LOCAL STM_CompareMatchOutputUpdate0 DB 2 DUP (?) ; TempMatchTime
#pragma debug variable 12 18 STM_CompareMatchOutputUpdate0 TempMatchTime
#pragma debug scope 18 1 ; 517 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
#line 517 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
MOV A,STM_CompareMatchOutputUpdate0
AND A,0ffh
MOV b0_13,A
MOV A,STM_CompareMatchOutputUpdate0[1]
AND A,00h
MOV b0_13[1],A
MOV A,b0_13
MOV __stm0al,A
#line 518 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
MOV A,STM_CompareMatchOutputUpdate0[1]
MOV b0_13,A
CLR b0_13[1]
MOV A,b0_13
MOV __stm0ah,A
L30:
RET
LOCAL b0_13 DB 2 DUP(?)
_STM_CompareMatchOutputUpdate ENDP
#line 529 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
@STM_INIT .SECTION 'CODE'
PUBLIC _STM_INIT
_STM_INIT PROC
#pragma debug scope 19 1 ; 530 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
#line 530 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CALL _STM_Init
#line 531 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
CALL _STM_PwmOutputConfig
#line 532 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
MOV A,080h
MOV STM_PwmUpdate0,A
MOV A,00h
MOV STM_PwmUpdate0[1],A
MOV A,02h
MOV STM_PwmUpdate1,A
CALL _STM_PwmUpdate
#line 533 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
SET [028H].3
#line 535 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\STM.h"
MOV A,01H
MOV RH,A
MOV A,0f2H
CALL __DELAYY1
L31:
RET
_STM_INIT ENDP
#line 35 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
@TB0_INIT .SECTION 'CODE'
PUBLIC _TB0_INIT
_TB0_INIT PROC
#pragma debug scope 20 1 ; 36 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 36 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [01BH].6
#line 37 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [01BH].7
#line 38 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [01BH].2
#line 38 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [01BH].1
#line 38 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [01BH].0
#line 39 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [0EH].2
#line 40 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [0EH].5
#line 41 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [0EH].0
L32:
RET
_TB0_INIT ENDP
#line 45 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
@TB1_INIT .SECTION 'CODE'
PUBLIC _TB1_INIT
_TB1_INIT PROC
#pragma debug scope 21 1 ; 46 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 46 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [01BH].6
#line 47 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [01BH].7
#line 48 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [01BH].5
#line 48 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [01BH].4
#line 49 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [0EH].3
#line 50 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [0EH].6
#line 51 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [0EH].0
L33:
RET
_TB1_INIT ENDP
#line 55 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
@TB_INIT .SECTION 'CODE'
PUBLIC _TB_INIT
_TB_INIT PROC
#pragma debug scope 22 1 ; 56 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 56 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [01BH].6
#line 57 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [01BH].7
#line 58 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [01BH].5
#line 58 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [01BH].4
#line 59 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [0EH].3
#line 60 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [0EH].6
#line 61 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [01BH].5
#line 61 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [01BH].4
#line 62 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [0EH].3
#line 63 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [0EH].6
#line 64 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [0EH].0
L34:
RET
_TB_INIT ENDP
#line 68 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
@@ISR_TB1 .SECTION AT 0cH 'CODE'
JMP _ISR_TB1
@ISR_TB1 .SECTION 'CODE'
_ISR_TB1 PROC
MOV V3A,A
MOV A,[0AH]
MOV V3S,A
MOV A,[03H]
MOV V3MP1,A
MOV A,[04H]
MOV V3BP,A
#pragma debug scope 23 1 ; 69 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 69 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
INC [02H]
#line 70 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
MOV A,019h
SUB A,[02H]
SNZ [0AH].0
JMP L39
MOV A,01h
MOV CR5,A
JMP L40
L39:
CLR CR5
L40:
MOV A,01h
AND A,CR5
MOV b0_18,A
SZ b0_18
JMP L51
JMP L36
L51:
#pragma debug scope 24 23 ; 72 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 72 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [028H].3
L36:
#line 74 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#pragma debug scope 23 1 ; 74 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
MOV A,[02H]
SUB A,01ah
SNZ [0AH].0
JMP L45
MOV A,01h
MOV CR6,A
JMP L46
L45:
CLR CR6
L46:
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
MOV A,[02H]
SUB A,02dh
SZ [0AH].0
JMP L47
MOV A,01h
MOV CR7,A
JMP L48
L47:
CLR CR7
L48:
MOV A,CR6
AND A,CR7
MOV b0_18,A
SZ b0_18
JMP L52
JMP L41
L52:
#pragma debug scope 25 23 ; 76 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 76 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [028H].3
L41:
#line 78 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#pragma debug scope 23 1 ; 78 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
MOV A,[02H]
SUB A,02eh
SNZ [0AH].0
JMP L49
#pragma debug scope 26 23 ; 80 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 80 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
CLR [02H]
L49:
L35:
MOV A,V3MP1
MOV [03H],A
MOV A,V3BP
MOV [04H],A
MOV A,V3S
MOV [0AH],A
MOV A,V3A
RETI
_ISR_TB1 ENDP
RAMBANK 0 @ISR_TB1
@ISR_TB1 .SECTION 'DATA'
b0_18 DB ?
CR5 DB ? ; 38
CR6 DB ? ; 43
CR7 DB ? ; 44
#line 85 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
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
#pragma debug scope 27 1 ; 86 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 86 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
SZ [02H]
JMP L54
#pragma debug scope 28 27 ; 86 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 86 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [014H].6
#line 86 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#pragma debug scope 27 1 ; 86 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
JMP L55
L54:
#line 87 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
MOV A,[02H]
XOR A,01h
SNZ [0AH].2
JMP L60
MOV A,01h
MOV CR8,A
JMP L61
L60:
CLR CR8
L61:
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
MOV A,[02H]
XOR A,02h
SNZ [0AH].2
JMP L62
MOV A,01h
MOV CR9,A
JMP L63
L62:
CLR CR9
L63:
MOV A,CR8
OR A,CR9
MOV b0_19,A
SZ b0_19
JMP L80
JMP L56
L80:
#pragma debug scope 29 27 ; 89 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 89 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Trig
MOV [04H],A
MOV A,OFFSET _Trig
MOV [03H],A
INC [02H]
#line 90 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Trig
MOV [04H],A
MOV A,OFFSET _Trig
MOV [03H],A
MOV A,0fah
SUB A,[02H]
SZ [0AH].0
JMP L64
#pragma debug scope 30 29 ; 92 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 92 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Trig
MOV [04H],A
MOV A,OFFSET _Trig
MOV [03H],A
CLR [02H]
#line 93 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
MOV A,[02H]
XOR A,01h
SNZ [0AH].2
JMP L66
#pragma debug scope 31 30 ; 95 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 95 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Triger
MOV [04H],A
MOV A,OFFSET _Triger
MOV [03H],A
INC [02H]
#line 96 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Triger
MOV [04H],A
MOV A,OFFSET _Triger
MOV [03H],A
MOV A,03ch
SUB A,[02H]
SZ [0AH].0
JMP L68
#pragma debug scope 32 31 ; 96 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 96 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
CLR [02H]
L68:
L66:
#line 98 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#pragma debug scope 30 29 ; 98 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
MOV A,[02H]
XOR A,02h
SNZ [0AH].2
JMP L70
#pragma debug scope 33 30 ; 100 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 100 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Triger
MOV [04H],A
MOV A,OFFSET _Triger
MOV [03H],A
DEC [02H]
#line 101 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Triger
MOV [04H],A
MOV A,OFFSET _Triger
MOV [03H],A
MOV A,[02H]
SUB A,0fh
SZ [0AH].0
JMP L72
#pragma debug scope 34 33 ; 101 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 101 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
MOV A,03h
MOV [02H],A
L72:
L70:
L64:
#line 104 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#pragma debug scope 29 27 ; 104 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Zero_Flag
MOV [04H],A
MOV A,OFFSET _Zero_Flag
MOV [03H],A
SZ [02H]
JMP L74
#pragma debug scope 35 29 ; 106 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 106 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
SET [014H].6
#line 107 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#pragma debug scope 29 27 ; 107 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
JMP L57
L74:
#pragma debug scope 36 29 ; 110 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 110 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Triger
MOV [04H],A
MOV A,OFFSET _Triger
MOV [03H],A
MOV A,[02H]
MOV b0_19,A
MOV A,BANK _Zero_Time
MOV [04H],A
MOV A,OFFSET _Zero_Time
MOV [03H],A
MOV A,b0_19
SUB A,[02H]
SZ [0AH].0
JMP L76
#pragma debug scope 37 36 ; 112 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 112 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [014H].6
#line 113 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Zero_Time
MOV [04H],A
MOV A,OFFSET _Zero_Time
MOV [03H],A
CLR [02H]
#line 114 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Zero_Flag
MOV [04H],A
MOV A,OFFSET _Zero_Flag
MOV [03H],A
CLR [02H]
L76:
#line 116 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#pragma debug scope 36 29 ; 116 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Zero_Time
MOV [04H],A
MOV A,OFFSET _Zero_Time
MOV [03H],A
INC [02H]
#line 118 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#pragma debug scope 27 1 ; 118 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
JMP L57
L56:
#line 119 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
MOV A,[02H]
XOR A,03h
SNZ [0AH].2
JMP L78
#pragma debug scope 38 27 ; 119 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
#line 119 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
CLR [014H].6
L78:
L57:
L55:
L53:
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
b0_19 DB ?
CR8 DB ? ; 58
CR9 DB ? ; 59
#line 24 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
@EX_INIT .SECTION 'CODE'
PUBLIC _EX_INIT
_EX_INIT PROC
#pragma debug scope 39 1 ; 25 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
#line 25 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
SET [0DH].1
#line 25 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
SET [0DH].0
#line 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
SET [015H].5
#line 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
CLR [016H].5
#line 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
CLR [018H].1
#line 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
CLR [018H].0
#line 27 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
SET [0EH].1
#line 28 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
CLR [0EH].4
#line 29 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
SET [0EH].0
L81:
RET
_EX_INIT ENDP
#line 34 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
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
#pragma debug scope 40 1 ; 35 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
#line 35 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
MOV A,BANK _Zero_Flag
MOV [04H],A
MOV A,OFFSET _Zero_Flag
MOV [03H],A
MOV A,1
MOV [02H],A
#line 36 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\EXINT.h"
MOV A,BANK _Zero_Time
MOV [04H],A
MOV A,OFFSET _Zero_Time
MOV [03H],A
CLR [02H]
L82:
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
#line 9 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 41 1 ; 10 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 10 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Frist
MOV [04H],A
MOV A,OFFSET _Frist
MOV [03H],A
CLR [02H]
#line 11 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _CountEdge
MOV [04H],A
MOV A,OFFSET _CountEdge
MOV [03H],A
CLR [02H]
#line 12 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Zero_Time
MOV [04H],A
MOV A,OFFSET _Zero_Time
MOV [03H],A
CLR [02H]
#line 13 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Zero_Flag
MOV [04H],A
MOV A,OFFSET _Zero_Flag
MOV [03H],A
CLR [02H]
#line 14 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Trig
MOV [04H],A
MOV A,OFFSET _Trig
MOV [03H],A
CLR [02H]
#line 15 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Triger
MOV [04H],A
MOV A,OFFSET _Triger
MOV [03H],A
CLR [02H]
#line 16 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
CLR [02H]
#line 17 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
CLR [02H]
#line 18 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Count
MOV [04H],A
MOV A,OFFSET _Count
MOV [03H],A
CLR [02H]
#line 19 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
CLR [02H]
#line 20 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Backup
MOV [04H],A
MOV A,OFFSET _Backup
MOV [03H],A
CLR [02H]
#line 21 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Detect
MOV [04H],A
MOV A,OFFSET _Detect
MOV [03H],A
CLR [02H]
#line 22 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
CALL _IO_INIT
#line 23 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
CALL _STM_INIT
#line 24 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
CALL _TB0_INIT
#line 25 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
CALL _TB1_INIT
#line 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
CALL _EX_INIT
#line 26 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
JMP L85
L87:
#pragma debug scope 42 41 ; 32 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#pragma debug scope 43 42 ; 32 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 32 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
CLR WDT
#line 32 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
JMP L91
L90:
#pragma debug scope 44 43 ; 33 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 33 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
CLR WDT
L91:
#line 33 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#pragma debug scope 43 42 ; 33 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
SZ [014H].7
JMP L90
#line 33 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
JMP L94
L93:
#pragma debug scope 45 43 ; 34 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 34 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Count
MOV [04H],A
MOV A,OFFSET _Count
MOV [03H],A
INC [02H]
#line 34 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
CALL _Delay_1ms
L94:
#line 34 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#pragma debug scope 43 42 ; 34 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
SNZ [014H].7
JMP L93
#line 35 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Count
MOV [04H],A
MOV A,OFFSET _Count
MOV [03H],A
MOV A,01eh
SUB A,[02H]
SZ [0AH].0
JMP L96
#pragma debug scope 46 43 ; 38 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 38 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
INC [02H]
#line 39 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
MOV A,[02H]
XOR A,01h
SNZ [0AH].2
JMP L98
#pragma debug scope 47 46 ; 41 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 41 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
SET [014H].0
#line 42 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
CLR [014H].1
#line 43 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
MOV A,02h
MOV [02H],A
#line 44 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Triger
MOV [04H],A
MOV A,OFFSET _Triger
MOV [03H],A
MOV A,03ch
MOV [02H],A
#line 45 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#pragma debug scope 46 43 ; 45 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
JMP L99
L98:
#pragma debug scope 48 46 ; 48 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 48 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
CLR [014H].0
#line 49 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
SET [014H].1
#line 50 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
MOV A,1
MOV [02H],A
#line 51 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Triger
MOV [04H],A
MOV A,OFFSET _Triger
MOV [03H],A
MOV A,0fh
MOV [02H],A
#line 52 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Count
MOV [04H],A
MOV A,OFFSET _Count
MOV [03H],A
CLR [02H]
#line 53 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
CLR [02H]
L99:
#line 55 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#pragma debug scope 46 43 ; 55 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Count
MOV [04H],A
MOV A,OFFSET _Count
MOV [03H],A
CLR [02H]
#line 56 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,0c8h
MOV Delay_ms0,A
MOV A,00h
MOV Delay_ms0[1],A
CALL _Delay_ms
#line 57 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Detect
MOV [04H],A
MOV A,OFFSET _Detect
MOV [03H],A
MOV A,1
MOV [02H],A
#line 58 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
JMP L101
L96:
#pragma debug scope 49 43 ; 62 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 62 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Count
MOV [04H],A
MOV A,OFFSET _Count
MOV [03H],A
CLR [02H]
#line 63 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Detect
MOV [04H],A
MOV A,OFFSET _Detect
MOV [03H],A
CLR [02H]
L88:
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#pragma debug scope 42 41 ; 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
JMP L87
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
JMP L101
L100:
#pragma debug scope 50 42 ; 69 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 69 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
SNZ [014H].7
JMP L103
#pragma debug scope 51 50 ; 71 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 71 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Count
MOV [04H],A
MOV A,OFFSET _Count
MOV [03H],A
INC [02H]
#line 72 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Count
MOV [04H],A
MOV A,OFFSET _Count
MOV [03H],A
MOV A,0fah
SUB A,[02H]
SZ [0AH].0
JMP L105
#pragma debug scope 52 51 ; 74 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 74 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Detect
MOV [04H],A
MOV A,OFFSET _Detect
MOV [03H],A
CLR [02H]
#line 75 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Count
MOV [04H],A
MOV A,OFFSET _Count
MOV [03H],A
CLR [02H]
L105:
#line 77 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#pragma debug scope 51 50 ; 77 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,01h
MOV Delay_ms0,A
MOV A,00h
MOV Delay_ms0[1],A
CALL _Delay_ms
#line 78 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#pragma debug scope 50 42 ; 78 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
JMP L104
L103:
#pragma debug scope 53 50 ; 81 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#line 81 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Count
MOV [04H],A
MOV A,OFFSET _Count
MOV [03H],A
CLR [02H]
L104:
L101:
#line 67 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#pragma debug scope 42 41 ; 67 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
MOV A,BANK _Detect
MOV [04H],A
MOV A,OFFSET _Detect
MOV [03H],A
MOV A,[02H]
XOR A,01h
SZ [0AH].2
JMP L100
L85:
#line 28 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
#pragma debug scope 41 1 ; 28 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
JMP L88
L83:
#line 109 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
JMP $
_main ENDP
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _Detect
@Detect .SECTION 'DATA'
_Detect DB ? ; Detect
#pragma debug variable 4 1 _Detect Detect
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _Backup
@Backup .SECTION 'DATA'
_Backup DB ? ; Backup
#pragma debug variable 4 1 _Backup Backup
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _CountSW
@CountSW .SECTION 'DATA'
_CountSW DB ? ; CountSW
#pragma debug variable 4 1 _CountSW CountSW
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _Count
@Count .SECTION 'DATA'
_Count DB ? ; Count
#pragma debug variable 4 1 _Count Count
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _Set
@Set .SECTION 'DATA'
_Set DB ? ; Set
#pragma debug variable 4 1 _Set Set
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _Shift
@Shift .SECTION 'DATA'
_Shift DB ? ; Shift
#pragma debug variable 4 1 _Shift Shift
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _Triger
@Triger .SECTION 'DATA'
_Triger DB ? ; Triger
#pragma debug variable 4 1 _Triger Triger
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _Trig
@Trig .SECTION 'DATA'
_Trig DB ? ; Trig
#pragma debug variable 4 1 _Trig Trig
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _Zero_Flag
@Zero_Flag .SECTION 'DATA'
_Zero_Flag DB ? ; Zero_Flag
#pragma debug variable 4 1 _Zero_Flag Zero_Flag
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _Zero_Time
@Zero_Time .SECTION 'DATA'
_Zero_Time DB ? ; Zero_Time
#pragma debug variable 4 1 _Zero_Time Zero_Time
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _CountEdge
@CountEdge .SECTION 'DATA'
_CountEdge DB ? ; CountEdge
#pragma debug variable 4 1 _CountEdge CountEdge
#line 30 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\TIMEBASE.h"
PUBLIC _Frist
@Frist .SECTION 'DATA'
_Frist DB ? ; Frist
#pragma debug variable 4 1 _Frist Frist
#line 8 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN RH:BYTE
EXTERN V1A:BYTE
EXTERN V1S:BYTE
EXTERN V1MP1:BYTE
EXTERN V1BP:BYTE
EXTERN V2A:BYTE
EXTERN V2S:BYTE
EXTERN V2MP1:BYTE
EXTERN V2BP:BYTE
EXTERN V3A:BYTE
EXTERN V3S:BYTE
EXTERN V3MP1:BYTE
EXTERN V3BP:BYTE
EXTERN __DELAYY0:NEAR
EXTERN __DELAYY1:NEAR
EXTERN __DELAYY2:NEAR
EXTERN __DELAYY3:NEAR
EXTERN __DELAYY4:NEAR
EXTERN __DELAYY5:NEAR
#line 8 "C:\Users\Mahdi Khalilian\Documents\HTK_Project\IR-PRG\IR-PRG.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
