#!/bin/sh
#
# Recursive swift code wrapper generator for gobject-introspection (.gir) files.
# This calls the non-recursive gir-to-swift.sh to do the heavy lifting.
#
. ./config.sh
./package.sh fetch
for gen in Packages/*/gir-to-swift.sh ; do
	( cd `dirname $gen` && ./`basename $gen` )
done
. ./gir-to-swift.sh "$@"
