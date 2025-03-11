// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "Gtk",
    products: [ .library(name: "Gtk", targets: ["Gtk"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git", branch: "development"),
        .package(url: "https://github.com/rhx/SwiftAtk.git",  branch: "development"),
        .package(url: "https://github.com/rhx/SwiftGdk.git",  branch: "development"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
	.systemLibrary(name: "CGtk", pkgConfig: "gtk+-3.0",
	    providers: [
		.brew(["gtk+3", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgtk-3-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(
            name: "Gtk", 
            dependencies: [
                "GtkCHelpers",
                .product(name: "gir2swift",  package: "gir2swift"),
                .product(name: "Gdk",        package: "SwiftGdk"),
                .product(name: "Atk",        package: "SwiftAtk")
            ],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .target(name: "GtkCHelpers", dependencies: ["CGtk"]),
        .testTarget(
            name: "GtkTests",
            dependencies: ["Gtk"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ]
        ),
    ]
)
