// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Gtk",
    products: [ .library(name: "Gtk", targets: ["Gtk"]) ],
    dependencies: [
        .package(name: "gir2swift", url: "https://github.com/rhx/gir2swift.git", .branch("main")),
        .package(name: "Atk", url: "https://github.com/rhx/SwiftAtk.git", .branch("main")),
        .package(name: "Gdk", url: "https://github.com/rhx/SwiftGdk.git", .branch("main")),
    ],
    targets: [
	.systemLibrary(name: "CGtk", pkgConfig: "gtk+-3.0",
	    providers: [
		.brew(["gtk+3", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgtk-3-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(
            name: "Gtk", 
            dependencies: ["GtkCHelpers", "Gdk", "Atk"],
            swiftSettings: [.unsafeFlags(["-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug))]
        ),
        .target(name: "GtkCHelpers", dependencies: ["CGtk"]),
        .testTarget(name: "GtkTests", dependencies: ["Gtk"]),
    ]
)
