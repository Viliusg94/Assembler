#fasm#

org  100h
   
    jmp start
    ; kintamieji  bus
    
    
    
    
    start:  
    
    ;mov ah,08
    ;int 21h
    ;# sudauginti sudeties budu         #
    ;# isirasyti vertes i bx ir cx registrus   #     
        ;#naudojant 01h interrupta, kuris nuskaito is stdin su atvaizdavimu
    ;mov ah,0Ah
   ; int 21h
  
    ;# sukti daugybos cikla bx dauginti is cx   #
   ; # irasyti i dx 
           
           
           
           
   MOV AX, @DATA
MOV DS, AX
MOV AH, 0Ah          ; Function 0Ah Buffered input
MOV DX, OFFSET BUFF  ; ds:dx points to string buffer
INT 21h

MOV AH, 9            ; Print to output device
MOV DX, OFFSET ASCII ; ds:dx points to string
INT 21h        
           
           
           

    mov ah,0
    int 16h
    
    
    
    mov ah, 4Ch
    mov al, 0
    int 21h
ret



