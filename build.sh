#!/bin/sh
#
ver=3.0
Mod=Gtk
Module=${Mod}-$ver
mod=`echo "${Mod}" | tr '[:upper:]' '[:lower:]'`+
module="${mod}-${ver}"
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"
GOBJECT_LIBDIR=`pkg-config --libs-only-L gobject-introspection-1.0 2>/dev/null | tr ' ' '\n' | grep gobject-introspection | tail -n1 | cut -c3-`
GOBJECT_DIR=`dirname "${GOBJECT_LIBDIR}"`
for prefix in $PREFIX GOBJECT_DIR /usr/local /usr ; do
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
LINKFLAGS=`pkg-config --libs $module gdk-$ver pangocairo pangoft2 pango gobject-2.0 gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xlinker /' | tr '\n' ' '`
CCFLAGS=`pkg-config --cflags $module gdk-$ver pangocairo pangoft2 pango gobject-2.0 gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `
gir2swift -p ${GIR_DIR}/GLib-2.0.gir -p ${GIR_DIR}/GObject-2.0.gir -p ${GIR_DIR}/Gio-2.0.gir -p ${GIR_DIR}/Pango-1.0.gir -p ${GIR_DIR}/Cairo-1.0.gir -p ${GIR_DIR}/PangoCairo-1.0.gir -p ${GIR_DIR}/GdkPixbuf-2.0.gir -p ${GIR_DIR}/Atk-1.0.gir -p ${GIR_DIR}/Gdk-3.0.gir "${GIR}" | sed -f ${Module}.sed > Sources/${Module}.swift
exec swift build $CCFLAGS $LINKFLAGS "$@"
