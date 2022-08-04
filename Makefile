ALL:=$(wildcard */)

.PHONY: all
all: $(addprefix all-,$(ALL))

.PHONY: clean
clean: $(addprefix clean-,$(ALL))

.PHONY: strace
strace: $(addprefix strace-,$(ALL))

.PHONY: all-%
all-%:
	$(MAKE) -sC $*

.PHONY: clean-%
clean-%:
	$(MAKE) -sC $* clean

.PHONY: strace-%
strace-%:
	$(MAKE) -sC $* strace
