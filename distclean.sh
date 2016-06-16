#!/bin/sh
#
# Remove Packages directory and generated files
#
. ./config.sh
exec rm -rf Packages Sources/${Module}.swift ${Mod}.xcodeproj
