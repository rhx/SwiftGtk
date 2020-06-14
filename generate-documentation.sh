#!/bin/sh
#
# Wrapper around `swift build' that uses pkg-config in config.sh
# to determine compiler and linker flags
#
. ./config.sh
[ -e Sources/${Mod}/${Module}.swift ] || ./generate-wrapper.sh
if [ -z "$@" ]; then
    JAZZY_ARGS="--theme fullwidth --author Ren&eacute;&nbsp;Hexel --author_url https://www.ict.griffith.edu.au/~rhexel/ --github_url https://github.com/rhx/Swift$Mod --github-file-prefix https://github.com/rhx/Swift$Mod/tree/generated --root-url http://rhx.github.io/Swift$Mod/ --output docs"
fi
[ -e "$BUILD_DIR/build.db" ] || ./build.sh
rm -rf .docs.old
mv docs .docs.old 2>/dev/null
[ -e .build ] || ln -s "$BUILD_DIR" .build
sourcekitten doc --spm-module $Mod -- --build-path "$BUILD_DIR"		\
	$CCFLAGS $LINKFLAGS > "$BUILD_DIR/$Mod-doc.json"
jazzy --sourcekitten-sourcefile "$BUILD_DIR/$Mod-doc.json" --clean	\
      --module-version $JAZZY_VER --module $Mod $JAZZY_ARGS "$@"
rm -f .build 2>/dev/null
