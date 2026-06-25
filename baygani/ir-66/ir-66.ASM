#pragma debug scope 1 1
#line 17 "E:\hamed\touch2\ir-66\ir-66.c"
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
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 2 1 ; 21 "E:\hamed\touch2\ir-66\ir-66.c"
#line 21 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [015H].5
#line 22 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [015H].7
#line 23 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [015H].1
#line 25 "E:\hamed\touch2\ir-66\ir-66.c"
SET [015H].6
#line 28 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [014H].5
#line 32 "E:\hamed\touch2\ir-66\ir-66.c"
SET [026H].0
#line 33 "E:\hamed\touch2\ir-66\ir-66.c"
SET [026H].1
#line 37 "E:\hamed\touch2\ir-66\ir-66.c"
SET [022H].4
#line 40 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [023H].2
#line 40 "E:\hamed\touch2\ir-66\ir-66.c"
SET [023H].1
#line 40 "E:\hamed\touch2\ir-66\ir-66.c"
SET [023H].0
#line 43 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [024H].3
#line 43 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [024H].2
#line 43 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [024H].1
#line 43 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [024H].0
#line 46 "E:\hamed\touch2\ir-66\ir-66.c"
SET [022H].5
#line 49 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [0FH].6
#line 50 "E:\hamed\touch2\ir-66\ir-66.c"
SET [0FH].2
#line 53 "E:\hamed\touch2\ir-66\ir-66.c"
SET [0EH].0
#line 57 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L2:
#pragma debug scope 3 2 ; 60 "E:\hamed\touch2\ir-66\ir-66.c"
#line 60 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [022H].0
#line 61 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [022H].1
#line 65 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [022H].7
#line 65 "E:\hamed\touch2\ir-66\ir-66.c"
SET [022H].7
#line 65 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [022H].7
L6:
L7:
#line 68 "E:\hamed\touch2\ir-66\ir-66.c"
SZ [022H].6
JMP L6
#line 72 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,08h
MOV b0_1,A
MOV A,b0_1
MOV RH,A
MOV A,__sadoh
MOV b0_1,A
SZ RH
JMP sha23
JMP shb23
sha23:
CLR [0AH].0
RLC b0_1
SDZ RH
JMP sha23
shb23:
MOV A,__sadol
ORM A,b0_1
CLR b0_1[1]
MOV A,BANK _Value
MOV [04H],A
MOV A,OFFSET _Value
MOV [03H],A
MOV A,b0_1
MOV [02H],A
INC [03H]
MOV A,b0_1[1]
MOV [02h],A
INC [03h]
CLR [02H]
INC [03h]
CLR [02h]
#line 73 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,BANK _Value
MOV [04H],A
MOV A,OFFSET _Value
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03h]
MOV A,[02h]
MOV b0_1[1],A
INC [03h]
MOV A,[02h]
MOV b0_1[2],A
INC [03h]
MOV A,[02h]
MOV b0_1[3],A
MOV A,BANK _ValueThreshold
MOV [04H],A
MOV A,OFFSET _ValueThreshold
MOV [03H],A
MOV A,b0_1
ADDM A,[02H]
MOV A,b0_1[1]
INC [03H]
ADCM A,[02H]
MOV A,b0_1[2]
INC [03H]
ADCM A,[02H]
MOV A,b0_1[3]
INC [03H]
ADCM A,[02H]
#line 75 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,018H
CALL __DELAYX0
L3:
#line 57 "E:\hamed\touch2\ir-66\ir-66.c"
#pragma debug scope 2 1 ; 57 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 57 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,80h
XOR A,b0_1[1]
SUB A,080h
SNZ [0AH].0
JMP L2
SNZ [0AH].2
JMP L24
MOV A,b0_1
SUB A,014h
SNZ [0AH].0
JMP L2
L24:
#line 77 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,BANK _ValueThreshold
MOV [04H],A
MOV A,OFFSET _ValueThreshold
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03h]
MOV A,[02h]
MOV b0_1[1],A
INC [03h]
MOV A,[02h]
MOV b0_1[2],A
INC [03h]
MOV A,[02h]
MOV b0_1[3],A
MOV A,b0_1
MOV T2,A
MOV A,b0_1[1]
MOV RH,A
MOV A,b0_1[2]
MOV RM,A
MOV A,b0_1[3]
MOV RU,A
MOV A,00h
MOV T6,A
MOV A,00h
MOV T5,A
MOV A,00h
MOV T4,A
MOV A,014h
MOV T3,A
CALL DIVUL4
MOV A,RU
MOV b0_1[3],A
MOV A,RM
MOV b0_1[2],A
MOV A,RH
MOV b0_1[1],A
MOV A,T2
MOV b0_1,A
MOV A,BANK _ValueThreshold
MOV [04H],A
MOV A,OFFSET _ValueThreshold
MOV [03H],A
MOV A,b0_1
MOV [02H],A
MOV A,b0_1[1]
INC [03H]
MOV [02H],A
MOV A,b0_1[2]
INC [03H]
MOV [02H],A
MOV A,b0_1[3]
INC [03H]
MOV [02H],A
#line 77 "E:\hamed\touch2\ir-66\ir-66.c"
JMP L10
L9:
#pragma debug scope 4 2 ; 82 "E:\hamed\touch2\ir-66\ir-66.c"
#line 82 "E:\hamed\touch2\ir-66\ir-66.c"
CLR WDT
#line 87 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [022H].0
#line 88 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [022H].1
#line 92 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [022H].7
#line 92 "E:\hamed\touch2\ir-66\ir-66.c"
SET [022H].7
#line 92 "E:\hamed\touch2\ir-66\ir-66.c"
CLR [022H].7
L12:
L13:
#line 95 "E:\hamed\touch2\ir-66\ir-66.c"
SZ [022H].6
JMP L12
#line 99 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,08h
MOV b0_1,A
MOV A,b0_1
MOV RH,A
MOV A,__sadoh
MOV b0_1,A
SZ RH
JMP sha25
JMP shb25
sha25:
CLR [0AH].0
RLC b0_1
SDZ RH
JMP sha25
shb25:
MOV A,__sadol
ORM A,b0_1
MOV A,BANK _Value
MOV [04H],A
MOV A,OFFSET _Value
MOV [03H],A
MOV A,b0_1
MOV [02H],A
INC [03H]
CLR [02H]
INC [03h]
CLR [02h]
INC [03h]
CLR [02h]
#line 102 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
#line 102 "E:\hamed\touch2\ir-66\ir-66.c"
JMP L18
L15:
#pragma debug scope 5 4 ; 104 "E:\hamed\touch2\ir-66\ir-66.c"
#line 104 "E:\hamed\touch2\ir-66\ir-66.c"
CLR WDT
#line 105 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,1<<7
XORM A,[014H]
#line 106 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,01H
CALL __DELAYX2
L16:
#line 102 "E:\hamed\touch2\ir-66\ir-66.c"
#pragma debug scope 4 2 ; 102 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
L18:
#line 102 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
CLR b0_1[2]
SZ [05H].7
SET b0_1[2]
CLR b0_1[3]
SZ [05H].7
SET b0_1[3]
MOV A,BANK _Value
MOV [04H],A
MOV A,OFFSET _Value
MOV [03H],A
MOV A,[02H]
MOV b1_1,A
INC [03h]
MOV A,[02h]
MOV b1_1[1],A
INC [03h]
MOV A,[02h]
MOV b1_1[2],A
INC [03h]
MOV A,[02h]
MOV b1_1[3],A
MOV A,b1_1[3]
SUB A,b0_1[3]
SNZ [0ah].0
JMP L26
SNZ [0ah].2
JMP L15
MOV A,b1_1[2]
SUB A,b0_1[2]
SNZ [0ah].0
JMP L26
SNZ [0ah].2
JMP L15
MOV A,b1_1[1]
SUB A,b0_1[1]
SNZ [0Ah].0
JMP L26
SNZ [0Ah].2
JMP L15
MOV A,b0_1
SUB A,b1_1
SNZ [0Ah].0
JMP L15
L26:
#line 109 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
CLR [02H]
INC [03H]
CLR [02H]
L19:
#pragma debug scope 6 4 ; 111 "E:\hamed\touch2\ir-66\ir-66.c"
#line 111 "E:\hamed\touch2\ir-66\ir-66.c"
CLR WDT
#line 112 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,061H
MOV RH,A
MOV A,076H
CALL __DELAYY1
L20:
#line 109 "E:\hamed\touch2\ir-66\ir-66.c"
#pragma debug scope 4 2 ; 109 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,01h
ADDM A,[02H]
MOV A,00h
INC [03H]
ADCM A,[02H]
#line 109 "E:\hamed\touch2\ir-66\ir-66.c"
MOV A,BANK _i
MOV [04H],A
MOV A,OFFSET _i
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,80h
XOR A,b0_1[1]
SUB A,080h
SNZ [0AH].0
JMP L19
SNZ [0AH].2
JMP L27
MOV A,b0_1
SUB A,0ah
SNZ [0AH].0
JMP L19
L27:
L10:
#line 80 "E:\hamed\touch2\ir-66\ir-66.c"
#pragma debug scope 2 1 ; 80 "E:\hamed\touch2\ir-66\ir-66.c"
JMP L9
L1:
#line 152 "E:\hamed\touch2\ir-66\ir-66.c"
JMP $
LOCAL b0_1 DB 4 DUP(?)
LOCAL b1_1 DB 4 DUP(?)
_main ENDP
#line 13 "E:\hamed\touch2\ir-66\ir-66.c"
PUBLIC _i
@i .SECTION 'DATA'
_i DB 2 DUP (?) ;i
#pragma debug variable 11 1 _i i
#line 13 "E:\hamed\touch2\ir-66\ir-66.c"
PUBLIC _f
@f .SECTION 'DATA'
_f DB 2 DUP (?) ;f
#pragma debug variable 11 1 _f f
#line 10 "E:\hamed\touch2\ir-66\ir-66.c"
PUBLIC _fingerCounter
@fingerCounter .SECTION 'DATA'
_fingerCounter DB 4 DUP (?) ;fingerCounter
#pragma debug variable 14 1 _fingerCounter fingerCounter
#line 9 "E:\hamed\touch2\ir-66\ir-66.c"
PUBLIC _ValueThreshold
@ValueThreshold .SECTION 'DATA'
_ValueThreshold DB 4 DUP (?) ;ValueThreshold
#pragma debug variable 14 1 _ValueThreshold ValueThreshold
#line 8 "E:\hamed\touch2\ir-66\ir-66.c"
PUBLIC _Value
@Value .SECTION 'DATA'
_Value DB 4 DUP (?) ;Value
#pragma debug variable 14 1 _Value Value
#line 16 "E:\hamed\touch2\ir-66\ir-66.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN RH:BYTE
EXTERN RM:BYTE
EXTERN RU:BYTE
EXTERN T2:BYTE
EXTERN T3:BYTE
EXTERN T4:BYTE
EXTERN T5:BYTE
EXTERN T6:BYTE
EXTERN T7:BYTE
EXTERN T8:BYTE
EXTERN T9:BYTE
EXTERN T10:BYTE
EXTERN T11:BYTE
EXTERN DIVUL4:NEAR
EXTERN __DELAYX0:NEAR
EXTERN __DELAYX1:NEAR
EXTERN __DELAYX2:NEAR
EXTERN __DELAYX3:NEAR
EXTERN __DELAYX4:NEAR
EXTERN __DELAYX5:NEAR
EXTERN __DELAYX6:NEAR
EXTERN __DELAYY0:NEAR
EXTERN __DELAYY1:NEAR
EXTERN __DELAYY2:NEAR
EXTERN __DELAYY3:NEAR
EXTERN __DELAYY4:NEAR
EXTERN __DELAYY5:NEAR
#line 16 "E:\hamed\touch2\ir-66\ir-66.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
