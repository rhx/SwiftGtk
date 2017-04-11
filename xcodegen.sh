#!/bin/sh
#
# Script to generate an Xcode project using the Swift package manager.
# The generated project gets patched to configure the header search paths
# and pass them to subprojects, based on the configured -I flags.
#
. ./config.sh
[ -e Sources/${Module}.swift ] || ./generate-wrapper.sh
./package.sh generate-xcodeproj "$@"
[ ! -e ${Mod}.xcodeproj/Configs ] ||					   \
( cd ${Mod}.xcodeproj/Configs						&& \
  mv Project.xcconfig Project.xcconfig.in				&& \
  echo 'SWIFT_VERSION = 3.0' >> Project.xcconfig.in			&& \
  sed -e 's/ -I ?[^ ]*//g' < Project.xcconfig.in > Project.xcconfig	&& \
  grep 'OTHER_CFLAGS' < Project.xcconfig.in | sed 's/-I */-I/g'		|  \
    tr ' ' '\n' | grep -- -I | tr '\n' ' '				|  \
    sed -e 's/^/HEADER_SEARCH_PATHS = /' -e 's/ -I/ /g' >> Project.xcconfig
)
( cd ${Mod}.xcodeproj							&& \
  mv project.pbxproj project.pbxproj.in					&& \
  sed < project.pbxproj.in > project.pbxproj				   \
    -e "s|\(HEADER_SEARCH_PATHS = .\)$|\\1 \"`echo $CCFLAGS | sed -e 's/-Xcc  *-I */ /g' -e 's/^ *//' -e 's/ *$//'`\",|"
)
