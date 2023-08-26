;to get data value from ext RAM and add
ORG 3000H;
DB 01H,02H;

ORG 0000H;
CLR A;
MOV R7,#00H;carry
MOV R0,#20H;sum at int RAM
MOV DPTR,#3000H;
CLR A;
MOVC A,@A+DPTR;
MOV R6,A;
INC DPTR;
CLR A;
MOVC A,@A+DPTR;
ADD A,R6;
JNC skip;
INC R7;
skip:MOV @R0,A;
INC R0;
MOV A,R7;
MOV @R0,A;
here:SJMP here;
END
