MOV P2,#00H; P2 as output
again:
MOV P2,#00H;
ACALL delay;
ACALL delay;
MOV P2,#0FFH;
ACALL delay;
ACALL delay;
ACALL delay;

SJMP again;

delay:
MOV R2,#0FFH;
MOV R3,#0FFH;
loop1:DJNZ R2,loop1;
loop2:DJNZ R3,loop2;
RET

END