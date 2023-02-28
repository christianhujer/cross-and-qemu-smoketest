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
	$(MAKE) -C $*

.PHONY: clean-%
clean-%:
	$(MAKE) -C $* clean

.PHONY: strace-%
strace-%:
	$(MAKE) -C $* strace
