#!/bin/bash

swift package update

case $1 in
flags) .build/checkouts/gir2swift/gir2swift-generation-driver.sh c-flags $PWD ;;
clean) .build/checkouts/gir2swift/gir2swift-generation-driver.sh remove-generated $PWD ;;
*) .build/checkouts/gir2swift/gir2swift-generation-driver.sh generate $PWD ;;
esac
