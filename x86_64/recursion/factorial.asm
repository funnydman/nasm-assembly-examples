section .text
global main
fact:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD [rbp-4], edi
        cmp     DWORD [rbp-4], 0
        jg      .L2
        mov     eax, 1
        jmp     .L3
.L2:
        mov     eax, DWORD [rbp-4]
        sub     eax, 1
        mov     edi, eax
        call    fact
        imul    eax, DWORD [rbp-4]
.L3:
        leave
        ret
main:
    mov edi,5 ; argument for fact func
    call fact
    ret
