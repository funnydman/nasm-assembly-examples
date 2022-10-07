section .bss
string resb 40

section .data
name db "Message", 10, 0

section .text
global main
main:
    xor eax, eax
    xor ecx, ecx
    mov eax, name
    mov ecx, string
again:
    mov bl, [eax]
    mov [ecx], bl
    inc ecx
    inc eax
    cmp bl, 0x0
    jne again
    ret
