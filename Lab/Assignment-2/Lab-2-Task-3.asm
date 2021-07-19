;Task 03: Write a program to: (a) prompt the user, (b) read three characters, and then
(c) display them down the left margin in reverse order

.MODEL SMALL
  
.STACK 100H
  
.DATA  
        A  DB  'Enter First Character: $'
        B  DB  'Enter Second Characte: $'
        C  DB  'Enter Third Character: $'

.CODE  

    MAIN PROC 
        
 ;initialize DS
        
        MOV AX,DATA
        MOV DS,AX   
        
 ;enter code here
          
        lea dx,A
        mov ah,9
        int 21h          
        mov ah,1
        int 21h         
        MOV bl, al          
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h 
              
        lea dx,B
        mov ah,9
        int 21h              
        mov ah,1
        int 21h              
        mov cl,al        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h 
                      
        lea dx,C
        mov ah,9
        int 21h             
        mov ah,1
        int 21h               
        mov ch,al
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
                 
        mov ah,2
        mov dl,bh
        int 21h  
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h   
        
        mov ah, 2                     
        mov dl,ch
        int 21h  
                       
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah, 2                     
        mov dl,cl
        int 21h 
                             
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah, 2                     
        mov dl,bl
        int 21h  
        
;exit to DOS
                                     
        MOV AX, 4C00H
        INT 21H
 
    MAIN ENDP
    END MAIN