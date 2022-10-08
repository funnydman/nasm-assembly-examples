; just prints 'W' blue colored
; nasm put_char.asm -o main.img
; qemu-system-x86_64 -hda main.img
; or boot from usb
; sudo dd if=main.img of=/dev/sda1 status=progress
; qemu-system-x86_64 -machine accel=kvm:tcg -m 512 -hda /dev/sda1

cpu 8086
org 0x7C00

mov al, 13h
mov ah, 0
int 10h
mov ax, 0x0E53 ; 0x53 for character, 0xOE for teletype writing
mov ah, 0x0E
mov al, [string]
mov bx, 0x0009 ; set page (no page) and color light blue (0x09) https://en.wikipedia.org/wiki/BIOS_color_attributes
int 0x10
hlt
string db 'Wake up Neo...', 0

TIMES 510 - ($ - $$) db 0 ; Fill the rest of sector with 0
dw 0xaa55 ; (Master Boot Record) MBR magic numbers
