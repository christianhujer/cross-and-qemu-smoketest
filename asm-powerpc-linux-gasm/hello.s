.equ    STDOUT, 1
.equ    exit, 1
.equ    write, 4
.equ    EXIT_SUCCESS, 0

.text
    .global _start

_start:
    li      3, STDOUT
    lis     4, msg@ha
    addi    4, 4, msg@l
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
