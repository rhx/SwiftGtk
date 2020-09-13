# SwiftGtk
A Swift wrapper around gtk-3.x that is largely auto-generated from gobject-introspection.
This project tries to make gtk more "swifty" than using the plain C language interface.
For up to date (auto-generated) reference documentation, see https://rhx.github.io/SwiftGtk/

## What is new?

Version 11 introduces a new type system into `gir2swift`,
to ensure it has a representation of the underlying types.
This is necessary for Swift 5.3 onwards, which requires more stringent casts.
As a consequence, accessors can accept and return idiomatic Swift rather than
underlying types or pointers.
This means that a lot of the changes will be source-breaking for code that
was compiled against libraries built with earlier versions of `gir2swift`.

### Notable changes

 * Parameters use idiomatic Swift names (e.g. camel case instead of snake case, splitting out of "for", "from", etc.)
 * Requires Swift 5.2 or later
 * Uses the namespace referenced in the `gir` file
 * Wrapper code is now `@inlinable` to enable the compiler to optimise away most of the wrappers
 * Parameters and return types use more idiomatic Swift (e.g. `Ref` wrappers instead of pointers, `Int` instead of `gint`, etc.)
 * Functions that take or return records now are templated instead of using the type-erased Protocol
 * `ErrorType` has been renamed `GLibError` to ensure it neither clashes with `Swift.Error` nor the `GLib.ErrorType`  scanner enum
 * Parameters or return types for records/classes now use the corresponding, lightweight Swift `Ref` wrapper instead of the underlying pointer

## Usage

Normally, you don't build this package directly (but for testing you can - see 'Building' below), but you embed it into your own project.  To use SwiftGtk, you need to use the [Swift Package Manager](https://swift.org/package-manager/).  After installing the prerequisites (see 'Prerequisites' below), add `SwiftGtk` as a dependency to your `Package.swift` file, e.g.:

```Swift
// swift-tools-version:5.2

import PackageDescription

let package = Package(name: "MyPackage",
    dependencies: [
        .package(name: "Gtk", url: "https://github.com/rhx/SwiftGtk.git", .branch("master")),
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

To build, you need at least Swift 5.2 (Swift 5.3+ should work fine), download from https://swift.org/download/ -- if you are using macOS, make sure you have the command line tools installed as well).  Test that your compiler works using `swift --version`, which should give you something like

	$ swift --version
	Apple Swift version 5.2.4 (swiftlang-1103.0.32.1 clang-1103.0.32.29)
	Target: x86_64-apple-darwin19.4.0

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 5.2.5 (swift-5.2.5-RELEASE)
	Target: x86_64-unknown-linux-gnu

### Gtk 3.22 or higher

The Swift wrappers have been tested with glib-2.56, 2.58, 2.60, 2.62, and 2.64, and gdk/gtk 3.22, and 3.24.  They should work with higher versions, but YMMV.  Also make sure you have `gobject-introspection` and its `.gir` files installed.

#### Linux

##### Ubuntu

On Ubuntu 20.04 and 18.04, you can use the gtk that comes with the distribution.  Just install with the `apt` package manager:

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
	brew install gtk+3 glib glib-networking gobject-introspection pkg-config


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


## Documentation
You can find reference documentation inside the [docs](https://rhx.github.io/SwiftGtk/) folder.
This was generated using the [jazzy](https://github.com/realm/jazzy) tool.
If you want to generate your own documentation, matching your local installation,
you can use the `generate-documentation.sh` script in the repository.
Unfortunately, at this stage [jazzy](https://github.com/realm/jazzy) only works on macOS (and crashes under Linux), so this will currently only work on a Mac.



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

