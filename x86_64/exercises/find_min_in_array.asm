section .data
array dd 10,-5,3,4,9,0, 1,-8,10
arrayLen equ $-array

section .text
global main
main:
    mov ebp, esp; for correct debugging
    mov eax, dword [array] ; consider first element as min element
    mov esi, array ; address of first element
    mov ecx, 0 ; counter
goon:
    lea edx, [esi + ecx] 
    mov edi, dword [edx]
    cmp edi, eax
    jl update_min
checkNextElem:
    add ecx, 4
    cmp ecx, arrayLen
    je done
    jmp goon

update_min:
    mov eax, edi
    jmp checkNextElem    
    
done:
    ; do some staff
   
