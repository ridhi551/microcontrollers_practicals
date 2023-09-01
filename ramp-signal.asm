MOV P1,#00H;
MOV A,#00H;
continue:
MOV P1,A;
INC A;
SJMP continue;
END