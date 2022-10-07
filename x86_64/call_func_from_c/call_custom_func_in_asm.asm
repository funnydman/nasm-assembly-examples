; content of foo module(foo.c)
; int foo(int, int);
;
; int foo(int a, int b) {
;    return a + b;
; }
; compile file with gcc -o foo.o foo.c

section .text
extern foo
global main
main:
    ; pass args to function through the registers according to abi(used amd64)
    mov rdi, 10 ; first argument
    mov rsi, 20 ; second argument
    call foo ; call the function. Return value stored in rax
    ret
