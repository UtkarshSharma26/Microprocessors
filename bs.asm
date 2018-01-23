data segment
arr db 2h,8h,7h
len db $-arr
data ends

code segment
assume cs:code , ds:data
start: mov ax,data
	mov ax,0h
          mov ds,ax
          mov cl,len
lp1:    mov bx,cx
          lea si,arr
lp2:    mov al,[si]
          inc si
          cmp [si],al
          jb lp3
          xchg [si],al
          mov [si-1],al
lp3:    dec bx
          jnz lp2
          loop lp1
          mov ah,4ch
          int 21h
code ends
end start
