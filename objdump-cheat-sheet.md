#### Display summury information from the section headers of the object file
```
objdump -h main.o
```
Example output:
```
main.o:     file format elf64-x86-64

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         00000010  0000000000000000  0000000000000000  00000040  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .data         00000000  0000000000000000  0000000000000000  00000050  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000000  0000000000000000  0000000000000000  00000050  2**0
                  ALLOC
  3 .comment      00000013  0000000000000000  0000000000000000  00000050  2**0
                  CONTENTS, READONLY
  4 .note.GNU-stack 00000000  0000000000000000  0000000000000000  00000063  2**0
                  CONTENTS, READONLY
  5 .note.gnu.property 00000030  0000000000000000  0000000000000000  00000068  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .eh_frame     00000038  0000000000000000  0000000000000000  00000098  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
```
#### Disssembly by a symbol
```
objdump --disassemble=main main.o
```
