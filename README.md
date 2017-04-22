# SwiftGtk
A Swift wrapper around gtk-3.x that is largely auto-generated from gobject-introspection


## Prerequisites

### Swift

To build, you need Swift 3.1 (download from https://swift.org/download/ -- if you are using macOS, make sure you have the command line tools installed as well).  Test that your compiler works using `swift --version`, which should give you something like

	$ swift --version
	Apple Swift version 3.1 (swiftlang-802.0.51 clang-802.0.41)
	Target: x86_64-apple-macosx10.9

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 3.1 (swift-3.1-RELEASE)
	Target: x86_64-unknown-linux-gnu

### Gtk 3.18 or higher

The Swift wrappers have been tested with glib-2.46, 2.48 and 2.52, and gdk/gtk 3.18, 3.20, and 3.22.  They should work with higher versions, but YMMV.  Also make sure you have `gobject-introspection` and its `.gir` files installed.

#### Linux

On Ubuntu 16.04, you can use the gtk that comes with the distribution.  Just install with the `apt` package manager:

	sudo apt update
	sudo apt install libgtk-3-dev gir1.2-gtksource-3.0 gobject-introspection libgirepository1.0-dev

If you prefer a newer version of gtk, you can also install it from the GNOME 3 Staging PPA (see https://launchpad.net/~gnome3-team/+archive/ubuntu/gnome3-staging), but be aware that this can be a bit dangerous (as this removes packages that can be vital, particularly if you use a GNOME-based desktop), so only do this if you know what you are doing:

	sudo add-apt-repository ppa:gnome3-team/gnome3-staging
	sudo apt update
	sudo apt dist-upgrade
	sudo apt install libgtk-3-dev gir1.2-gtksource-3.0 gobject-introspection libgirepository1.0-dev

#### macOS

On macOS, you can install gtk using HomeBrew (for setup instructions, see http://brew.sh).  Once you have a running HomeBrew installation, you can use it to install a native version of gtk:

	brew update
	brew install gtk+3


## Building

Normally, you don't build this package directly, but you embed it into your own project (see 'Usage' below).  However, you can build and test this module separately to ensure that everything works.  Make sure you have all the prerequisites installed (see above).  After that, you can simply clone this repository and build the command line executable (be patient, this will download all the required dependencies and take a while to compile) using

	git clone https://github.com/rhx/SwiftGtk.git
	./build.sh
	./test.sh

### Xcode

On macOS, you can build the project using Xcode instead.  To do this, you need to create an Xcode project first, then open the project in the Xcode IDE:

	./xcodegen.sh
	open Gtk.xcodeproj

After that, use the (usual) Build and Test buttons to build/test this package.


## Usage

To use SwiftGtk, you need to use the [Swift Package Manager](https://swift.org/package-manager/).  Simply add `SwiftGtk` as a dependency to your `Package.swift` file, e.g.:

```Swift
import PackageDescription

let package = Package(
    name: "MyPackage",
    dependencies: [
        .Package(url: "https://github.com/rhx/SwiftGtk.git", majorVersion: 3)
    ]
)
```

### Examples

You can find some example projects on GitHub that show how to use SwiftGtk:

 * [SwiftHelloGtk](https://github.com/rhx/SwiftHelloGtk)
 * [SwiftGtkListViewDemo](https://github.com/rhx/SwiftGtkListViewDemo)
 * [SwiftHelloGtkBuilder](https://github.com/rhx/SwiftHelloGtkBuilder)
 * [SwiftHelloCairoGtk](https://github.com/rhx/SwiftHelloCairoGtk)
 * [SwiftGtkCairoAnimationDemo](https://github.com/rhx/SwiftGtkCairoAnimationDemo)


## Troubleshooting
Here are some common errors you might encounter and how to fix them.

### SwiftGtk takes a very long time to build

Yes, `gtk` is a huge beast.  The Swift interface generated from the `gtk` header files is close to 300,000 lines.  This takes a long time to build!

### Xcode freezes when opening `Gtk-3.0.swift`

Don't try to open `Gtk-3.0.swift` (either directly or by Command-clicking on a Gtk type)!  If you do, Xcode will try to run the syntax highlighter over close to 300,000 lines of code (see above), which takes a very long time during which you will only see a spinning beach ball (eventually the source will show up, but Xcode will be very sluggish)!  If you want to open `Gtk-3.0.swift` better  use an editor that can handle such large text files, such as [vim](http://www.vim.org).

### Old Swift toolchain or Xcode
If you get an error such as

	$ ./build.sh 
	error: unable to invoke subcommand: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-package (No such file or directory)
	
this probably means that your Swift toolchain is too old.  Make sure the latest toolchain is the one that is found when you run the Swift compiler (see above).


  If you get an older version, make sure that the right version of the swift compiler is found first in your `PATH`.  On macOS, use xcode-select to select and install the latest version, e.g.:

	sudo xcode-select -s /Applications/Xcode.app
	xcode-select --install

