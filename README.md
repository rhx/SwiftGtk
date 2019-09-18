# SwiftGtk
A Swift wrapper around gtk-3.x that is largely auto-generated from gobject-introspection.
This project tries to make gtk more "swifty" than using the plain C language interface.


## Usage

Normally, you don't build this package directly (but for testing you can - see 'Building' below), but you embed it into your own project.  To use SwiftGtk, you need to use the [Swift Package Manager](https://swift.org/package-manager/).  After installing the prerequisites (see 'Prerequisites' below), add `SwiftGtk` as a dependency to your `Package.swift` file, e.g.:

```Swift
// swift-tools-version:4.2

import PackageDescription

let package = Package(name: "MyPackage",
    dependencies: [
        .package(url: "https://github.com/rhx/SwiftGtk.git", .branch("master")),
    ],
    targets: [.target(name: "MyPackage", dependencies: ["Gtk"])]
)
```

At this stage, the Swift Package manager does not (yet) know how to run external programs such as `gir2swift`.  Therefore the easiest way to compile your project with SwiftGtk is to use build scripts that do this for you and pass the necessary flags to the Swift Package manager (see the following section).

### Examples

You can find some example projects on GitHub that show how to use SwiftGtk:

 * [SwiftHelloGtk](https://github.com/rhx/SwiftHelloGtk)
 * [SwiftHelloGtkRadioButtons](https://github.com/rhx/SwiftHelloGtkRadioButtons)
 * [SwiftGtkListViewDemo](https://github.com/rhx/SwiftGtkListViewDemo)
 * [SwiftGtkListBoxDNDDemo](https://github.com/rhx/SwiftGtkListBoxDNDDemo)
 * [SwiftHelloGtkBuilder](https://github.com/rhx/SwiftHelloGtkBuilder)
 * [SwiftHelloCairoGtk](https://github.com/rhx/SwiftHelloCairoGtk)
 * [SwiftGtkCairoAnimationDemo](https://github.com/rhx/SwiftGtkCairoAnimationDemo)


### Build Scripts

The demo applications come with build scripts that configure some environment variables and pass required arguments when calling `swift build`, `swift package`, etc.  The easiest way to get started is to clone one of the following projects, then copy all the `*.sh` shell scripts into your own project.  Also, if you want to be able to build a desktop app, create a `Resources` folder, and copy (at least) the `Info.plist` file as well:

 * [SwiftHelloGtk](https://github.com/rhx/SwiftHelloGtk): this is a quick starting point for a simple gtk app that does not need any resources.
 * [SwiftHelloGtkBuilder](https://github.com/rhx/SwiftHelloGtkBuilder): this is a good starting point for a more complex app that has user interface files (`*.ui`) for GtkBuilder in its `Resources` folder.
 
To build your project, you then simply run
```
./build.sh
```
from within your project folder.  On macOS, you can also build the project using Xcode instead.  To do this, you need to create an Xcode project first, then open the project in the Xcode IDE:

	./xcodegen.sh
	open MyPackage.xcodeproj

After that, use the (usual) Build and Test buttons to build/test this package.  Please note that, at this stage, the Swift Package manager is not able to create App targets for Xcode (so to build a macOs app rather than just a command line executable, you still need to use the `build.sh` script that calls `app-wrapper.sh` to create the standalone app bundle).


## Prerequisites

### Swift

To build, you need at least Swift 4.2 (Swift 5.x should work fine), download from https://swift.org/download/ -- if you are using macOS, make sure you have the command line tools installed as well).  Test that your compiler works using `swift --version`, which should give you something like

	$ swift --version
	Apple Swift version 5.0.1 (swiftlang-1001.0.82.4 clang-1001.0.46.5)
	Target: x86_64-apple-darwin18.6.0

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 5.0.3 (swift-5.0.3-RELEASE)
	Target: x86_64-unknown-linux-gnu

### Gtk 3.18 or higher

The Swift wrappers have been tested with glib-2.46, 2.48, 2.52, 2.54, 2.56, 2.58, 2.60, and 2.62, and gdk/gtk 3.18, 3.20, 3.22, and 3.24.  They should work with higher versions, but YMMV.  Also make sure you have `gobject-introspection` and its `.gir` files installed.

#### Linux

##### Ubuntu

On Ubuntu 18.04 and 16.04, you can use the gtk that comes with the distribution.  Just install with the `apt` package manager:

	sudo apt update
	sudo apt install libgtk-3-dev gir1.2-gtksource-3.0 gobject-introspection libgirepository1.0-dev libxml2-dev

If you prefer a newer version of gtk, you can also install it from the GNOME 3 Staging PPA (see https://launchpad.net/~gnome3-team/+archive/ubuntu/gnome3-staging), but be aware that this can be a bit dangerous (as this removes packages that can be vital, particularly if you use a GNOME-based desktop), so only do this if you know what you are doing:

	sudo add-apt-repository ppa:gnome3-team/gnome3-staging
	sudo apt update
	sudo apt dist-upgrade
	sudo apt install libgtk-3-dev gir1.2-gtksource-3.0 gobject-introspection libgirepository1.0-dev libxml2-dev

##### Fedora

On Fedora 29, you can use the gtk that comes with the distribution.  Just install with the `dnf` package manager:

	sudo dnf install gtk3-devel pango-devel cairo-devel cairo-gobject-devel glib2-devel gobject-introspection-devel libxml2-devel

#### macOS

On macOS, you can install gtk using HomeBrew (for setup instructions, see http://brew.sh).  Once you have a running HomeBrew installation, you can use it to install a native version of gtk:

	brew update
	brew install gtk+3


## Building

As pointed out in the 'Usage' section above, you don't normally build this package directly, but instead you embed it into your own project.  However, you can build and test this module separately to ensure that everything works.  Make sure you have all the prerequisites installed (see above).  After that, you can simply clone this repository and build the command line executable (be patient, this will download all the required dependencies and take a while to compile) using

	git clone https://github.com/rhx/SwiftGtk.git
	cd SwiftGtk
	./build.sh
	./test.sh

### Xcode

On macOS, you can build the project using Xcode instead.  To do this, you need to create an Xcode project first, then open the project in the Xcode IDE:

	./xcodegen.sh
	open Gtk.xcodeproj

After that, use the (usual) Build and Test buttons to build/test this package.


## Troubleshooting
Here are some common errors you might encounter and how to fix them.

### SwiftGtk takes a very long time to build

Yes, `gtk` is a huge beast.  The Swift interface generated from the `gtk` header files is close to 300,000 lines.  This takes a long time to build!

### Old Swift toolchain or Xcode
If you get an error such as

	$ ./build.sh 
	error: unable to invoke subcommand: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-package (No such file or directory)
	
this probably means that your Swift toolchain is too old.  Make sure the latest toolchain is the one that is found when you run the Swift compiler (see above).


  If you get an older version, make sure that the right version of the swift compiler is found first in your `PATH`.  On macOS, use xcode-select to select and install the latest version, e.g.:

	sudo xcode-select -s /Applications/Xcode.app
	xcode-select --install

