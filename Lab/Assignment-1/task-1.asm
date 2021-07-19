;Task 01:Swap two numbers using ADD/SUB instructions only

.MODEL SMALL

.STACK 100H

.DATA


       
.CODE
MAIN PROC

;initizlize DS

MOV AX,@DATA
MOV DS,AX

; enter your code here
     
    ;Task 01:Swap two numbers using ADD/SUB instructions only 
    
    mov ax, 10
    mov bx, 5
    add ax, bx
    neg bx
    add bx, ax
    sub ax, bx
   



;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
   END MAIN