;Task 01: Take two single digit numbers as input. Let’s call them 𝑥 and 𝑦. Now calculate
(𝑥 + 𝑦)^2, print the message “The result is” and then display the least significant
digit of the result (i.e., (𝑥 + 𝑦)^2 mod 10) in the next line.

.MODEL SMALL

.STACK 100H

.DATA

A db "The result is $"
       
.CODE
MAIN PROC

;initizlize DS

MOV AX,@DATA
MOV DS,AX

; enter your code here

    mov ah,1
    int 21h
    mov bl,al 
    sub bl,30h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al 
    sub cl,30h 
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h  
    
    lea dx,A
    mov ah,9
    int 21h 
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h  
    
    add bl,cl
    
    mov dl,bl
    add dl,30h
    mov ah,2
    int 21h 
    
    
    
    
    


;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
   END MAIN
