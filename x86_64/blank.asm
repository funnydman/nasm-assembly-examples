```
; Just run and exit
; nasm -felf32 asm_x86.asm && ld -m elf_i386 asm_x86.o && ./a.out
global _start

section     .text
_start:
    mov eax, 1  ; code for sys_exit
    mov ebx, 42 ; return value
    int 80h
```
