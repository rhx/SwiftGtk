#!/bin/bash

## Swift package with fetched dependencies is required to run scipt in gir2swift package. Use option -noUpdate to prevent update. 
if ! [[ $@ == *'-noUpdate'* ]]
then
    swift package update  
fi

case $1 in
## Returns flags needed for macOS compilation (experimental)
flags) .build/checkouts/gir2swift/gir2swift-generation-driver.sh c-flags $PWD ;;
## Removes all generaed files
clean) .build/checkouts/gir2swift/gir2swift-generation-driver.sh remove-generated $PWD ;;
## Defaults to generation
*) .build/checkouts/gir2swift/gir2swift-generation-driver.sh generate $PWD ;;
esac
