// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "Gtk",
    products: [ .library(name: "Gtk", targets: ["Gtk"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git",     branch: "development"),
        .package(url: "https://github.com/rhx/SwiftGraphene.git", branch: "development"),
        .package(url: "https://github.com/rhx/SwiftAtk.git",      branch: "development"),
        .package(url: "https://github.com/rhx/SwiftGsk.git",      branch: "development"),
    ],
    targets: [
        .systemLibrary(name: "CGtk", pkgConfig: "gtk4-unix-print",
	    providers: [
		.brew(["gtk4", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgtk-4-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(
            name: "Gtk", 
            dependencies: [
                "GtkCHelpers",
                .product(name: "gir2swift",  package: "gir2swift"),
                .product(name: "Graphene",   package: "SwiftGraphene"),
                .product(name: "Atk",        package: "SwiftAtk"),
                .product(name: "Gsk",        package: "SwiftGsk"),
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
