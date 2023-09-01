;program for blinking LED'S
ORG 0000H;
MOV A,#00H;
MOV P1,A; P1 as output
MOV A,#00H;
back:MOV P1,A;
ACALL timer_delay;
CPL A;
SJMP back;
timer_delay:
MOV TMOD,#01H;
MOV TL0,#0F6H;
MOV TH0,#0FEH;
SETB TR0;
wait:JNB TF0,wait;
CLR TR0;
CLR TF0;
RET;
END
