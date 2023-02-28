SHELL:=bash

RUN:=./hello

.PHONY: all
all: test

.PHONY: test
test: hello
	diff ../../expected.txt <($(RUN))

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
