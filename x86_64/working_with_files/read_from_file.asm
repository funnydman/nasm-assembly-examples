SYS_OPEN equ 2
SYS_READ equ 0
SYS_CLOSE equ 3
O_RDONLY equ 0

section .data
filename db "/home/path/lang/shit", 0

section .bss
text resb 20

section .text
global _start
_start:
    mov rax, SYS_OPEN
    mov rdi, filename
    mov rsi, O_RDONLY
    mov rdx, 0644q
    syscall
    push rax
    mov rdi, rax
    mov rax, SYS_READ
    mov rsi, text
    mov rdx, 17
    syscall
    mov rax, SYS_CLOSE
    pop rdi
    syscall
    mov rax, 60
    mov rdi, 0
    syscall

