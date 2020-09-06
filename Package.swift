// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Gtk",
    products: [ .library(name: "Gtk", targets: ["Gtk"]) ],
    dependencies: [
        .package(name: "Atk", url: "https://github.com/rhx/SwiftAtk.git", .branch("master")),
        .package(name: "Gdk", url: "https://github.com/rhx/SwiftGdk.git", .branch("master")),
    ],
    targets: [
	.systemLibrary(name: "CGtk", pkgConfig: "gtk-3.0 gdk-3.0 pangocairo pangoft2 pango gio-unix-2.0 glib-2.0",
	    providers: [
		.brew(["gtk+3", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgtk-3-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(name: "Gtk", dependencies: ["GtkCHelpers", "Gdk", "Atk"]),
        .target(name: "GtkCHelpers", dependencies: ["CGtk"]),
        .testTarget(name: "GtkTests", dependencies: ["Gtk"]),
    ]
)
