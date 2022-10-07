SYS_OPEN    equ 2
SYS_WRITE equ 1
SYS_CLOSE equ 3
O_CREAT equ 64
O_WRONLY equ 1

section .data
filename db "/path/to/file/", 0
text db "Im in file", 0
section .text
global _start
_start:
    mov rax, SYS_OPEN
    mov rdi, filename
    mov rsi, O_CREAT+O_WRONLY
    mov rdx, 0644q
    syscall
    mov rdi, rax
    mov rax, SYS_WRITE
    mov rsi, text
    mov rdx, 30
    syscall
    mov rax, SYS_CLOSE
    pop rdi
    syscall
    mov rax, 60
    mov rdi, 0
    syscall
