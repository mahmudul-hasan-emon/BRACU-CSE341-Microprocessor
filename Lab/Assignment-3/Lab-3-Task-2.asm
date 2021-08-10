.MODEL SMALL
 
.STACK 100H

.DATA
A db "1st input:$" 
B db "2nd input:$   " 
C db "3rd input:$   "
D db "The minimum value is:$"


.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here
            
 mov ah,9
 lea dx, A
 int 21h 
   
 mov ah,1
 int 21h
 mov bl,al   
  
 mov ah,2 
 mov dl,0Dh 
 int 21h 
 mov dl,0Ah 
 int 21h 
   
 mov ah,9
 lea dx, B
 int 21h  
  
 mov ah,1
 int 21h
 mov cl,al  
 
 mov ah,2 
 mov dl,0Dh 
 int 21h 
 mov dl,0Ah 
 int 21h 
 
 mov ah,9
 lea dx, C
 int 21h    
   
 mov ah,1
 int 21h 
 mov bh,al 
 
 mov ah,2 
 mov dl,0Dh 
 int 21h 
 mov dl,0Ah 
 int 21h 
 
 cmp bl,cl

 jg secondattempt
 
 cmp bh,cl
 
 jg firstattempt
 

 mov ah,9
 lea dx,D
 int 21h  

 mov ah,2
 lea dl,bh 
 int 21h 
 
 jmp EXIT
 
 firstattempt:

 
 mov ah,9
 lea dx, D
 int 21h   

 mov ah,2
 lea dl,bl 
 int 21h 
 
 jmp EXIT       
 
 secondattempt:
 cmp bh,bl
 
 jg thirdattempt 
 
 cmp cl,bh
 
 jg fourthattempt

 mov ah,9
 lea dx, D
 int 21h     

 mov ah,2
 lea dl,cl 
 int 21h
 jmp EXIT 
 
 thirdattempt:

 
 mov ah,9
 lea dx, D
 int 21h     

 mov ah,2
 lea dl,cl 
 int 21h 
 
 jmp EXIT
 
 fourthattempt:

 
 mov ah,9
 lea dx, D
 int 21h      
 
 mov ah,2
 lea dl,bh 
 int 21h
 
 EXIT:      
             
;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN