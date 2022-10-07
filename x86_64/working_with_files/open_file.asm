; https://www.youtube.com/watch?v=vXsUIX_Ozgc&list=PLetF-YjXm-sCH6FrTz4AQhfH6INDQvQSn&index=11
; nasm -g -felf64 test.asm -o test.o
; ld test.o -o test

SYS_OPEN    equ 2
O_CREAT equ 64
O_WRONLY equ 1

section .data
filename db "/path/to/your/file", 0

section .text
global _start
_start:
    mov rax, SYS_OPEN
    mov rdi, filename
    mov rsi, O_CREAT+O_WRONLY
    mov rdx, 0644q
    syscall
    mov rax, 60
    mov rdi, 0
    syscall
