                                                  
                                                    
                                                                                  

section .data
      
        h_world: db 'Hello World!',10  
        h_worldlen:  equ $-h_world

section .text
      
       global main

main:

      mov eax,4                       ;write system call
      mov ebx,1                       ;to output the string 
      mov ecx,h_world                   ;put the limit of hello to ecx
      mov edx,h_worldlen                ;length of the message to be printed passed as argument
      int 80h			      ; kernel call
      mov eax,1                       ;sys_exit
      mov ebx,0                       ;no error
      int 80h

