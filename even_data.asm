;to transfer only the even data-bytes into int.RAM
ORG 3000H;
DB 02H,04H,09H,08H,22H,05H;

ORG 0000H;
MOV DPTR,#3000H;
MOV R0,#20H;
MOV R7,#06H;
back:
CLR A;
MOVC A,@A+DPTR
MOV R6,A;acctual num
RRC A;rotate right to check the msb - via - carry flag
JC skip; CY=1 -> num is odd then PC=skip and do nothing
MOV A,R6;
MOV @R0,A;
INC R0;
skip:INC DPTR;
DJNZ R7,back;
here:SJMP here;
END