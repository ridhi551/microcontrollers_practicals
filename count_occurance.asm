;count the occurance of a given num in a list

ORG 3000H;
DB 11H,09H,AAH,65H,90H,00H,11H,11H;

ORG 0000H;
MOV DPTR,#3000H;
MOV R7,#08H;
MOV B,#11H;occurance of 11H;
MOV R6,#00H;count register of 11H
back:
CLR A;
MOVC A,@A+DPTR;
CJNE A,B,skip;
INC R6; if A-B=0 inc count
skip:INC DPTR;
DJNZ R7,back;
MOV 20H,R6;
here:SJMP here;
END