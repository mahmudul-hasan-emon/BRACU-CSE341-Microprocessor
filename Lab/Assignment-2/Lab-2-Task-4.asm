.MODEL SMALL

.STACK 100H

.DATA


       
.CODE
MAIN PROC

;initizlize DS

MOV AX,@DATA
MOV DS,AX

; enter your code here

   mov ah,1
   int 21h
   sub al,30h
   
   mov bl,4
   mul bl
   mov bl,al
   
   mov ah,1
   int 21h
   sub al,30h
   
   mov cl,2
   mul cl
   
   mov cl,al
   
   mov ah,1
   int 21h
   sub al,30h
   
   mov ch,1
   mul ch
   
   mov ch,al
   
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,0ah
   int 21h
   
   add cl,ch
   add cl,bl
   add cl,30h
   mov dl,cl
   
   mov ah,2
   int 21h


;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
   END MAIN