    .data 

str: .asciz "Hello World %d\n" @ Define a null-terminated string 


    .text 
    .global main 
    /* This is the beginning of 
    the main() function. It will print "Hello World" and then return*/

main: 
    stmfd sp!,{lr} @ push return address onto stack 
    ldr r0, =str @ load pointer to format string 
    ldr r2, =my_global @ load pointer to global variable
    ldr r1, [r2] @ load value to r1  
    bl printf @ printf("Hello World\n"); 
    mov r0, #0 @ move return code into r0 
    ldmfd sp!,{lr} @ pop return address from stack 
    mov pc, lr @ return from main

