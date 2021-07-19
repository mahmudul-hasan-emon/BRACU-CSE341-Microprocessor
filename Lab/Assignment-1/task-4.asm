;Task 04:Perform the following arithmetic operation: (5 + 6) * (4 + 1) / 3 + 2 + 1 - (6 * 5)

.MODEL SMALL

.STACK 100H

.DATA


       
.CODE
MAIN PROC

;initizlize DS

MOV AX,@DATA
MOV DS,AX

; enter your code here

   mov al, 5
   mov bl, 6
   add al, bl 
                                    
   mov cl, 4
   mov dl, 1
   add cl, dl
                                    
   mul cl     
                                    
   mov bl, 3  
   div bl     
                                    
   mov bl, 2
   add al, bl
   mov bl, 1
   add al, bl
   mov cx, ax
   sub ax, ax
   mov al, 6
   mov bl, 5
   mul bl
   sub cl,al


;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
   END MAIN