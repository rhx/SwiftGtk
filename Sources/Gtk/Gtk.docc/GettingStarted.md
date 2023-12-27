# Getting Started

This section contains the information to get you started in setting up the pre-requisites for building this library.
You can then add this package as a dependency to your own project (see <doc:Usage> below).

To build, download Swift from https://swift.org/download/ -- if you are using macOS, make sure you have the command line tools installed as well).  Test that your compiler works using `swift --version`, which should give you something like

	$ swift --version
    swift-driver version: 1.87.3 Apple Swift version 5.9.2 (swiftlang-5.9.2.2.56 clang-1500.1.0.2.5)
    Target: arm64-apple-macosx14.0

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 5.9.2 (swift-5.9.2-RELEASE)
	Target: x86_64-unknown-linux-gnu

### Gtk 3.22 or higher

The Swift wrappers have been tested with
glib-2.56, 2.58, 2.60, 2.62, 2.64, 2.66, 2.68, 2.70, 2.72, 2.74, 2.76 and 2.78,
and gdk/gtk-3.22, 3.24 on the `gtk3` branch as well as
4.0, 4.2, 4.4, 4.6, 4.8, 4.10, and 4.12 on the `gtk4` branch.
They should work with higher versions, but YMMV.
Also make sure you have `gobject-introspection` and its `.gir` files installed.

#### Linux

##### Ubuntu

On Ubuntu 22.04, you can use the gtk that comes with the distribution.  Just install with the `apt` package manager:

	sudo apt update
	sudo apt install libgtk-4-dev gir1.2-gtksource-4.0 libcogl-pango-dev libcogl-path-dev libcogl-dev libpango1.0-dev gir1.2-pango-1.0 libgdk-pixbuf2.0-dev gir1.2-gdkpixbuf-2.0 libgraphene-1.0-dev gir1.2-graphene-1.0 libglib2.0-dev glib-networking libatk1.0-dev libatk-bridge2.0-dev libcogl-dev libcogl-pango-dev gobject-introspection libgirepository1.0-dev libxml2-dev jq

Ubuntu 18.04 also requires you to install `libcogl-gles2-dev`.

##### Fedora

On Fedora, you can use the gtk that comes with the distribution.  Just install with the `dnf` package manager:

	sudo dnf install gtk4-devel pango-devel cairo-devel cairo-gobject-devel glib2-devel gobject-introspection-devel libxml2-devel jq

#### macOS

On macOS, you can install gtk using HomeBrew (for setup instructions, see http://brew.sh).  Once you have a running HomeBrew installation, you can use it to install a native version of gtk:

	brew update
	brew install gtk4 glib glib-networking gobject-introspection pkg-config jq
