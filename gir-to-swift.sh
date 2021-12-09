#!/bin/bash
#
# Swift code wrapper generator for gobject-introspection (.gir) files.
# This needs an installed `gir2swift' executable (github.com/rhx/gir2swift)
#
. ./config.sh
mkdir -p Sources/${Mod}
GOBJECT_LIBDIR=`pkg-config --libs-only-L gobject-introspection-1.0 2>/dev/null | tr ' ' '\n' | grep gobject-introspection | tail -n1 | cut -c3-`
GOBJECT_DIR=`dirname "${GOBJECT_LIBDIR}"`
for prefix in $PREFIX /opt/homebrew /usr/local /usr $GOBJECT_DIR ; do
	gir_dir=${prefix}/share/gir-1.0
	gir=${gir_dir}/${Module}.gir
	if [ -e "${gir}" ] ; then
		export GIR=${gir}
		export GIR_DIR=${gir_dir}
	fi
done
if [ ! -e "${GIR}" ] ; then
	echo "*** ${GIR} does not exist!"
	echo "Make sure libgirepository1.0-dev is installed"
	echo "and can be found in /usr /usr/local or by pkg-config!"
	exit 1
fi
gir2swift -o Sources/${Mod} -p ${GIR_DIR}/GLib-2.0.gir -p ${GIR_DIR}/GObject-2.0.gir -p ${GIR_DIR}/Gio-2.0.gir -p ${GIR_DIR}/Pango-1.0.gir -p ${GIR_DIR}/cairo-1.0.gir -p ${GIR_DIR}/PangoCairo-1.0.gir -p ${GIR_DIR}/GdkPixbuf-2.0.gir -p ${GIR_DIR}/Atk-1.0.gir -p ${GIR_DIR}/Gdk-3.0.gir "${GIR}"
