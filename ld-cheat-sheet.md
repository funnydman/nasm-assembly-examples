# Linker

1) Show all supported emulations
```bash
ld -V
```
Example:
```
GNU ld (GNU Binutils) 2.39.0
  Supported emulations:
   elf_x86_64
   elf32_x86_64
   elf_i386
   elf_iamcu
   i386pep
   i386pe
   elf64bpf
```

2) Specify the emulation option
```bash
ld -m elf_i386 -o <file>.o <file>.asm
```

> Note: By default ld command always to link that into the native architecture for your machine!
