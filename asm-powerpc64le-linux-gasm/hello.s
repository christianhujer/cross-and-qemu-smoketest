.equ    STDOUT, 1
.equ    exit, 1
.equ    write, 4
.equ    EXIT_SUCCESS, 0

.text
    .global _start
        .section        ".opd","aw"
        .align 3
_start:
        .quad   ._start,.TOC.@tocbase,0
        .previous

        .global  ._start
._start:

    li      3, STDOUT
    lis     4, msg@highest
    ori     4, 4, msg@higher
    rldicr  4, 4, 32, 31
    oris    4, 4, msg@h
    ori     4, 4, msg@l
    li      5, len
    li      0, write
    sc

    li      3, EXIT_SUCCESS
    li      0, exit
    sc

.data
msg:
    .ascii  "Hello, world!\n"
    len = . - msg
