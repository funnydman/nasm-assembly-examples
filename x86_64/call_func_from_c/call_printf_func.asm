; assemble and link with:
; nasm -felf64 call_printf.asm -o call_printf.o && gcc -no-pie -m64 call_printf.o -o call_printf
; Why doesn't work without -no-pie flag
; much more examples about invoking printf function
; https://www.csee.umbc.edu/portal/help/nasm/sample_64.shtml

section .data
message db "FUNNYDMAN", 10, 0
fmt db "Hello %s", 10, 0

section .text
global main
extern printf

main:
  mov rdi, fmt
  mov rsi, message
  xor rax, rax
  call printf
  ret
