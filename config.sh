#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
ver=3.0
GLIB_VER=2.0
JAZZY_VER=3.24.21
Mod=`grep name: Package.swift | head -n1 | cut -d'"' -f2`
Module=${Mod}-$ver
mod=`echo "${Mod}" | tr '[:upper:]' '[:lower:]'`+
module="${mod}-${ver}"
if [ -z "$BUILD_DIR" ]; then
  if `pwd -P | grep -q Dropbox` ; then
    export BUILD_DIR="/tmp/.build-$Module"
  else
    export BUILD_DIR=`pwd`/.build
  fi
fi
export PATH="${GIR2SWIFT_PATH}:${BUILD_DIR}/gir2swift/.build/release:${BUILD_DIR}/gir2swift/.build/debug:${PATH}:/usr/local/opt/ruby/bin:`echo /usr/local/lib/ruby/gems/*/bin | tr ' ' '\n' | tail -n1`:${PATH}:`echo /var/lib/gems/*/gems/jazzy-*/bin/ | tr ' ' '\n' | tail -n1`:/usr/local/bin"
export PKG_CONFIG_PATH=/usr/local/opt/libffi/lib/pkgconfig:${PKG_CONFIG_PATH}
LINKFLAGS=`pkg-config --libs $module gdk-$ver pangocairo pangoft2 pango gobject-$GLIB_VER gio-unix-$GLIB_VER glib-$GLIB_VER | sed -e 's/ *--export-dynamic */ /g' -e 's/ *-Wl, */ /g' -e 's/,/ -Xlinker /g' -e 's/-pthread/-lpthread/g' -e 's/  */ /g' -e 's/^ *//' -e 's/ *$//' | tr ' ' '\n' | tr '	' '\n' | sed -e 's/^/-Xlinker /' | tr '\n' ' ' | sed -e 's/-Xlinker *-Xlinker/-Xlinker/g' -e 's/-Xlinker[  ]*-Xlinker/-Xlinker/g' -e 's/-Xlinker *$//'`
CCFLAGS=`pkg-config --cflags $module gdk-$ver pangocairo pangoft2 pango gobject-$GLIB_VER gio-unix-$GLIB_VER glib-$GLIB_VER | sed -e 's/ *-Wl, */ /g' -e 's/,/ -Xlinker /g' -e 's/ *-pthread */ /g' -e 's/ *--export-dynamic */ /g' -e 's/  */ /g' -e 's/^ *//' -e 's/ *$//' | tr ' ' '\n' | tr '	' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' | sed -e 's/-Xcc *-Xcc/-Xcc/g' -e 's/-Xlinker[  ]*-Xlinker/-Xlinker/g' -e 's/-Xcc *$//'`
TAC="tail -r"
if which tac >/dev/null ; then
   TAC=tac
   else if which gtac >/dev/null ; then
	TAC=gtac
   fi
fi
JAZZY_B=`echo $CCFLAGS $LINKFLAGS | sed 's/  */,/g'`
