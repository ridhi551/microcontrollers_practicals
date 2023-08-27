;blink P1.0 led then off
ORG 0000H;
MOV A,#00H;
MOV P1,A; P1 as output

MOV A,00H;CLEAR all led to shut
MOV P1,A;
SETB P1.0;
ACALL delay;
CLR P1.0;
ACALL delay;

delay:
MOV R7,#02H;
back:NOP;
DJNZ R7,back;
RET;
END
