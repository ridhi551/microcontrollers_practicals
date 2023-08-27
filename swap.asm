;swap the 5 data bytes in the external memeory
ORG 3000H;
DB 01H,02H,03H,04H,05H;

ORG 0000H;
MOV DPTR,#3000H;
MOV R7,#05H;
MOV R0,#20H;actual value
MOV R1,#30H; swapped value
back:
CLR A;
MOVC A,@A+DPTR;
MOV @R0,A;
SWAP A;
MOV @R1,A;
INC DPTR;
INC R0;
INC R1;
DJNZ R7,back;
here:SJMP here;
END
