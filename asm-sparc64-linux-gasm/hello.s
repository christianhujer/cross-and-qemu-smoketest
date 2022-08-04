.equ    STDOUT, 1
.equ    exit, 1
.equ    write, 4
.equ    EXIT_SUCCESS, 0

.text
    .global _start

_start:
    mov     STDOUT, %o0
    sethi   %hi(msg), %o1
    or      %o1, %lo(msg), %o1
    mov     len, %o2
    mov     write, %g1
    t       0x6d

    mov     EXIT_SUCCESS, %o0
    mov     exit, %g1
    t       0x6d

.data
msg:
    .ascii  "Hello, world!\n"
    len = . - msg
