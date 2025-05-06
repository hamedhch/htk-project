#pragma debug scope 1 1
#line 7 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
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
#pragma debug scope 2 1 ; 11 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#line 11 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
CLR CR1
L2:
#pragma debug scope 3 2 ; 13 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#line 13 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
NOP
#line 14 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
NOP
#line 15 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
NOP
#line 16 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
NOP
#line 17 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
CLR WDT
L3:
#line 11 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#pragma debug scope 2 1 ; 11 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
CLR b0_1
SZ CR1
SET b0_1.0
INC b0_1
CLR CR1
SZ b0_1.0
SET CR1
#line 11 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
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
#line 9 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
LOCAL CR1 DBIT ; i_u
#pragma debug variable 2 2 CR1 i_u
_Delay_10us ENDP
#line 24 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
@Delay_Chek .SECTION 'CODE'
PUBLIC _Delay_Chek
_Delay_Chek PROC
#pragma debug scope 4 1 ; 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#line 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
CLR CR2
#line 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
JMP L10
L7:
#pragma debug scope 5 4 ; 28 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#line 28 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
CALL _Delay_10us
L8:
#line 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#pragma debug scope 4 1 ; 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
INC CR2
L10:
#line 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
MOV A,CR2
SUB A,0ah
SNZ [0ah].0
JMP L7
L6:
RET
#line 25 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
LOCAL CR2 DB ? ; i
#pragma debug variable 8 4 CR2 i
_Delay_Chek ENDP
#line 34 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
@Delay_1ms .SECTION 'CODE'
PUBLIC _Delay_1ms
_Delay_1ms PROC
#pragma debug scope 6 1 ; 36 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#line 36 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
CLR CR3
#line 36 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
JMP L15
L12:
#pragma debug scope 7 6 ; 38 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#line 38 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
NOP
#line 39 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
NOP
#line 40 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
NOP
#line 41 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
NOP
#line 42 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
CLR WDT
L13:
#line 36 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#pragma debug scope 6 1 ; 36 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
INC CR3
L15:
#line 36 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
MOV A,CR3
SUB A,064h
SNZ [0ah].0
JMP L12
L11:
RET
#line 35 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
LOCAL CR3 DB ? ; i_m
#pragma debug variable 8 6 CR3 i_m
_Delay_1ms ENDP
#line 47 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
@Delay_ms .SECTION 'CODE'
PUBLIC _Delay_ms
_Delay_ms PROC
#pragma debug scope 8 1
#line 46 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
PUBLIC Delay_ms0
LOCAL Delay_ms0 DB 2 DUP (?) ; ms
#pragma debug variable 12 8 Delay_ms0 ms
#pragma debug scope 8 1 ; 49 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#line 49 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
CLR CR4
CLR CR4[1]
#line 49 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
JMP L20
L17:
#pragma debug scope 9 8 ; 51 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#line 51 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
CALL _Delay_1ms
L18:
#line 49 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
#pragma debug scope 8 1 ; 49 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
INC CR4
SZ [0AH].2
INC CR4[1]
L20:
#line 49 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
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
#line 48 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\DELAY.h"
LOCAL CR4 DB 2 DUP (?) ; i_m
#pragma debug variable 12 8 CR4 i_m
_Delay_ms ENDP
#line 14 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IO.h"
@IO_INIT .SECTION 'CODE'
PUBLIC _IO_INIT
_IO_INIT PROC
#pragma debug scope 10 1 ; 15 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IO.h"
#line 15 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IO.h"
MOV A,0a0h
MOV __pac,A
#line 15 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IO.h"
SET [016H].7
#line 17 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IO.h"
CLR [014H].6
#line 18 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IO.h"
CLR [014H].0
#line 19 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IO.h"
SET [014H].1
L22:
RET
_IO_INIT ENDP
#line 220 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
@STM_Init .SECTION 'CODE'
PUBLIC _STM_Init
_STM_Init PROC
#pragma debug scope 11 1 ; 226 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
#line 226 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
SET [029H].7
#line 226 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
CLR [029H].6
#line 227 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
SET [029H].5
#line 227 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
CLR [029H].4
#line 230 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
CLR [026H].5
#line 230 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
SET [026H].4
#line 293 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
CLR [028H].6
#line 293 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
CLR [028H].5
#line 293 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
SET [028H].4
#line 331 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
SET [029H].0
L23:
RET
_STM_Init ENDP
#line 348 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
@STM_PwmOutputConfig .SECTION 'CODE'
PUBLIC _STM_PwmOutputConfig
_STM_PwmOutputConfig PROC
#pragma debug scope 12 1 ; 353 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
#line 353 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
SET [029H].3
#line 359 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
CLR [029H].2
#line 367 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
CLR [029H].1
L24:
RET
_STM_PwmOutputConfig ENDP
#line 382 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
@STM_PwmUpdate .SECTION 'CODE'
PUBLIC _STM_PwmUpdate
_STM_PwmUpdate PROC
#pragma debug scope 13 1
#line 381 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
PUBLIC STM_PwmUpdate0
LOCAL STM_PwmUpdate0 DB 2 DUP (?) ; TempCCRA
#pragma debug variable 12 13 STM_PwmUpdate0 TempCCRA
#line 381 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
PUBLIC STM_PwmUpdate1
LOCAL STM_PwmUpdate1 DB ? ; TempCCRP
#pragma debug variable 8 13 STM_PwmUpdate1 TempCCRP
#pragma debug scope 13 1 ; 383 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
#line 383 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
MOV A,STM_PwmUpdate0
AND A,0ffh
MOV b0_8,A
MOV A,STM_PwmUpdate0[1]
AND A,00h
MOV b0_8[1],A
MOV A,b0_8
MOV __stm0al,A
#line 384 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
MOV A,STM_PwmUpdate0[1]
MOV b0_8,A
CLR b0_8[1]
MOV A,b0_8
MOV __stm0ah,A
#line 386 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
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
#line 387 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
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
#line 388 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
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
#line 402 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
@STM_SinglePulseOutputConfig .SECTION 'CODE'
PUBLIC _STM_SinglePulseOutputConfig
_STM_SinglePulseOutputConfig PROC
#pragma debug scope 14 1 ; 407 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
#line 407 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
SET [029H].3
#line 413 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
CLR [029H].2
L26:
RET
_STM_SinglePulseOutputConfig ENDP
#line 441 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
@STM_SinglePulseUpdate .SECTION 'CODE'
PUBLIC _STM_SinglePulseUpdate
_STM_SinglePulseUpdate PROC
#pragma debug scope 15 1
#line 440 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
PUBLIC STM_SinglePulseUpdate0
LOCAL STM_SinglePulseUpdate0 DB 2 DUP (?) ; TempCCRA
#pragma debug variable 12 15 STM_SinglePulseUpdate0 TempCCRA
#pragma debug scope 15 1 ; 442 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
#line 442 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
MOV A,STM_SinglePulseUpdate0
AND A,0ffh
MOV b0_10,A
MOV A,STM_SinglePulseUpdate0[1]
AND A,00h
MOV b0_10[1],A
MOV A,b0_10
MOV __stm0al,A
#line 443 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
MOV A,STM_SinglePulseUpdate0[1]
MOV b0_10,A
CLR b0_10[1]
MOV A,b0_10
MOV __stm0ah,A
L27:
RET
LOCAL b0_10 DB 2 DUP(?)
_STM_SinglePulseUpdate ENDP
#line 453 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
@STM_CounterModeConfig .SECTION 'CODE'
PUBLIC _STM_CounterModeConfig
_STM_CounterModeConfig PROC
#pragma debug scope 16 1
#line 452 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
PUBLIC STM_CounterModeConfig0
LOCAL STM_CounterModeConfig0 DB 2 DUP (?) ; TempPeriod
#pragma debug variable 12 16 STM_CounterModeConfig0 TempPeriod
#pragma debug scope 16 1 ; 455 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
#line 455 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
MOV A,STM_CounterModeConfig0
AND A,0ffh
MOV b0_11,A
MOV A,STM_CounterModeConfig0[1]
AND A,00h
MOV b0_11[1],A
MOV A,b0_11
MOV __stm0al,A
#line 456 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
MOV A,STM_CounterModeConfig0[1]
MOV b0_11,A
CLR b0_11[1]
MOV A,b0_11
MOV __stm0ah,A
L28:
RET
LOCAL b0_11 DB 2 DUP(?)
_STM_CounterModeConfig ENDP
#line 475 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
@STM_CompareMatchOutputConfig .SECTION 'CODE'
PUBLIC _STM_CompareMatchOutputConfig
_STM_CompareMatchOutputConfig PROC
#pragma debug scope 17 1 ; 495 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
#line 495 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
SET [029H].3
#line 501 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
CLR [029H].2
L29:
RET
_STM_CompareMatchOutputConfig ENDP
#line 515 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
@STM_CompareMatchOutputUpdate .SECTION 'CODE'
PUBLIC _STM_CompareMatchOutputUpdate
_STM_CompareMatchOutputUpdate PROC
#pragma debug scope 18 1
#line 514 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
PUBLIC STM_CompareMatchOutputUpdate0
LOCAL STM_CompareMatchOutputUpdate0 DB 2 DUP (?) ; TempMatchTime
#pragma debug variable 12 18 STM_CompareMatchOutputUpdate0 TempMatchTime
#pragma debug scope 18 1 ; 517 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
#line 517 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
MOV A,STM_CompareMatchOutputUpdate0
AND A,0ffh
MOV b0_13,A
MOV A,STM_CompareMatchOutputUpdate0[1]
AND A,00h
MOV b0_13[1],A
MOV A,b0_13
MOV __stm0al,A
#line 518 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
MOV A,STM_CompareMatchOutputUpdate0[1]
MOV b0_13,A
CLR b0_13[1]
MOV A,b0_13
MOV __stm0ah,A
L30:
RET
LOCAL b0_13 DB 2 DUP(?)
_STM_CompareMatchOutputUpdate ENDP
#line 529 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
@STM_INIT .SECTION 'CODE'
PUBLIC _STM_INIT
_STM_INIT PROC
#pragma debug scope 19 1 ; 530 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
#line 530 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
CALL _STM_Init
#line 531 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
CALL _STM_PwmOutputConfig
#line 532 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
MOV A,080h
MOV STM_PwmUpdate0,A
MOV A,00h
MOV STM_PwmUpdate0[1],A
MOV A,02h
MOV STM_PwmUpdate1,A
CALL _STM_PwmUpdate
#line 533 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
SET [028H].3
#line 535 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\STM.h"
MOV A,01H
MOV RH,A
MOV A,0f2H
CALL __DELAYY1
L31:
RET
_STM_INIT ENDP
#line 40 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
@TB0_INIT .SECTION 'CODE'
PUBLIC _TB0_INIT
_TB0_INIT PROC
#pragma debug scope 20 1 ; 41 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 41 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [01BH].6
#line 42 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [01BH].7
#line 43 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [01BH].2
#line 43 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [01BH].1
#line 43 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [01BH].0
#line 44 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [0EH].2
#line 45 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [0EH].5
#line 46 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [0EH].0
L32:
RET
_TB0_INIT ENDP
#line 50 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
@TB1_INIT .SECTION 'CODE'
PUBLIC _TB1_INIT
_TB1_INIT PROC
#pragma debug scope 21 1 ; 51 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 51 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [01BH].6
#line 52 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [01BH].7
#line 53 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [01BH].5
#line 53 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [01BH].4
#line 54 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [0EH].3
#line 55 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [0EH].6
#line 56 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [0EH].0
L33:
RET
_TB1_INIT ENDP
#line 60 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
@TB_INIT .SECTION 'CODE'
PUBLIC _TB_INIT
_TB_INIT PROC
#pragma debug scope 22 1 ; 61 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 61 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [01BH].6
#line 62 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [01BH].7
#line 63 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [01BH].5
#line 63 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [01BH].4
#line 64 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [0EH].3
#line 65 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [0EH].6
#line 66 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [01BH].5
#line 66 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [01BH].4
#line 67 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [0EH].3
#line 68 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [0EH].6
#line 69 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [0EH].0
L34:
RET
_TB_INIT ENDP
#line 73 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
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
#pragma debug scope 23 1 ; 74 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 74 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
INC [02H]
#line 75 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
MOV A,[02H]
XOR A,01h
SNZ [0AH].2
JMP L36
#pragma debug scope 24 23 ; 77 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 77 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SNZ [014H].7
JMP L38
#pragma debug scope 25 24 ; 78 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 78 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
INC [02H]
#line 79 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Puls_off
MOV [04H],A
MOV A,OFFSET _Puls_off
MOV [03H],A
INC [02H]
#line 80 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#pragma debug scope 24 23 ; 80 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
JMP L39
L38:
#pragma debug scope 26 24 ; 81 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 81 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Puls_off
MOV [04H],A
MOV A,OFFSET _Puls_off
MOV [03H],A
CLR [02H]
#line 82 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
CLR [02H]
L39:
#line 85 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#pragma debug scope 24 23 ; 85 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [028H].3
L36:
#line 88 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#pragma debug scope 23 1 ; 88 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
MOV A,[02H]
XOR A,02h
SNZ [0AH].2
JMP L40
#pragma debug scope 27 23 ; 90 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 90 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SZ [014H].7
JMP L42
#pragma debug scope 28 27 ; 91 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 91 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
INC [02H]
#line 92 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Puls_off
MOV [04H],A
MOV A,OFFSET _Puls_off
MOV [03H],A
CLR [02H]
#line 93 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#pragma debug scope 27 23 ; 93 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
JMP L43
L42:
#pragma debug scope 29 27 ; 94 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 94 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Puls_off
MOV [04H],A
MOV A,OFFSET _Puls_off
MOV [03H],A
INC [02H]
#line 95 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
CLR [02H]
L43:
#line 98 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#pragma debug scope 27 23 ; 98 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [028H].3
#line 99 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
CLR [02H]
L40:
#line 103 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#pragma debug scope 23 1 ; 103 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Puls_Count
MOV [04H],A
MOV A,OFFSET _Puls_Count
MOV [03H],A
MOV A,03h
SUB A,[02H]
SZ [0AH].0
JMP L48
MOV A,01h
MOV CR5,A
JMP L49
L48:
CLR CR5
L49:
MOV A,BANK _Lock
MOV [04H],A
MOV A,OFFSET _Lock
MOV [03H],A
SZ [02H]
JMP L50
MOV A,01h
MOV CR6,A
JMP L51
L50:
CLR CR6
L51:
MOV A,CR5
AND A,CR6
MOV b0_18,A
SZ b0_18
JMP L56
JMP L44
L56:
#pragma debug scope 30 23 ; 105 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 105 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Lock
MOV [04H],A
MOV A,OFFSET _Lock
MOV [03H],A
MOV A,1
MOV [02H],A
#line 106 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 107 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
MOV A,[02H]
MOV b0_18,A
INC [03H]
MOV A,[02H]
MOV b0_18[1],A
MOV A,b0_18
XOR A,01h
SNZ [0AH].2
JMP L52
MOV A,b0_18[1]
XOR A,00h
SNZ [0AH].2
JMP L52
#pragma debug scope 31 30 ; 109 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 109 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [014H].0
#line 110 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [014H].1
#line 111 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#pragma debug scope 30 23 ; 111 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
JMP L53
L52:
#pragma debug scope 32 30 ; 114 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 114 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
CLR [014H].0
#line 115 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [014H].1
#line 116 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L53:
L44:
#line 120 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#pragma debug scope 23 1 ; 120 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Puls_off
MOV [04H],A
MOV A,OFFSET _Puls_off
MOV [03H],A
MOV A,0c8h
SUB A,[02H]
SZ [0AH].0
JMP L54
#pragma debug scope 33 23 ; 122 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 122 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Lock
MOV [04H],A
MOV A,OFFSET _Lock
MOV [03H],A
CLR [02H]
L54:
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
b0_18 DB 2 DUP(?)
CR5 DB ? ; 46
CR6 DB ? ; 47
#line 150 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
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
#pragma debug scope 34 1 ; 163 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 163 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Counter
MOV [04H],A
MOV A,OFFSET _Counter
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 164 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
MOV A,[02H]
MOV b0_19,A
INC [03H]
MOV A,[02H]
MOV b0_19[1],A
MOV A,b0_19
XOR A,01h
SNZ [0AH].2
JMP L58
MOV A,b0_19[1]
XOR A,00h
SNZ [0AH].2
JMP L58
#pragma debug scope 35 34 ; 166 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 166 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Counter
MOV [04H],A
MOV A,OFFSET _Counter
MOV [03H],A
MOV A,[02H]
MOV b0_19,A
INC [03H]
MOV A,[02H]
MOV b0_19[1],A
MOV A,BANK _Counter_On
MOV [04H],A
MOV A,OFFSET _Counter_On
MOV [03H],A
MOV A,[02H]
MOV b1_19,A
INC [03H]
MOV A,[02H]
MOV b1_19[1],A
MOV A,b1_19[1]
SUB A,b0_19[1]
SNZ [0AH].0
JMP L66
SNZ [0AH].2
JMP L60
MOV A,b1_19
SUB A,b0_19
SNZ [0AH].0
JMP L66
SNZ [0AH].2
JMP L60
L66:
#pragma debug scope 36 35 ; 168 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 168 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [014H].6
L60:
#line 170 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#pragma debug scope 35 34 ; 170 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Counter_On
MOV [04H],A
MOV A,OFFSET _Counter_On
MOV [03H],A
MOV A,[02H]
MOV b0_19,A
INC [03H]
MOV A,[02H]
MOV b0_19[1],A
MOV A,BANK _Counter_Off
MOV [04H],A
MOV A,OFFSET _Counter_Off
MOV [03H],A
MOV A,b0_19
MOV [02H],A
MOV A,b0_19[1]
INC [03H]
MOV [02H],A
L58:
#line 172 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#pragma debug scope 34 1 ; 172 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
MOV A,[02H]
MOV b0_19,A
INC [03H]
MOV A,[02H]
MOV b0_19[1],A
SZ b0_19
JMP L62
SZ b0_19[1]
JMP L62
#pragma debug scope 37 34 ; 174 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 174 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Counter
MOV [04H],A
MOV A,OFFSET _Counter
MOV [03H],A
MOV A,[02H]
MOV b0_19,A
INC [03H]
MOV A,[02H]
MOV b0_19[1],A
MOV A,BANK _Counter_Off
MOV [04H],A
MOV A,OFFSET _Counter_Off
MOV [03H],A
MOV A,[02H]
MOV b1_19,A
INC [03H]
MOV A,[02H]
MOV b1_19[1],A
MOV A,b1_19[1]
SUB A,b0_19[1]
SNZ [0AH].0
JMP L67
SNZ [0AH].2
JMP L64
MOV A,b1_19
SUB A,b0_19
SNZ [0AH].0
JMP L67
SNZ [0AH].2
JMP L64
L67:
#pragma debug scope 38 37 ; 176 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#line 176 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
SET [014H].6
L64:
#line 178 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
#pragma debug scope 37 34 ; 178 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
MOV A,BANK _Backup
MOV [04H],A
MOV A,OFFSET _Backup
MOV [03H],A
MOV A,[02H]
MOV b0_19,A
INC [03H]
MOV A,[02H]
MOV b0_19[1],A
MOV A,BANK _Counter_On
MOV [04H],A
MOV A,OFFSET _Counter_On
MOV [03H],A
MOV A,b0_19
MOV [02H],A
MOV A,b0_19[1]
INC [03H]
MOV [02H],A
L62:
L57:
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
b0_19 DB 2 DUP(?)
b1_19 DB 2 DUP(?)
#line 24 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
@EX_INIT .SECTION 'CODE'
PUBLIC _EX_INIT
_EX_INIT PROC
#pragma debug scope 39 1 ; 25 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
#line 25 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
SET [0DH].1
#line 25 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
SET [0DH].0
#line 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
SET [015H].5
#line 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
CLR [016H].5
#line 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
CLR [018H].1
#line 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
CLR [018H].0
#line 27 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
SET [0EH].1
#line 28 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
CLR [0EH].4
#line 29 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
SET [0EH].0
L68:
RET
_EX_INIT ENDP
#line 34 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
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
#pragma debug scope 40 1 ; 35 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
#line 35 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
MOV A,BANK _m
MOV [04H],A
MOV A,OFFSET _m
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
#line 36 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
MOV A,BANK _m
MOV [04H],A
MOV A,OFFSET _m
MOV [03H],A
MOV A,[02H]
MOV b0_21,A
INC [03h]
MOV A,[02h]
MOV b0_21[1],A
INC [03h]
MOV A,[02h]
MOV b0_21[2],A
INC [03h]
MOV A,[02h]
MOV b0_21[3],A
MOV A,00h
SUB A,b0_21[3]
SNZ [0ah].0
JMP L74
SNZ [0ah].2
JMP L70
MOV A,00h
SUB A,b0_21[2]
SNZ [0ah].0
JMP L74
SNZ [0ah].2
JMP L70
MOV A,00h
SUB A,b0_21[1]
SNZ [0Ah].0
JMP L74
SNZ [0Ah].2
JMP L70
MOV A,b0_21
SUB A,032h
SNZ [0Ah].0
JMP L70
L74:
#pragma debug scope 41 40 ; 38 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
#line 38 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
CLR [014H].6
L70:
#line 40 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
#pragma debug scope 40 1 ; 40 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
MOV A,BANK _m
MOV [04H],A
MOV A,OFFSET _m
MOV [03H],A
MOV A,[02H]
MOV b0_21,A
INC [03h]
MOV A,[02h]
MOV b0_21[1],A
INC [03h]
MOV A,[02h]
MOV b0_21[2],A
INC [03h]
MOV A,[02h]
MOV b0_21[3],A
MOV A,00h
SUB A,b0_21[3]
SNZ [0ah].0
JMP L75
SNZ [0ah].2
JMP L72
MOV A,00h
SUB A,b0_21[2]
SNZ [0ah].0
JMP L75
SNZ [0ah].2
JMP L72
MOV A,00h
SUB A,b0_21[1]
SNZ [0Ah].0
JMP L75
SNZ [0Ah].2
JMP L72
MOV A,b0_21
SUB A,064h
SNZ [0Ah].0
JMP L72
L75:
#pragma debug scope 42 40 ; 42 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
#line 42 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
MOV A,BANK _m
MOV [04H],A
MOV A,OFFSET _m
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
INC [03H]
CLR [02H]
#line 43 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\EXINT.h"
SET [014H].6
L72:
L69:
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
b0_21 DB 4 DUP(?)
#line 9 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 43 1 ; 10 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
#line 10 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _Frist
MOV [04H],A
MOV A,OFFSET _Frist
MOV [03H],A
CLR [02H]
#line 11 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _CountEdge
MOV [04H],A
MOV A,OFFSET _CountEdge
MOV [03H],A
CLR [02H]
#line 12 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _Zero_Time
MOV [04H],A
MOV A,OFFSET _Zero_Time
MOV [03H],A
CLR [02H]
#line 13 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _Zero_Flag
MOV [04H],A
MOV A,OFFSET _Zero_Flag
MOV [03H],A
CLR [02H]
#line 14 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _Trig
MOV [04H],A
MOV A,OFFSET _Trig
MOV [03H],A
CLR [02H]
#line 15 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _Triger
MOV [04H],A
MOV A,OFFSET _Triger
MOV [03H],A
CLR [02H]
#line 16 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _Shift
MOV [04H],A
MOV A,OFFSET _Shift
MOV [03H],A
CLR [02H]
#line 17 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _Set
MOV [04H],A
MOV A,OFFSET _Set
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 18 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _Count
MOV [04H],A
MOV A,OFFSET _Count
MOV [03H],A
CLR [02H]
#line 19 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _CountSW
MOV [04H],A
MOV A,OFFSET _CountSW
MOV [03H],A
CLR [02H]
#line 20 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _Backup
MOV [04H],A
MOV A,OFFSET _Backup
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 21 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
MOV A,BANK _Detect
MOV [04H],A
MOV A,OFFSET _Detect
MOV [03H],A
CLR [02H]
#line 22 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
CALL _IO_INIT
#line 23 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
CALL _STM_INIT
#line 24 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
CALL _TB0_INIT
#line 25 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
CALL _TB1_INIT
#line 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
CALL _EX_INIT
#line 26 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
JMP L78
L77:
#pragma debug scope 44 43 ; 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
CLR WDT
L78:
#line 28 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
#pragma debug scope 43 1 ; 28 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
JMP L77
L76:
#line 111 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
JMP $
_main ENDP
#line 34 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _m
@m .SECTION 'DATA'
_m DB 4 DUP (?) ;m
#pragma debug variable 4 1 _m m
#line 33 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Set
@Set .SECTION 'DATA'
_Set DB 2 DUP (?) ;Set
#pragma debug variable 4 1 _Set Set
#line 33 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Counter_Off
@Counter_Off .SECTION 'DATA'
_Counter_Off DB 2 DUP (?) ;Counter_Off
#pragma debug variable 4 1 _Counter_Off Counter_Off
#line 33 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Counter_On
@Counter_On .SECTION 'DATA'
_Counter_On DB 2 DUP (?) ;Counter_On
#pragma debug variable 4 1 _Counter_On Counter_On
#line 33 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Counter
@Counter .SECTION 'DATA'
_Counter DB 2 DUP (?) ;Counter
#pragma debug variable 4 1 _Counter Counter
#line 33 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Backup
@Backup .SECTION 'DATA'
_Backup DB 2 DUP (?) ;Backup
#pragma debug variable 4 1 _Backup Backup
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Lock
@Lock .SECTION 'DATA'
_Lock DB ? ; Lock
#pragma debug variable 4 1 _Lock Lock
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Puls_off
@Puls_off .SECTION 'DATA'
_Puls_off DB ? ; Puls_off
#pragma debug variable 4 1 _Puls_off Puls_off
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Puls_Count
@Puls_Count .SECTION 'DATA'
_Puls_Count DB ? ; Puls_Count
#pragma debug variable 4 1 _Puls_Count Puls_Count
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Detect
@Detect .SECTION 'DATA'
_Detect DB ? ; Detect
#pragma debug variable 4 1 _Detect Detect
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _CountSW
@CountSW .SECTION 'DATA'
_CountSW DB ? ; CountSW
#pragma debug variable 4 1 _CountSW CountSW
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Count
@Count .SECTION 'DATA'
_Count DB ? ; Count
#pragma debug variable 4 1 _Count Count
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Shift
@Shift .SECTION 'DATA'
_Shift DB ? ; Shift
#pragma debug variable 4 1 _Shift Shift
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Triger
@Triger .SECTION 'DATA'
_Triger DB ? ; Triger
#pragma debug variable 4 1 _Triger Triger
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Trig
@Trig .SECTION 'DATA'
_Trig DB ? ; Trig
#pragma debug variable 4 1 _Trig Trig
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Zero_Flag
@Zero_Flag .SECTION 'DATA'
_Zero_Flag DB ? ; Zero_Flag
#pragma debug variable 4 1 _Zero_Flag Zero_Flag
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Zero_Time
@Zero_Time .SECTION 'DATA'
_Zero_Time DB ? ; Zero_Time
#pragma debug variable 4 1 _Zero_Time Zero_Time
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _CountEdge
@CountEdge .SECTION 'DATA'
_CountEdge DB ? ; CountEdge
#pragma debug variable 4 1 _CountEdge CountEdge
#line 30 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\TIMEBASE.h"
PUBLIC _Frist
@Frist .SECTION 'DATA'
_Frist DB ? ; Frist
#pragma debug variable 4 1 _Frist Frist
#line 8 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
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
#line 8 "E:\hamed\touch2\IR-PRG-NEW-hamed-V1\IR-PRG\IR-PRG.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
