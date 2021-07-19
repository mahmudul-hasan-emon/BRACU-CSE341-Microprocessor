;Task 02: Take a 2-digit number as input from the user. Let the number be 𝑛. Now display
the 𝑛𝑡ℎ character in English Alphabet at the next position on the next line in lower
case. (You don’t need to do error checking; the input number will be kept between
01 and 26).

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
   
   mov bl,10
   mul bl
   mov bl,al
   
   mov ah,1
   int 21h
   sub al,30h
   
   add bl,al  
   
   add bl,60h
   
   mov ah,2
   mov dl,0ah
   int 21h
   
   mov dl,bl
   mov ah,2
   int 21h
   


;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
   END MAIN