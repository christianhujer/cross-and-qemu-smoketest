.equ    STDOUT, 1
.equ    exit, 1
.equ    write, 4
.equ    EXIT_SUCCESS, 0

.text
    .global _start
_start:
    moveq   #STDOUT, %d1
    lea     (msg), %a0
    move.l  %a0, %d2
    moveq   #len, %d3
    moveq   #write, %d0
    trap    #0

    moveq   #EXIT_SUCCESS, %d1
    moveq   #exit, %d0
    trap    #0

.data
msg:
    .ascii  "Hello, world!\n"
    len = . - msg
