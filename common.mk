SHELL:=bash

ifneq "$(arch)" ""
AS:=$(arch)-as
CC:=$(arch)-gcc-12
LD:=$(arch)-ld

export QEMU_LD_PREFIX:=/usr/$(arch)/
endif

RUN:=./hello

.PHONY: all
all: test

.PHONY: test
test: hello
	diff --strip-trailing-cr ../../expected.txt <($(RUN))

.PHONY: run
run: hello
	$(RUN)

.PHONY: strace
strace: hello
	strace -cf $(RUN)

hello: hello.o

.PHONY: clean
clean::
	$(RM) hello.o hello
