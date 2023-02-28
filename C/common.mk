arch:=$(notdir $(abspath .))

vpath %.c ../src/

include $(dir $(lastword $(MAKEFILE_LIST)))/../common.mk
