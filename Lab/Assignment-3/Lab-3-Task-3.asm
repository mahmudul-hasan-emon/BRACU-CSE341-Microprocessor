.model small

printmsg macro msg
         push ax
         push bx
         push cx
         push dx
         LEA dx,msg
         mov ah,09h
         int 21h
         pop dx
         pop cx
         pop bx
         pop ax
 endm
.data
               
        msg1 db 0ah,0dh," Enter First Number(AL):$"
        msg2 db 0ah,0dh,"Enter Second Number(BL):$"
        msg3 db 0ah,0dh,"Enter Third Number(CL): $"
        msg4 db 0ah,0dh,"Value in AL= $"
        msg5 db 0ah,0dh,"Value in BL= $"
        msg6 db 0ah,0dh,"Value in CL= $"
        num db 0
        cnt db 0
.code                              
        mov ax,@data        
        mov ds,ax    
        printmsg msg1       
        call readnum       
        mov al,num          
        printmsg msg2       
        call readnum        
        mov bl,num          
        printmsg msg3      
        call readnum        
        mov cl,num        
        
        cmp al,bl
        jl x1
        cmp bl,cl
        jl x2
        printmsg msg6
        mov cl,0
        mov num,cl
        call printnum
        jmp ex
        
    x1:
       printmsg msg4
       mov al,0
       mov num,al
       call printnum
       jmp ex
    x2:
       printmsg msg5
       mov bl,0
       mov num,bl
       call printnum
       jmp ex   
       
   ex:                     
        mov ah,4ch
        int 21h  

readnum proc near
                push ax
                push bx
                push cx
                push dx
                mov num,00
           r1:
               mov ah,01h
               int 21h
               cmp al,0dh
               je r2
               mov cl,al
               sub cl,30h
               mov bl,10
               mov al,num
               mul bl
               add al,cl
               mov num,al
               jmp r1
           r2:
               pop dx
               pop cx
               pop bx
               pop ax
           ret
readnum endp

printnum proc near
                push ax
                push bx
                push cx
                push dx
                mov al,num
                xor ah,ah
                mov bl,10
          p1:
                mov dx,00
                div bx
                push dx
                inc cnt
                cmp ax,00
                jne p1
          p2:
                cmp cnt,00
                je p3
                pop dx
                add dl,30h
                mov ah,02h
                int 21h
                dec cnt
                jmp p2
          p3:
                pop dx
                pop cx
                pop bx
                pop ax
               
          ret
printnum endp      

end