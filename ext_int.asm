;transfer the data bytes from ext.RAM to int.RAM 
ORG 3000H;
DB 01H,02H,03H,04H,05H;

ORG 0000H;
MOV DPTR,#3000H;
MOV R0,#30H;
back:
CLR A;
MOVC A,@A+DPTR;
MOV @R0,A;
INC R0;
INC DPTR;
CJNE A,#00H,back;
here:SJMP here;
END

