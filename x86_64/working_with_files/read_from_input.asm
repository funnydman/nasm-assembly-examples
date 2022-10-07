section .data
msg db "Hello "

section .bss
name resb 10

section .text
global main
getName:
    mov rax, 0
    mov rdi, 0
    mov rsi, name
    mov rdx, 20
    syscall
    ret
printName:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 6
    syscall
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 20
    syscall
    ret
main:
    call getName
    call printName
    mov rax, 60
    mov rdi, 0
    syscall
