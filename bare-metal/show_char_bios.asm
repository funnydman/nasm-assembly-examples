;----------------------------------------------;
;
; A minimal bootloader that prints a char
; then halts.
;
; nasm -f bin hello-boot.asm -o hello-boot.bin
; 
; qemu-system-x86_64 -hda ./hello-boot.bin
;
; @YouriAckx
;
;----------------------------------------------;

                org        0x7c00               ; BIOS loads at this address

                bits       16                   ; 16 bits real mode if -f bin 
                                                ; 16 bit used by default

; Print a single character.
; We have no DOS nor Linux kernel here.
; Therefore, we will use bios int 0x10.

start:
                cli                             ; disable interrupts

                mov     ah, 0x0e                ; print char service
                mov     al, '!'
                int 0x10
                hlt                             ; halt

;----------------------------------------------;
; Bootloader signature must be located
; at bytes #511 and #512.
; Fill with 0 in between.
; $  = address of the current line
; $$ = address of the 1st instruction
;----------------------------------------------;

                times 510 - ($-$$) db 0
                dw        0xaa55
