.MODEL SMALL
 
.STACK 100H

.DATA     


A db "ENTER A DEC DIGIT: $"
B db "ILLEGAL CHARACTER - INSERT AGAIN:$"
C db "DO YOU WANT TO DO IT AGAIN? $"
ZERO db "IN HEX IT IS 0$"
ONE db "IN HEXL IT IS 1$"
TWO db "IN HEX IT IS 2$"
THREE db "IN HEX IT IS 3$"
FOUR db "IN HEX IT IS 4$"
FIVE db "IN HEX IT IS 5$"
SIX db "HEX IT IS 6$"
SEVEN db "HEX IT IS 7$"
EIGHT db "HEX IT IS 8$"
NINE db "HEX IT IS 9$"
U db "IN HEX IT IS 10$"
V db "IN HEX IT IS 11$"
W db "IN HEX IT IS 12$"                                                
X db "IN HEX IT IS 13$"
Y db "IN HEX IT IS 14$"
Z db "IN HEX IT IS 15$"  
                                                
.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 

redo:
        
lea dx,A        
mov ah,9
int 21h

illegalredo:
mov ah,1
int 21h
mov bh,al

mov ah,2
mov dl,0Dh
int 21h
mov dl,0Ah
int 21h

cmp bh,030h
je thirty
cmp bh,031h
je thirty_one
cmp bh,032h
je thirty_two
cmp bh,033h
je thirty_three
cmp bh,034h
je thirty_four
cmp bh,035h
je thirty_five
cmp bh,036h
je thirty_six
cmp bh,037h
je thirty_seven
cmp bh,038h
je thirty_eight
cmp bh,039h
je thirty_nine
cmp bh,041h
je fourty_one
cmp bh,042h
je fourty_two
cmp bh,043h
je fourty_three
cmp bh,044h
je fourty_four
cmp bh,045h
je fourty_five
cmp bh,046h
je fourty_six 

lea dx,B
mov ah,9
int 21h
jmp illegalredo

thirty:
lea dx,ZERO
mov ah,9
int 21h
jmp exit 

thirty_one:
lea dx,ONE
mov ah,9
int 21h
jmp exit  

thirty_two:
lea dx,TWO
mov ah,9
int 21h
jmp exit 

thirty_three:
lea dx,THREE
mov ah,9
int 21h
jmp exit  

thirty_four:
lea dx,FOUR
mov ah,9
int 21h
jmp exit    

thirty_five:
lea dx,FIVE
mov ah,9
int 21h
jmp exit 

thirty_six: 
lea dx,SIX
mov ah,9
int 21h
jmp exit    

thirty_seven:
lea dx,SEVEN
mov ah,9
int 21h
jmp exit   

thirty_eight:
lea dx,EIGHT
mov ah,9
int 21h
jmp exit   

thirty_nine:
lea dx,NINE
mov ah,9
int 21h
jmp exit

fourty_one: 
lea dx,U
mov ah,9
int 21h
jmp exit 

fourty_two: 
lea dx,V
mov ah,9
int 21h
jmp exit 

fourty_three: 
lea dx,W
mov ah,9
int 21h
jmp exit 

fourty_four: 
lea dx,X
mov ah,9
int 21h
jmp exit

fourty_five:
lea dx,Y
mov ah,9
int 21h
jmp exit 

fourty_six: 
lea dx,Z
mov ah,9
int 21h

exit:
mov ah,2
mov dl,0Dh
int 21h
mov dl,0Ah
int 21h 
   
lea dx,C
mov ah,9
int 21h

mov ah,1
int 21h
mov bl,al 

mov ah,2
mov dl,0Dh
int 21h
mov dl,0Ah
int 21h

cmp bl,059h
je redo
cmp bl,079h
je redo
 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
