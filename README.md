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

 * Experimental Monorepo support was added through the `monorepo` and `gtk4-monorepo` branches.

 * Support for gtk 4 was added via the `gtk4` branch.

 * SwiftGLib 2.73 introduces typed convenience wrappers for GLib collection types such as `GArray`, `GByteArray`, `GList`, `GSList`, and `GSequence`.

 * Version 15 of gir2swift provides a Package Manager Plugin.  This requires Swift 5.6 or higher.


## Usage

Normally, you don't build this package directly (but for testing you can - see 'Building' below). Instead you need to embed SwiftGtk into your own project using the [Swift Package Manager](https://swift.org/package-manager/).  After installing the prerequisites (see 'Prerequisites' below), you can do this by creating a new, empty project folder and then running the [projgen.sh](https://github.com/rhx/SwiftGtk/blob/gtk3/projgen.sh) script, e.g.:
```
mkdir MyProject
cd MyProject
curl -L https://git.io/SwiftGtk4.sh | sh
```

After this, you should be able to `import Gtk` in your sources and use `swift build` to build your project.
Alternatively, you can manually download [run-gir2swift.sh](https://github.com/rhx/gir2swift/raw/main/run-gir2swift.sh ) and add `SwiftGtk` as a dependency to your `Package.swift` file, e.g.:

```Swift
// swift-tools-version:5.6

import PackageDescription

let package = Package(name: "MyPackage",
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git", branch: "main"),
        .package(url: "https://github.com/rhx/SwiftGtk.git",  branch: "gtk4"),
    ],
    targets: [
        .target(name: "MyPackage",
                dependencies: [
                    .product(name: "Gtk", package: "SwiftGtk")
                ]
        )
    ]
)
```

For gtk3 replace `.branch("gtk4")` with `.branch("gtk3")`.

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
 
You can build, test, or run your project using the usual Swift compiler commands:
```
swift build
swift test
swift run
```

You can also build the project using Xcode on macOS instead.  To do this, you need to create an Xcode project first, then open the project in the Xcode IDE:

	./xcodegen.sh
	open MyPackage.xcodeproj

After that, use the (usual) Build and Test buttons to build/test this package.  Please note that, at this stage, the Swift Package manager is not able to create App targets for Xcode (so to build a macOs app rather than just a command line executable, you still need to use the `build.sh` script that calls `app-wrapper.sh` to create the standalone app bundle).


## Prerequisites

### Swift 5.6 or higher

To build, download Swift from https://swift.org/download/ -- if you are using macOS, make sure you have the command line tools installed as well).  Test that your compiler works using `swift --version`, which should give you something like

	$ swift --version
	swift-driver version: 1.87.1 Apple Swift version 5.9 (swiftlang-5.9.0.128.108 clang-1500.0.40.1)
    Target: arm64-apple-macosx14.0

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 5.9 (swift-5.9-RELEASE)
	Target: x86_64-unknown-linux-gnu

### Gtk 3.22 or higher

The Swift wrappers have been tested with glib-2.56, 2.58, 2.60, 2.62, 2.64, 2.66, 2.68, 2.70, 2.72, 2.74, 2.76 and 2.78, and gdk/gtk 3.22, 3.24 as well as 4.0, 4.2, 4.4, 4.6, 4.8, 4.10, and 4.12 on the `gtk4` branch.  They should work with higher versions, but YMMV.  Also make sure you have `gobject-introspection` and its `.gir` files installed.

#### Linux

##### Ubuntu

On Ubuntu 22.04, you can use the gtk that comes with the distribution.  Just install with the `apt` package manager:

	sudo apt update
	sudo apt install libgtk-4-dev libatk1.0-dev libcogl-pango-dev libcogl-path-dev libcogl-dev libpango1.0-dev gir1.2-pango-1.0 libgdk-pixbuf2.0-dev gir1.2-gdkpixbuf-2.0 libgraphene-1.0-dev gir1.2-graphene-1.0 libglib2.0-dev glib-networking libatk1.0-dev libatk-bridge2.0-dev libcogl-dev libcogl-pango-dev gobject-introspection libgirepository1.0-dev libxml2-dev jq

Ubuntu 18.04 also requires you to install `libcogl-gles2-dev`.

##### Fedora

On Fedora, you can use the gtk that comes with the distribution.  Just install with the `dnf` package manager:

	sudo dnf install gtk4-devel pango-devel cairo-devel cairo-gobject-devel glib2-devel gobject-introspection-devel libxml2-devel jq

#### macOS

On macOS, you can install gtk using HomeBrew (for setup instructions, see http://brew.sh).  Once you have a running HomeBrew installation, you can use it to install a native version of gtk:

	brew update
	brew install gtk4 glib glib-networking gobject-introspection pkg-config jq


## Building

As pointed out in the 'Usage' section above, you don't normally build this package directly, but instead you embed it into your own project.  However, you can build and test this module separately to ensure that everything works.  Make sure you have all the prerequisites installed (see above).  After that, you can simply clone this repository and build the command line executable (be patient, this will download all the required dependencies and take a while to compile) using

	git clone https://github.com/rhx/SwiftGtk.git
	cd SwiftGtk
    swift build
    swift test


## Documentation

You can find reference documentation inside the [docs](https://rhx.github.io/SwiftGLib/) folder.
This was generated using the [jazzy](https://github.com/realm/jazzy) tool.
If you want to generate your own documentation, matching your local installation,
you can use the `generate-documentation.sh` script in the repository.
Make sure you have [sourcekitten](https://github.com/jpsim/SourceKitten) and [jazzy](https://github.com/realm/jazzy) installed, e.g. on macOS:

	brew install sourcekitten
	sudo gem install jazzy
	./generate-documentation.sh


## Troubleshooting

Here are some common errors you might encounter and how to fix them.

### SwiftGtk takes a very long time to build

Yes, `gtk` is a huge beast.  The Swift interface generated from the `gtk` header files is close to 300,000 lines.  This takes some time to build!

### Missing `.gir` Files
If you get an error such as

	Girs located at
	Cannot open '/GLib-2.0.gir': No such file or directory

Make sure that you have the relevant `gobject-introspection` packages installed (as per the Pre-requisites section), including their `.gir` and `.pc` files.

### Old Swift toolchain or Xcode

If, when you run `swift build`, you get a `Segmentation fault (core dumped)` or circular dependency error such as

	warning: circular dependency detected while parsing pangocairo: harfbuzz -> freetype2 -> harfbuzz
	
this probably means that your Swift toolchain is too old, particularly on Linux (at the time of this writing, at least Swift 5.6 is required).  Make sure the latest toolchain is the one that is found when you run the Swift compiler (see above).

  If you get an older version, make sure that the right version of the swift compiler is found first in your `PATH`.  On macOS, use xcode-select to select and install the latest version, e.g.:

	sudo xcode-select -s /Applications/Xcode.app
	xcode-select --install
