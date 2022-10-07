section .data
path db "/path/to/your/folder", 0
section .text
global main
main:
    mov rax, 83
    mov rdi, path
    mov rsi, 0777
    syscall
