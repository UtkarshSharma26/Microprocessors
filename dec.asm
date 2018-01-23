.model small

.data
arr db 5h,7h,6h,4h,10h,09h
len db arr

.code
start: mov ax,data
          mov ds,ax
          mov cl,len
lp1:    mov bx,cx
          lea si,arr
lp2:    mov al,[si+1]
          inc si
          cmp [si+1],al
          jb lp3
          xchg [si+1],al
          mov [si],al
lp3:    dec bx
          jnz lp2
          loop lp1
          mov ah,4ch
          int 21h
end start

