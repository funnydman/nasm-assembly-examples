# Resources:
- Official documentation 
- pancake video https://www.youtube.com/watch?time_continue=1&v=tE5AKOQgIe4

## Daily Usage
1) izz  - print all strings from the binary
2) S=  - list sections (ascii-art bars) (io.va to display paddr or vaddr)
3) asl <num> - translate syscall number into text form
4) psz @ <addr> - print string at this address
5) cp file file.bak - back up the file
6) oo+ open file in write mode 
7) afl - list all functions
8) VVV - go top visual graph mode 
9) pd N - Print Disassembly
10) w - write something to somewhere
11) /m [magicfile]: Search magic number headers with libmagic
12) wt[a] file [size] Write 'size' bytes in current block to 'file'

By default radare is searching in dbg.map which is the current memory map. Therefore, we want it to search in all memory maps so we need to configure it:

e search.in = dbg.maps

search command: / SomeString
see search hist hit: fs
repeat last search command: //


## radiff useful stuff

1) Code diffing using graphdiff algorithm. 
Output columns are: file-a-address, percentage of mostsimilar function in B file | file-b-address.
```
radiff2 -A -C file1 file2
```

2) Show two column hexdump diffing(-x opt)
```
radiff2 -x file1 file2
```

3) Graph diff output of given symbol, or between two functions, at given
offsets: one for each binary.
```
radiff2 -g main -a x86 -b32 original patched
```
