data segment
    star db "*$"
ends
stack segment
    dw 128 dup(0)
ends

code segment
start:

    mov ax, data
    mov ds, ax
    mov es, ax    
    mov cx, 40    
    create:
    mov ah, 9
    lea dx, star
    int 21h
    loop create
    
ends

end start 
