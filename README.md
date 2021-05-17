# SwiftGtk

A Swift wrapper around gtk-3.x and gtk-4.x that is largely auto-generated from gobject-introspection.
This project tries to make gtk more "swifty" than using the plain C language interface.
For up to date (auto-generated) reference documentation, see https://rhx.github.io/SwiftGtk/

![macOS 11 build](https://github.com/rhx/SwiftGtk/workflows/macOS%2011/badge.svg)
![macOS 10.15 build](https://github.com/rhx/SwiftGtk/workflows/macOS%2010.15/badge.svg)
![macOS gtk4 build](https://github.com/rhx/SwiftGtk/workflows/macOS%20gtk4/badge.svg)
![Ubuntu 20.04 build](https://github.com/rhx/SwiftGtk/workflows/Ubuntu%2020.04/badge.svg)
![Ubuntu 18.04 build](https://github.com/rhx/SwiftGtk/workflows/Ubuntu%2018.04/badge.svg)

## What is new?

Support for gtk 4 was added via the `gtk4` branch.

Version 12 of gir2swift pulls in [PR#10](https://github.com/rhx/gir2swift/pull/10), addressing several issues:

- Improvements to the Build experience and LSP [rhx/SwiftGtk#34](https://github.com/rhx/SwiftGtk/issues/34)
- Fix issues with LLDB [rhx/SwiftGtk#39](https://github.com/rhx/SwiftGtk/issues/39)
- **Controversial:** Implicitly marks all declarations named "priv" as if they had attribute `private=1`
- Prevents all "Private" records from generating unless generated in their instance record
  - `-a` option generates all records
- Introduces CI
- For Class metadata types no longer generates class wrappers. Ref structs now contain static method which returnes the GType of the class and instance of the Class metatype wrapped in the Ref struct.
- Adds final class GWeak<T> where T could be any Ref struct of a type which supports ARC. This class is a property wrapper which contains weak reference to any instance of T. This is especially beneficial for capture lists.
- Adds support for weak observation.
- Constructors and factories of GObjectInitiallyUnowned classes now consume floating reference upon initialisation as advised by [the GObject documentation](https://developer.gnome.org/gobject/stable/gobject-The-Base-Object-Type.html)

Partially implemented:
- Typed signal generation. Issues shown in [rhx/SwiftGtk#35](https://github.com/rhx/SwiftGtk/issues/35) hat remain to be addressed are listed here: [mikolasstuchlik/gir2swift#2](https://github.com/mikolasstuchlik/gir2swift/pull/2).

### Other Notable changes

Version 11 introduces a new type system into `gir2swift`,
to ensure it has a representation of the underlying types.
This is necessary for Swift 5.3 onwards, which requires more stringent casts.
As a consequence, accessors can accept and return idiomatic Swift rather than
underlying types or pointers.
This means that a lot of the changes will be source-breaking for code that
was compiled against libraries built with earlier versions of `gir2swift`.

 * Parameters use idiomatic Swift names (e.g. camel case instead of snake case, splitting out of "for", "from", etc.)
 * Requires Swift 5.2 or later (Swift 5.3 is required for the `gtk4` branch)
 * Uses the namespace referenced in the `gir` file
 * Wrapper code is now `@inlinable` to enable the compiler to optimise away most of the wrappers
 * Parameters and return types use more idiomatic Swift (e.g. `Ref` wrappers instead of pointers, `Int` instead of `gint`, etc.)
 * Functions that take or return records now are templated instead of using the type-erased Protocol
 * `ErrorType` has been renamed `GLibError` to ensure it neither clashes with `Swift.Error` nor the `GLib.ErrorType`  scanner enum
 * Parameters or return types for records/classes now use the corresponding, lightweight Swift `Ref` wrapper instead of the underlying pointer

## Usage

Normally, you don't build this package directly (but for testing you can - see 'Building' below). Instead you need to embed SwiftGtk into your own project using the [Swift Package Manager](https://swift.org/package-manager/).  After installing the prerequisites (see 'Prerequisites' below), you can do this by creating a new, empty project folder and then running the [projgen.sh](https://github.com/rhx/SwiftGtk/blob/gtk3/projgen.sh) script, e.g.:
```
mkdir MyProject
cd MyProject
curl -L https://git.io/SwiftGtk3.sh | sh
./run-gir2swift.sh
```

After this, you should be able to `import Gtk` in your sources and use `swift build` to build your project.
Alternatively, you can manually download [run-gir2swift.sh](https://github.com/rhx/gir2swift/raw/main/run-gir2swift.sh ) and add `SwiftGtk` as a dependency to your `Package.swift` file, e.g.:

```Swift
// swift-tools-version:5.3

import PackageDescription

let package = Package(name: "MyPackage",
    dependencies: [
        .package(name: "gir2swift", url: "https://github.com/rhx/gir2swift.git", .branch("main")),
        .package(name: "Gtk", url: "https://github.com/rhx/SwiftGtk.git", .branch("gtk3")),
    ],
    targets: [.target(name: "MyPackage", dependencies: ["Gtk"])]
)
```

For gtk4 replace `.branch("gtk3")` with `.branch("gtk4")`.

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
 
You first need to create the Swift Wrappers using
```
./run-gir2swift.sh
```
After that, you can build, test, or run your project using the usual Swift compiler commands:
```
swift build
swift test
swift run
```

On macOS, there is an issue that requires you to pass in the required flags manually (see [Building](#Building) below).  You can also build the project using Xcode on macOS instead.  To do this, you need to create an Xcode project first, then open the project in the Xcode IDE:

	./xcodegen.sh
	open MyPackage.xcodeproj

After that, use the (usual) Build and Test buttons to build/test this package.  Please note that, at this stage, the Swift Package manager is not able to create App targets for Xcode (so to build a macOs app rather than just a command line executable, you still need to use the `build.sh` script that calls `app-wrapper.sh` to create the standalone app bundle).


## Prerequisites

### Swift

To build, you need at least Swift 5.2 (Swift 5.3 is required for `gtk4`), download from https://swift.org/download/ -- if you are using macOS, make sure you have the command line tools installed as well).  Test that your compiler works using `swift --version`, which should give you something like

	$ swift --version
	Apple Swift version 5.4 (swiftlang-1205.0.26.9 clang-1205.0.19.55)
    Target: x86_64-apple-darwin20.5.0

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 5.4 (swift-5.4-RELEASE)
	Target: x86_64-unknown-linux-gnu

### Gtk 3.22 or higher

The Swift wrappers have been tested with glib-2.56, 2.58, 2.60, 2.62, 2.64, 2.66 and 2.68, and gdk/gtk 3.22, 3.24 as well as 4.0 and 4.2 on the `gtk4` branch.  They should work with higher versions, but YMMV.  Also make sure you have `gobject-introspection` and its `.gir` files installed.

#### Linux

##### Ubuntu

On Ubuntu 20.04 and 18.04, you can use the gtk that comes with the distribution.  Just install with the `apt` package manager:

	sudo apt update
	sudo apt install libgtk-3-dev gir1.2-gtksource-3.0 gobject-introspection libgirepository1.0-dev libxml2-dev jq

##### Fedora

On Fedora 29, you can use the gtk that comes with the distribution.  Just install with the `dnf` package manager:

	sudo dnf install gtk3-devel pango-devel cairo-devel cairo-gobject-devel glib2-devel gobject-introspection-devel libxml2-devel jq

#### macOS

On macOS, you can install gtk using HomeBrew (for setup instructions, see http://brew.sh).  Once you have a running HomeBrew installation, you can use it to install a native version of gtk:

	brew update
	brew install gtk+3 glib glib-networking gobject-introspection pkg-config jq


## Building

As pointed out in the 'Usage' section above, you don't normally build this package directly, but instead you embed it into your own project.  However, you can build and test this module separately to ensure that everything works.  Make sure you have all the prerequisites installed (see above).  After that, you can simply clone this repository and build the command line executable (be patient, this will download all the required dependencies and take a while to compile) using

	git clone https://github.com/rhx/SwiftGtk.git
	cd SwiftGtk
    ./run-gir2swift.sh
    swift build
    swift test

Please note that on macOS, due to a bug in the Swift Package Manager prior to Swift 5.4,
if you have Xcode-12.4 or older, you need to pass in the build flags manually,
i.e. instead of `swift build` and `swift test` you can run

    swift build `./run-gir2swift.sh flags -noUpdate`
    swift test  `./run-gir2swift.sh flags -noUpdate`

### Xcode

On macOS, you can build the project using Xcode instead.  To do this, you need to create an Xcode project first, then open the project in the Xcode IDE:

	./xcodegen.sh
	open Gtk.xcodeproj

After that, use the (usual) Build and Test buttons to build/test this package.


## Documentation

You can find reference documentation inside the [docs](https://rhx.github.io/SwiftGLib/) folder.
This was generated using the [jazzy](https://github.com/realm/jazzy) tool.
If you want to generate your own documentation, matching your local installation,
you can use the `generate-documentation.sh` script in the repository.
Make sure you have [sourcekitten](https://github.com/jpsim/SourceKitten) and [jazzy](https://github.com/realm/jazzy) installed, e.g. on macOS:

	brew install sourcekitten
	sudo gem install jazzy
	./run-gir2swift.sh
	./generate-documentation.sh


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

### Known Issues

 * When building, a lot of warnings appear.  This is largely an issue with automatic `RawRepresentable` conformance in the Swift Standard library.  As a workaround, you can turn this off by passing the `-Xswiftc -suppress-warnings` parameter when building.
 
 * The current build system does not support directory paths with spaces (e.g. the `My Drive` directory used by Google Drive File Stream).
 * BUILD_DIR is not supported in the current build system.
 
As a workaround, you can use the old build scripts, e.g. `./build.sh` (instead of `run-gir2swift.sh` and `swift build`) to build a package.
