# Getting Started

This section contains the information to get you started in setting up the pre-requisites for building this library.
You can then add this package as a dependency to your own project (see <doc:Usage> below).

To build, download Swift from https://swift.org/download/ -- if you are using macOS, make sure you have the command line tools installed as well). Test that your compiler works using `swift --version`, which should give you something like

	$ swift --version
    swift-driver version: 1.87.3 Apple Swift version 5.9.2 (swiftlang-5.9.2.2.56 clang-1500.1.0.2.5)
    Target: arm64-apple-macosx14.0

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 5.9.2 (swift-5.9.2-RELEASE)
	Target: x86_64-unknown-linux-gnu

## GLib 2.56 or higher

These Swift wrappers have been tested with glib-2.56, 2.58, 2.60, 2.62, 2.64, 2.66, 2.68, 2.70, 2.72, 2.73, 2.74, 2.76, and 2.78.  They should work with higher versions, but YMMV.  Also make sure you have `gobject-introspection` and its `.gir` files installed.

### Linux

#### Ubuntu

On Ubuntu 18.04, 20.04, and 22.04 you can use the glib that comes with the distribution.  Just install with the `apt` package manager:

	sudo apt update
	sudo apt install libglib2.0-dev glib-networking gobject-introspection libgirepository1.0-dev libxml2-dev jq

#### Fedora

On Fedora 29, you can use the gtk that comes with the distribution.  Just install with the `dnf` package manager:

	sudo dnf install glib2-devel gobject-introspection-devel libxml2-devel jq

### macOS

On macOS, you can install glib using HomeBrew (for setup instructions, see http://brew.sh):

	brew update
	brew install glib glib-networking gobject-introspection pkg-config jq
