.equ    STDOUT, 1
.equ    exit, 60
.equ    write, 1
.equ    EXIT_SUCCESS, 0

.text
    .global _start

_start:
    endbr64
    mov     $STDOUT, %rdi
    leaq    msg(%rip), %rsi
    mov     $len, %rdx
    mov     $write, %rax
    syscall

    mov     $EXIT_SUCCESS, %rdi
    mov     $exit, %rax
    syscall

.data
msg:
    .ascii  "Hello, world!\n"
    len = . - msg
