#!/bin/bash

GIR_NAME="Gtk-3.0"

function generate_arg-path_arg-g2s-exec_arg-gir-pre_arg-gir-path {
    local PACKAGE_PATH=$1
    local G2S_EXEC=$2
    local GIR_PRE=$3
    local GIR_PATH=$4

    local CALLER=$PWD

    cd $PACKAGE_PATH

    local NAME=$(package_name)
    local PKG_CONFIG_ARG=$(package_pkg_config_arguments)
    local GIR_PRE_ARGS=`for FILE in ${GIR_PRE}; do echo -n "-p ${GIR_PATH}/${FILE}.gir "; done`
    
    bash -c "${G2S_EXEC} -o Sources/${NAME} -m ${GIR_NAME}.module ${GIR_PRE_ARGS} ${GIR_PATH}/${GIR_NAME}.gir"

    if which parallel >/dev/null ; then
        for src in Sources/${NAME}/*-*.swift ; do \
	    echo "sed -f ${GIR_NAME}.sed < ${src} |"				\
	         "awk -f ${GIR_NAME}.awk > ${src}.out" \;			\
	         "mv ${src}.out ${src}" ;					\
        done | parallel
    else
        for src in Sources/${NAME}/*-*.swift ; do
	    echo "Postprocessing Wrapper for `basename $src`"
	    sed -f ${GIR_NAME}.sed < ${src} | awk -f ${GIR_NAME}.awk > ${src}.out
	    mv ${src}.out ${src}
        done
    fi
    if ! pkg-config --atleast-version=3.24 $PKG_CONFIG_ARG ; then
	    rm -f Sources/${NAME}/EventControllerSignal.swift
	    rm -f Sources/${NAME}/GestureSignal.swift
    fi
    touch Sources/${NAME}/${GIR_NAME}.swift

    cd $CALLER
}

case $1 in
gir-name) echo $GIR_NAME;;
generate) echo $(generate_arg-path_arg-g2s-exec_arg-gir-pre_arg-gir-path "$2" "$3" "$4" "$5");;
esac
