.equ    STDOUT, 1
.equ    exit, 1
.equ    write, 4
.equ    EXIT_SUCCESS, 0

.text
    .global _start

_start:
    mov     r0, #STDOUT
    ldr     r1, =msg
    mov     r2, $len
    mov     r7, #write
    swi     #0

    mov     r0, #EXIT_SUCCESS
    mov     r7, #exit
    swi     #0

.data
msg:
    .ascii  "Hello, world!\n"
    len = . - msg
