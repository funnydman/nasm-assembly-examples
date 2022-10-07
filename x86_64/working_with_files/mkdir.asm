section .data
path db "/home/dzmitry/testfolder/", 0
section .text
global main
main:
    mov rax, 83
    mov rdi, path
    mov rsi, 0777
    syscall
