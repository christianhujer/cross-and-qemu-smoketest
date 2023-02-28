broken-targets:=\
    c-m68k-linux-gcc/ \
    c-sparc64-linux-gcc/ \

ALL:=$(filter-out $(broken-targets),$(wildcard */))

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
