;block transfer program
ORG 3000H;
DB 01H,02H,03H,04H,05H;

ORG 0000H;
MOV DPTR,#3000H;
MOV R0,#20H;int RAM loc - source
MOV R1,#30H; dest loc
MOV R7,#05h;count
back:
CLR A;
MOVC A,@A+DPTR;
MOV @R0,A;
MOV @R1,A;
INC DPTR;
INC R0;
INC R1;
DJNZ R7,back;
END
