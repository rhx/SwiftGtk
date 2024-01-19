#!/bin/sh
#
# Generate documentation using DocC
#
. ./config.sh
if [ $# -eq 0 ]; then
    GENDOC_ARGS="--output-path docs"
else
    GENDOC_ARGS="$@"
fi
rm -rf .docs.old
mv docs .docs.old 2>/dev/null
mkdir -p "$BUILD_DIR"
[ -e .build ] || ln -s "$BUILD_DIR" .build
if [ ! -d "$BUILD_DIR/swiftpm-generate-documentation" ]; then
    ( cd "$BUILD_DIR" &&
    git clone https://github.com/rhx/swiftpm-generate-documentation.git )
fi
swift "$BUILD_DIR/swiftpm-generate-documentation/src/main.swift" $GENDOC_ARGS
rm -f .build 2>/dev/null
