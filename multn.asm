DATA SEGMENT 
N1 DW 4444H
N2 DW 2121H
RESH DW ?
RESL DW ?
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
MOV AX,DATA
MOV DS,AX
MOV AX,N1
MUL N2
MOV RESH,AX
MOV RESL,BX
INT 21H
CODE ENDS
END