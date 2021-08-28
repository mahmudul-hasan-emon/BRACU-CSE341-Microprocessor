.MODEL SMALL
        .DATA

         A DB  0DH,0AH,'$'
         B DB  0DH,0AH,'$'
         C DB  255 DUP(?)
                
.CODE

INITIATE:
          MOV AX,@DATA
          MOV DS,AX

          LEA DX,A
          MOV AH,09H
          INT 21H

          LEA SI,C
          MOV AH,01H

TAKE:
          INT 21H
          MOV BL,AL

          CMP AL,0DH
          JE  PRINT
                    
          OR AL,20H
          ADD AL,20H 
          SUB AL,40H
          MOV [SI],AL
          INC SI

          JMP TAKE

PRINT:

          MOV AL,'$'
          MOV [SI],AL

          LEA DX,B
          MOV AH,09H
          INT 21H

          LEA DX,C
          MOV AH,09H
          INT 21H
          
          .EXIT

END INITIATE
