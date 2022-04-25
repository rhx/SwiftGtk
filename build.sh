#!/bin/sh
#
# Wrapper around `swift build' that uses pkg-config in config.sh
# to determine compiler and linker flags
#
. ./config.sh
exec swift build --build-path "$BUILD_DIR" $CCFLAGS $LINKFLAGS "$@"
