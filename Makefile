ALL:=$(patsubst %/Makefile,%,$(wildcard */Makefile))

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
