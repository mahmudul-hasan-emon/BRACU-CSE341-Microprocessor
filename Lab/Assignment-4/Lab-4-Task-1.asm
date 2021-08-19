.MODEL SMALL  

.STACK 100H  

.DATA

.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
       
        mov ah,1
        int 21h  
        sub al,30h 
        mov bh,al 
                   
        mov ah,2
        mov dl,0DH
        int 21h
       
        mov dl,0AH
        int 21h  
       
        mov ah,1
        int 21h 
        sub al,30h 
        mov ch,al
        mov ah,2
        mov dl,0DH
        int 21h
        mov dl,0AH
        int 21h 
        
    redo:        
       cmp bh,ch 
       JG End   
       mov al,1h  
       mul bh   
       
       mov bl,2
       div bl     
        
       cmp ah,0   
       JE run 
       
       inc bh    
       cmp bh,ch
       JL redo
       JMP End
       
     run:   
       mov dl,bh 
       add dl,30h
       mov ah,2
       int 21h        
       
       inc bh         
       cmp bh,ch
       JL redo
       JMP End
                      
       End:
        
        MOV AX, 4C00H
        INT 21H
        
    MAIN ENDP
    END MAIN