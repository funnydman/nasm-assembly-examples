; make it more readable and accurate

section .data
string db "NewBoston"
stringLen equ ($-string)

section .text
global main
main:
    mov rbp, rsp; for correct debugging
    mov eax, string  ; Address of the first element
    lea ebx, [string + stringLen-1] ; Address of the last element
    mov ecx, stringLen/2 ; condition for our loop
reverse:
    movzx rdi, byte [eax] ; now contain "N" char
    movzx rsi, byte [ebx] ; now contain "n" char
    mov [eax],sil
    mov [ebx],dil 
    
    inc eax
    dec ebx
    dec ecx
    cmp ecx, 0
    jne reverse
