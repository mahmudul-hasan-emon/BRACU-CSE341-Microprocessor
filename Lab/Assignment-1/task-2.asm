;Task 02:If X, Y and Z are 3 variables, perform the given mathematical operation: Z =Y - (Z + X);
    

.MODEL SMALL

.STACK 100H

.DATA
     
    x dw 30
    y dw 20
    z dw 10 

       
.CODE
MAIN PROC

;initizlize DS

MOV AX,@DATA
MOV DS,AX

; enter your code here

    mov ax,x
    mov bx,y
    mov cx,z 
    
    add ax,cx
    sub bx,ax
    
    mov cx,bx


;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
   END MAIN