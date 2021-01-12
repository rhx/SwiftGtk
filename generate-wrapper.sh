#!/bin/bash
#
# Recursive swift code wrapper generator for gobject-introspection (.gir) files.
# This calls the non-recursive gir-to-swift.sh to do the heavy lifting.
#
. ./config.sh
./package.sh update
if [ ! -x "${GIR2SWIFT_PATH}/gir2swift" -a \
     ! -e "$BUILD_DIR/checkouts/gir2swift" ] ; then
	mkdir -p "$BUILD_DIR/checkouts" 2>/dev/null
	pushd "$BUILD_DIR/checkouts" >/dev/null
	git clone https://github.com/rhx/gir2swift.git
	popd >/dev/null 2>&1
fi
if [ ! -x "${GIR2SWIFT_PATH}/gir2swift" ] &&
     ! -e "$BUILD_DIR/checkouts/gir2swift/.build/release/gir2swift" >/dev/null 2>&1 ; then
	pushd "$BUILD_DIR/checkouts/gir2swift" >/dev/null
	./build.sh
fi
export PATH="$PWD/.build/release:${PATH}"
popd >/dev/null 2>&1
export PACKAGES="$BUILD_DIR/checkouts"
[ -e $PACKAGES ] || export PACKAGES=Packages
if which parallel >/dev/null ; then
  for gen in $PACKAGES/*/gir-to-swift.sh ; do \
	echo "( cd `dirname $gen` && ./`basename $gen` $@ )" \; \
	echo \"Generate Swift Wrapper for `basename $(dirname $gen) | cut -d- -f1`\" ; \
  done | $TAC | parallel
else
  for gen in $PACKAGES/*/gir-to-swift.sh ; do
	echo "Generate Swift Wrapper for `basename $(dirname $gen) | cut -d- -f1`"
	( cd `dirname $gen` && ./`basename $gen` "$@" )
  done
fi
echo "Generate Swift Wrapper for Swift${Mod}.git"
. ./gir-to-swift.sh "$@"
