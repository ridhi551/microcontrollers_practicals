;addition of series of 10 numbers
ORG 3000H;
DB 99,22,11,43,65,89,12;

ORG 0000H;
MOV DPTR,#3000H;
MOV R7,#07H; count
MOV R6,#00H;carry
back:
CLR A;
MOVC A,@A+DPTR;
ADD A,B;
JNC skip;
INC R6;
skip:MOV B,A;
INC DPTR;
DJNZ R7,back;
MOV 20H,A;
MOV A,R6;
MOV 21H,A;
here:SJMP here;
END  