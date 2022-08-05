# cross-and-qemu-smoketest
A smoketest suite for cross compilation with gcc and clang and cross execution with qemu.

## Assembler Targets
The Assembler targets are there to provide an isolated check that does not involve any libraries.
If an Assembler target tests successfully, it means that either the CPU is supported natively, or qemu-binfmt is setup properly, including the corresponding qemu-user module.

## C Targets
The C targets use GCC for cross-compilation.
On top of qemu-binfmt, this also tests the library setup.
