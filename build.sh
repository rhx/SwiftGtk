#!/bin/sh
#
# Wrapper around `swift build' that uses pkg-config in config.sh
# to determine compiler and linker flags
#
. ./config.sh
[ -e Sources/${Module}.swift ] || ./generate-wrapper.sh
exec swift build $CCFLAGS $LINKFLAGS "$@"
