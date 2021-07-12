;Task 03:If A, B and C are 3 variables, then perform the given mathematical operation :A / B * C
    
.MODEL SMALL

.STACK 100H

.DATA

   a dw 30
   b dw 20
   c dw 15
       
.CODE
MAIN PROC

;initizlize DS

MOV AX,@DATA
MOV DS,AX

; enter your code here

    mov ax,a
    mov bx,b    
    div bx

    mov cx,c
    mul c


;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
   END MAIN