section .data
path db "/home/funnydman/testfolder/", 0

section .text
global main
main:
    mov rax, 84
    mov rdi, path
    syscall
