;toggle led's
ORG 0000H;
MOV A,#00H;
MOV P1,A; P1 as output

MOV A,#55H;
back:MOV P1,A;
;ACALL delay;
CPL A;
;ACALL delay;
SJMP back;

delay:
MOV R7,#01H;
again:NOP;
DJNZ R7,again;
RET;
END
