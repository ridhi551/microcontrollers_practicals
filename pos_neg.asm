;count no.of +ve and -ve words
ORG 3000H;
DB -11,-09,-34,10,-11;

ORG 0000H;
MOV DPTR,#3000H;
MOV R5,#05H; data count
MOV R7,#00H; -ve count
MOV R6,#00H; +ve count
back:
CLR A;
MOVC A,@A+DPTR;
RLC A;rotate A to left - check msb
JNC positive;
INC R7; inc if -ve
SJMP next; 
positive:INC R6; inc if +ve
next:INC DPTR;
DJNZ R5,back;
MOV 50H,R6; even at 50H
MOV 51H,R7; odd at 51H
here:SJMP here;
END