section .data
msg db "Hello", 0

section .text
global main
extern strlen
main:
    mov rdi, msg
    call strlen
    mov rbx, 20
