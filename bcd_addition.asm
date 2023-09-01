;BCD addition
ORG 3000H;
DB 0x12, 0x34, 0x56, 0x78, 0x89, 0xAB, 0xCD, 0xDE, 0xEF, 0x11;

ORG 0000H;
MOV DPTR,#3000H;
MOV R2,#0AH;
MOV R3,#00H; carry
MOV A,#00H;
MOV B,A;
loop:
CLR A;
MOVC A,@A+DPTR;
ADD A,B;
DA A;
MOV B,A;
INC DPTR;
DJNZ R2,loop;
JNC skip;
INC R3;
skip:MOV 20H,A
MOV 21H,R3;
here:SJMP here;
END;