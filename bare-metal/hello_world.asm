;----------------------------------------------;
;
; A minimal bootloader that prints a hello world
; then halts.
;
; nasm -f bin hello-boot.asm -o hello-boot.bin
;
; @YouriAckx
;
;----------------------------------------------;

                bits       16                   ; 16 bits real mode

; Print a welcome message.
; We have no DOS nor Linux kernel here.
; Therefore, we will use bios int 0x10.
section .text
global start
start:
                cli                             ; disable interrupts

                mov     si, msg                 ; SI points to message
                mov     ah, 0x0e                ; print char service
.loop           lodsb                           ; AL <- [DS:SI] && SI++
                or      al, al                  ; end of string?
                jz      halt
                int     0x10                    ; print char
                jmp     .loop                   ; next char

halt:           hlt                             ; halt


msg:            db        "Hello, World!", 0


;----------------------------------------------;
; Bootloader signature must be located
; at bytes #511 and #512.
; Fill with 0 in between.
; $  = address of the current line
; $$ = address of the 1st instruction
;----------------------------------------------;

                times 510 - ($-$$) db 0
                dw        0xaa55
