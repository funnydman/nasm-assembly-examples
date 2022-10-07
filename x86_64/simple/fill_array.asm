section .bss
arr resb 256

section .text
global main
main:
    mov rbp, rsp; for correct debugging
    mov ecx, 256
    mov edi, arr
    mov al, '@'
again:
    mov [edi], al
    inc edi
    dec ecx
    jnz again
