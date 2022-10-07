## Most useful commands (especially for me:)

1) Create position independent code( -fPIC)
```bash
gcc -c -fPIC file.c
```
2) Use compile line macros (-Dmacro)
```bash
gcc -DMACRO file.c
```
3) Convert warnings to errors (-Werror)
```bash
gcc -Werror file.c
```
4) Gcc options through a file using @option
usefull if you use many options. Example file:
```
-Werroe -Wall
```

```bash
gcc file.c @file_contains_options
```
5) Strip the content
```bash
gcc -s file.c -o file
```
6) Add debugging information
```bash
gcc -g file.c -o file
```
7) Generate Makefile
```bash
gcc -MM file.c
```

8) Specify architecture
```bash
gcc -m32 file.c
```
9) Without rbp register
```bash
gcc -fomit-frame-pointer file.c
```

10) Get pretty assembly output
```bash
gcc file.c -S -masm=intel -fverbose-asm -o file.S
```
### Get compiling stages
11) Get pre-processed output
from file.c -> file.i
```bash
gcc -E file.c
```
12) Compilation
from file.i -> file.s
```bash
gcc -S file.i -o file.S
```
13) Assembly
```bash 
gcc -c file.S -o file.o
```
14) Linking
```bash
gcc file.o -o file
```
15) Get all intermediate files using (-save-temps)
```bash
gcc -save-temps file.c
```
16) Linking with shared libraries (-l)
```bash
gcc file.c -o file -lCPPFILE
```
17) Produce only compiled code
```bash
gcc -c file.c
```
18) This enables all the warnings about constructions that some users consider questionable.
Compile every program with this flag.
```bash
gcc -Wall file.c
```

Include source code in asm output:
```bash
gcc test.c -o test -Wa,-adhln=test.s -g -fverbose-asm -masm=intel
```

### Special commands
19) Disable stack protection. Usefull when you learn buffer overflow.
```bash
gcc -fno-stack-protection
```
20) Use fpu registers. Usefull when you learn x87 FPU Coproccesor commands
```bash
gcc -mno-sse
```

Print (on standard error output) the commands executed to run the stages of compilation.  Also print the
version number of the compiler driver program and of the preprocessor and the compiler proper.
Can get information about where include files was searched.
    
```bash
gcc -v file.c
```

21) Don't produce a position independent executable. There is problem when compiling some programs.

```bash
gcc -no-pie file.c
```

> Debian switched to PIC/PIE binaries in 64-bits mode & GCC in your case is trying to link your object as PIC

For more details see https://stackoverflow.com/questions/48071280/nasm-symbol-printf-causes-overflow-in-r-x86-64-pc32-relocation

22)  Do not search the standard system directories for header files. Only the directories explicitly specified with flags.

```bash
gcc -nostdinc
```

23) Create simple static library
http://www.yolinux.com/TUTORIALS/LibraryArchives-StaticAndDynamic.html
```bash
gcc -c hello.c -o hello.o
ar -cvq libhello.a hello.o
gcc -o res main.c libhello.a
```

24) Print the full absolute name of the library
```bash
gcc -print-file-name=libc.so

output: /usr/lib/gcc/x86_64-linux-gnu/7/../../../x86_64-linux-gnu/libc.so
```

### Compiler Level
https://gcc.gnu.org/onlinedocs/gcc/Developer-Options.html
1) dump AST info
```bash
gcc -fdump-tree-all hello.c
```
