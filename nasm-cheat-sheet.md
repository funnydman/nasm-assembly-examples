### nasm-cheat-sheet

1) Create object file
```bash
# Note! You need to specify the format for a output file. Default is bin.

nasm -w+all -f elf file.asm -o file.o
```
2) See list numbers of interrupts
```bash
cat /usr/include/asm/unistd_64.h
```
3) objdump useful command:
```bash
objdump -drwC -Mintel
```
