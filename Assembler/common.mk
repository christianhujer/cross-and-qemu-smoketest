arch:=$(notdir $(abspath .))
LDFLAGS:=-nostartfiles -nostdlib -ffreestanding

include $(dir $(lastword $(MAKEFILE_LIST)))/../common.mk
