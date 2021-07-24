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
    
    bash -c "${G2S_EXEC} -o Sources/${NAME} ${GIR_PRE_ARGS} ${GIR_PATH}/${GIR_NAME}.gir"

    cd $CALLER
}

case $1 in
gir-name) echo $GIR_NAME;;
generate) echo $(generate_arg-path_arg-g2s-exec_arg-gir-pre_arg-gir-path "$2" "$3" "$4" "$5");;
esac
