; 2023 on 7-segment
ORG 0300H;
DB 0C0H,0F9H,0A4H,0B0H,99H,92H,82H,0F8H,80H,90H;
ORG 0000H;
MOV DPTR,#0300H;
SETB P0.7;
again:
MOV A,#02H; display 3
MOVC A,@A+DPTR;
SETB P3.4;
SETB P3.3;
MOV P1,A;
ACALL delay;

MOV A,#00H; display 2
MOVC A,@A+DPTR;
SETB P3.4;
CLR P3.3;
MOV P1,A;
ACALL delay;

MOV A,#02H; display 1
MOVC A,@A+DPTR;
CLR P3.4;
SETB P3.3;
MOV P1,A;
ACALL delay;

MOV A,#03H; display 0
MOVC A,@A+DPTR;
CLR P3.4;
CLR P3.3;
MOV P1,A;
ACALL delay;
SJMP again;

delay:
loop:MOV R2,#0AH;
DJNZ R2,loop;
RET

END