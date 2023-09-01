;sort a series of 5 numbers
ORG 0000H;
start:
MOV R7,#04H;
back2:
MOV R6,#04H;
MOV R0,#20H;
back1:
MOV A,@R0;
INC R0;
MOV B,@R0;
CJNE A,B,next;
next:
JC skip;
MOV @R0,A;
DEC R0;
MOV @R0,B;
INC R0;
skip:
DJNZ R6,back1;
DJNZ R7,back2;
here:SJMP here;
END;