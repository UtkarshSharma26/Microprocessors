DATA SEGMENT
N1 DW 1234H
N2 DW 2134H
RES DW ?
DATA ENDS
CODE SEGMENT
ASSUME CS: CODE, DS: DATA
START: MOV AX, DATA
MOV DS, AX
MOV AX, N1
MOV BX, N2
ADD AX, BX
MOV RES, AX
INT 21H
CODE ENDS
END START

