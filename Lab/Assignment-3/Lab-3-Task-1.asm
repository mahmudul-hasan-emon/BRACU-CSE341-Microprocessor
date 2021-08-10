.MODEL SMALL
 
.STACK 100H

.DATA
         
        A db 0ah,0dh, "Enter nUmber between 1-9: $"
        B db 0ah,0dh, "Divisible $"
        C db 0ah,0dh, "Not Divisible $"
       
.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX
       
       
        lea dx,A
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        sub al,30h
        mov cl,al
        mov bl,03
        
        xor ax,ax
        mov al,cl
        div bl
        cmp ah,00
        jz alpha
        lea dx,C
        mov ah,09h
        int 21h
        jmp beta
    alpha:
        lea dx,B
        mov ah,09h
        int 21h
        
        
   beta:
        mov ah,4ch
        int 21h 
        
         
        
        EXIT: 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 