; just prints 'Wake up Neo...' blue colored
; nasm print_string.asm -o main.img
; qemu-system-x86_64 -hda main.img
; or boot from usb
; sudo dd if=main.img of=/dev/sda1 status=progress
; qemu-system-x86_64 -machine accel=kvm:tcg -m 512 -hda /dev/sda1

cpu 8086
org 0x7C00

mov al, 0x13
mov ah, 0
int 0x10

mov bx, 0                       ; counter
mov ah, 0x0E                    ; for teletype writing http://www.ctyme.com/intr/rb-0106.htm
.print_char:
    mov al, [string + bx]       ; character of string
    push bx                     ; storing counter in the stack
    mov bx, 0x0009              ; set page (no page) and color light blue (0x09) https://en.wikipedia.org/wiki/BIOS_color_attributes
    int 0x10
    cmp al, 0                   ; is this the end of the string?
    je .exit
    pop bx                      ; restoring from the stack
    inc bx
    jmp .print_char

.exit:
    ret
hlt
string db 'Wake up Neo...', 0

TIMES 510 - ($ - $$) db 0 ; Fill the rest of sector with 0
dw 0xaa55 ;  MBR (Master Boot Record) magic numbers
