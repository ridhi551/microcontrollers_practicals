; highest in the list
ORG 3000H;
DB 1AH,0FFH,09H,22H,54H;

ORG 0000H;
MOV DPTR,#3000H;
MOV R7,#05H;
MOV B,#00H;
back:
CLR A; 
MOVC A,@A+DPTR;
CJNE A,B,next;
next:JC skip;CY=0
MOV B,A; higher value in B
skip:INC DPTR;
DJNZ R7,back;
MOV A,B;
MOV 40H,A;
here:SJMP here;
END