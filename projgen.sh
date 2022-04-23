#!/bin/sh
#
# Simple script to generate a Swift Package Manager project for a SwiftGtk app
#
fulldir=$PWD
projdir=`basename "$fulldir"`
if [ -n "`ls -A`" ]; then
	echo "You need to run this script in an empty project directory, e.g.:"
	echo ""
	echo "mkdir $projdir"
	echo "cd $projdir"
	echo "curl https://raw.githubusercontent.com/rhx/SwiftGtk/gtk3/projgen.sh | sh"
	echo ""
	echo "Then you can generate the Swift wrappers and build your project:"
	echo ""
	echo "swift build"
	echo ""
	echo "*** Directory '$projdir' not empty - giving up. ***"
	exit 1
fi
swiftver=`swift --version | head -n1 | sed 's/.*version *\([1-9][0-9]*.[0-9][0-9]*\).*/\1/'`
swiftmajor=`echo $swiftver | cut -d. -f1`
swiftminor=`echo $swiftver | cut -d. -f2`
if [ "$swiftmajor" -lt 5 -o "$swiftmajor" -eq 5 -a "$swiftminor" -lt 6 ]; then
	echo "This script requires at least Swift 5.6"
	echo ""
	echo "*** Unsuitable Swift version $swiftver - giving up."
	exit 1
fi
curl=`which curl 2>/dev/null`
wget=`which wget 2>/dev/null`
if [ -z "$curl" -a -z "$wget" ]; then
	echo "*** Need curl or wget for downloading templates"
	exit 1
fi
if ! git init ; then
	echo "*** Could not initialise git repository in $PWD"
	exit 1
fi
if ! swift package init --type executable ; then
	echo "*** Could not create Swift Package in $PWD"
	exit 1
fi
if ! git add . ; then
	echo "*** Could not git add Swift Package in $PWD"
	exit 1
fi
if ! git commit -m "Import initial SPM package for $projdir" ; then
	echo "*** Could not commit Swift Package in $PWD"
	exit 1
fi
echo "/Package.resolved" >> .gitignore
if ! git commit -am "Add Package.resolved" ; then
	echo "*** Could not add Package.resolved to .gitignore in $PWD"
	exit 1
fi
if ! ( sed \
   -e 's|// Dependencies.*|.package(url: "https://github.com/rhx/gir2swift.git", branch: "main"),|' \
   -e 's|// .package.url:.*|.package(url: "https://github.com/rhx/SwiftGtk.git", branch :"gtk3"),|' \
   -e 's|dependencies: ...,|dependencies: [.product(name: "Gtk", package: "SwiftGtk")]),|' \
   < Package.swift > Package.swift.out && \
   mv Package.swift.out Package.swift ) ; then
	echo "*** Could not add SwiftGtk to Package.swift"
	exit 1
fi
if ! git commit -am "Add SwiftGtk dependency" ; then
	echo "*** Could not commit SwiftGtk dependency in $PWD"
	exit 1
fi
echo ""
echo "-------------------------------------------"
echo "--> Done creating the $projdir project. <--"
echo "-------------------------------------------"
echo ""
echo "Modify main.swift in Sources/$projdir to import and use SwiftGtk,"
echo "then you can build the wrapper and your project, e.g.:"
echo ""
echo "swift build"
echo "swift run"
echo "swift test"
