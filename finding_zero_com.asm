;given list, if num is 00H store at 40H; if num is FFH store at 50H;
ORG 3000H;
DB 0FFH,44H,00H,0A3H,1FH;

ORG 0000H;
MOV DPTR,#3000H;
MOV R7,#05H;
MOV B,#00H;
back:
CLR A;
MOVC A,@A+DPTR;
CJNE A,B,next_if;
MOV 40H,A;
SJMP next;
next_if:MOV B,#0FFH;;complement B; FFH
CJNE A,B,next;
MOV 50H,A;
next:INC DPTR;
DJNZ R7,back;
here:SJMP here;
END

