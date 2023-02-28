.equ    STDOUT, 1
.equ    exit, 1
.equ    write, 4
.equ    EXIT_SUCCESS, 0

.text
    .global _start

_start:
    endbr32
    mov     $STDOUT, %ebx
    mov     $msg, %ecx
    mov     $len, %edx
    mov     $write, %eax
    int     $0x80

    mov     $EXIT_SUCCESS, %ebx
    mov     $exit, %eax
    int     $0x80

.data
msg:
    .ascii  "Hello, world!\n"
    len = . - msg
