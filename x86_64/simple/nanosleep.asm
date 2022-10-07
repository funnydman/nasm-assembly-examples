; this code sleep for 5 seconds and 500000000 nanosec
; or 5.5 second
; after 5.5 seconds the program will end

section .data
delay dq 5, 500000000

section .text
global _start

_start:
    mov rax, 35
    mov rdi, delay
    mov rsi, 0
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
