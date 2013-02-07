;Pprogram that receives the age of a person as input and
;outputs whether the person is eligible for voting or not 



section .data
   
   msg1: db 'Enter your age',10,0   
   msgin: db "%d", 0               
   int1: times 4 dd 0             
   msg2:db 'Eligible for voting',10,0
   msg3:db 'Not Eligible for voting',10,0
   age: dd 18


section .text

  global main
  extern printf
  extern scanf

main:

   push ebp 
   mov ebp,esp 
   push msg1
   call printf
   add esp, 4 
   push int1 
   push msgin 
   call scanf
   mov eax,[int1]
   cmp eax,[age]
   jge l1
   push msg3
   call printf
   jmp finish


   l1:

    push msg2
    call printf
    jmp finish

   finish:

     mov esp,ebp
     pop ebp
     ret



