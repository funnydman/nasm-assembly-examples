; more information https://www.youtube.com/watch?v=xtFs1yBVinc&index=9&list=PLetF-YjXm-sCH6FrTz4AQhfH6INDQvQSn
section .text
global _start
_start:
    mov eax, [rsp]
    mov ebx, [rsp + 8]
    mov edx, [rsp + 16]
