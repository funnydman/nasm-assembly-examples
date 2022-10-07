/* see default ld script: ld --verbose 
   ld -T file.ld 
*/

ENTRY(_start)
w

/* Program headers, each of which specifies a segment. */
PHDRS {
    some_segment PT_LOAD ;
}
SECTIONS {
    . = 0x400000;
    .text : { * (.text);}
    . = 0x600000;
    .data : { * (.data);}
    .my_some : 
    { *(.some)

    } :some_segment
}
