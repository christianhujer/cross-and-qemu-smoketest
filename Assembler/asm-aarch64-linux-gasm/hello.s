.equ    STDOUT, 1
.equ    exit, 93
.equ    write, 64
.equ    EXIT_SUCCESS, 0

.text
    .global _start

_start:
    mov     x0, #STDOUT
    ldr     x1, =msg
    mov     x2, #len
    mov     x8, #write
    svc     #0

    mov     x0, #EXIT_SUCCESS
    mov     x8, #exit
    svc     #0

.data
msg:
    .ascii  "Hello, world!\n"
    len = . - msg
