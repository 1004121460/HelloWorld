data segment  
    output db 'Hello world! $'  
data ends  
code segment  
      
start:   
    assume ds:data,cs:code  
    mov ax,data  
    mov ds,ax  
      
    mov dx,offset output  
    mov ah,09h  
    int 21h  
      
    mov ah,4ch  
    int 21h  
  
code ends  
    end start 