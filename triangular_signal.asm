MOV P1,#00H;
continue:
MOV A,#00H;
rise:MOV P1,A;
INC A;
CJNE A,#0FFH,rise;
MOV A,#0FFH;
fall:MOV P1,A;
DEC A;
CJNE A,#00H,fall;
SJMP continue;
END
