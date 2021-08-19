.MODEL SMALL
 
.STACK 100H

.DATA 

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 

 
mov cx,18

mov dx,100 
mov bx,100

create:
sub bx,5
add dx,bx
loop create

mov ax,dx


;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 

