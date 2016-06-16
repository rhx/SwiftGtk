#!/bin/sh
#
# Wrapper around the Swift package manager that includes config.sh
# to pass compiler and linker flags.
#
. ./config.sh
exec swift package $CCFLAGS $LINKFLAGS "$@"
