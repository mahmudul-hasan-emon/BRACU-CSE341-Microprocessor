.MODEL SMALL
 
.STACK 100H

.DATA 
    A db "Enter a digit: $"
    B db "Odd$"
    C db "Even$" 
    
.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX
    
    lea dx,A
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,2
    div bl

    cmp ah,0
    je EVEN:
          
    mov ah,2 
    mov dl,0Dh 
    int 21h 
    mov dl,0Ah 
    int 21h 
          
    lea dx,B
    mov ah,9
    int 21h
    jmp EXIT:
    
    EVEN:
    mov ah,2 
    mov dl,0Dh 
    int 21h 
    mov dl,0Ah 
    int 21h 
    
    lea dx,C
    mov ah,9
    int 21h
    
    EXIT: 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
