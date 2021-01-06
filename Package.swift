// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Gtk",
    products: [ .library(name: "Gtk", targets: ["Gtk"]) ],
    dependencies: [
	.package(name: "Gdk", url: "https://github.com/rhx/SwiftGdk.git", .branch("gtk4")),
	.package(name: "PangoCairo", url: "https://github.com/rhx/SwiftPangoCairo.git", .branch("main")),
    ],
    targets: [
	.systemLibrary(name: "CGtk", pkgConfig: "gtk4",
	    providers: [
		.brew(["gtk+4", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgtk-4-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(name: "Gtk", dependencies: ["GtkCHelpers", "Gdk", "PangoCairo"]),
        .target(name: "GtkCHelpers", dependencies: ["CGtk"]),
        .testTarget(name: "GtkTests", dependencies: ["Gtk"]),
    ]
)
