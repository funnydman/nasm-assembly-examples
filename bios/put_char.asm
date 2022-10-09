; just prints 'W' blue colored
; nasm put_char.asm -o main.img
; qemu-system-x86_64 -hda main.img
; or boot from usb
; sudo dd if=main.img of=/dev/sda1 status=progress
; qemu-system-x86_64 -machine accel=kvm:tcg -m 512 -hda /dev/sda1

cpu 8086

; 0xOE for teletype writing http://www.ctyme.com/intr/rb-0106.htm
; 0x13 is a character 'W'
mov ax, 0x0E57
int 0x10
hlt

TIMES 510 - ($ - $$) db 0 ; Fill the rest of sector with 0
dw 0xaa55 ;  MBR (Master Boot Record) magic numbers
