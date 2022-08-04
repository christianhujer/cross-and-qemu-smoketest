.equ    STDOUT, 1
.equ    exit, 4001
.equ    write, 4004
.equ    EXIT_SUCCESS, 0

.text
    .global  __start

__start:
    lui     $a0, %hi(STDOUT)
    addiu   $a0, %lo(STDOUT)
    lui     $a1, %hi(msg)
    addiu   $a1, %lo(msg)
    lui     $a2, %hi(len)
    addiu   $a2, %lo(len)
    lui     $v0, %hi(write)
    addiu   $v0, %lo(write)
    syscall

    lui     $a0, %hi(EXIT_SUCCESS)
    addiu   $a0, %lo(EXIT_SUCCESS)
    lui     $v0, %hi(exit)
    addiu   $v0, %lo(exit)
    syscall

.data
msg:
    .ascii  "Hello, world!\n"
    len = . - msg
