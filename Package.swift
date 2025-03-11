// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "Gtk",
    products: [ .library(name: "Gtk", targets: ["Gtk"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git", branch: "main"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
    ],
    targets: [
        .systemLibrary(
            name: "CGLib", pkgConfig: "gio-unix-2.0",
            providers: [
                .brew(["glib", "glib-networking", "gobject-introspection"]),
                .apt(["libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]
        ),
        .target(
            name: "GLib",
            dependencies: [
                "CGLib",
            ],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "GLibTests", dependencies: ["GLib"]),
        .target(
            name: "GLibObject",
            dependencies: ["GObjectCHelpers", "GLib"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .target(
            name: "GObjectCHelpers",
            dependencies: ["CGLib", "GLib"],
            cSettings: [
                .unsafeFlags(["-w"])
            ]
        ),
        .testTarget(
            name: "GLibObjectTests",
            dependencies: ["GLibObject"],
            swiftSettings: [.unsafeFlags(["-suppress-warnings"])]
        ),
        .target(
            name: "GIO",
            dependencies: ["GLibObject"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "GIOTests", dependencies: ["GIO"]),
        .target(
            name: "GModule",
            dependencies: ["GLib"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "GModuleTests", dependencies: ["GModule"]),
        .systemLibrary(
            name: "CAtk", pkgConfig: "atk",
            providers: [
                .brew(["atk", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libatk1.0-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]
        ),
        .target(
            name: "Atk",
            dependencies: ["CAtk", "GLibObject"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "AtkTests", dependencies: ["Atk"]),
        .systemLibrary(
            name: "CCairo", pkgConfig: "cairo",
            providers: [
                .brew(["cairo", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libcairo2-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]
        ),
        .target(
            name: "Cairo",
            dependencies: ["CCairo", "GModule", "GIO"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "CairoTests", dependencies: ["Cairo"]),
        .systemLibrary(
            name: "CHarfBuzz",
            pkgConfig: "harfbuzz-gobject",
            providers: [
                .brew(["harfbuzz", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libharfbuzz-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]
        ),
        .target(
            name: "HarfBuzz",
            dependencies: ["CHarfBuzz", "GLibObject"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "HarfBuzzTests", dependencies: ["HarfBuzz"]),
        .systemLibrary(
            name: "CGraphene",
            pkgConfig: "graphene-gobject-1.0",
            providers: [
                .brew(["graphene", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libgraphene-1.0-dev", "gir1.2-graphene-1.0", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]),
        .target(
            name: "Graphene",
            dependencies: ["CGraphene", "GLibObject"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(
            name: "GrapheneTests",
            dependencies: ["Graphene"]
        ),
        .systemLibrary(
            name: "CPango",
            pkgConfig: "pango",
            providers: [
                .brew(["pango", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libpango1.0-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]),
        .target(
            name: "Pango",
            dependencies: ["CPango", "GLibObject", "GIO", "HarfBuzz"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "PangoTests", dependencies: ["Pango"]),
        .systemLibrary(
            name: "CPangoCairo",
            pkgConfig: "pangocairo",
            providers: [
                .brew(["pango", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libpango1.0-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]),
        .target(
            name: "PangoCairo",
            dependencies: ["CPangoCairo", "Cairo", "Pango"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "PangoCairoTests", dependencies: ["PangoCairo"]),
        .systemLibrary(
            name: "CGdkPixbuf", pkgConfig: "gdk-pixbuf-2.0",
            providers: [
                .brew(["gdk-pixbuf", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libgdk-pixbuf2.0-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]
        ),
        .target(
            name: "GdkPixBuf",
            dependencies: ["CGdkPixbuf", "GIO", "GModule"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "GdkPixBufTests", dependencies: ["GdkPixBuf"]),
//        .systemLibrary(
//            name: "CCogl", pkgConfig: "cogl-1.0",
//            providers: [
//                .brew(["cogl", "gdk-pixbuf", "cairo", "glib", "glib-networking", "gobject-introspection"]),
//                .apt(["libcogl-gles2-dev", "libgdk-pixbuf2.0-dev", "libcogl-dev", "libcairo2-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
//            ]
//        ),
//        .systemLibrary(
//            name: "CCoglPath", pkgConfig: "cogl-1.0",
//            providers: [
//                .brew(["cogl", "cairo", "glib", "glib-networking", "gobject-introspection"]),
//                .apt(["libcogl-path-dev", "libcairo2-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
//            ]
//        ),
//        .target(
//            name: "Cogl",
//            dependencies: ["CCogl", "CCoglPath", "GdkPixBuf"],
//            swiftSettings: [
//                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
//                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
//            ],
//            plugins: [
//                .plugin(name: "gir2swift-plugin", package: "gir2swift")
//            ]
//        ),
//        .testTarget(name: "CoglTests", dependencies: ["Cogl"]),
//        .systemLibrary(
//            name: "CCoglPango", pkgConfig: "cogl-pango-1.0",
//            providers: [
//                .brew(["cogl", "cairo", "glib", "glib-networking", "gobject-introspection"]),
//                .apt(["libcogl-pango-dev", "libcogl-gles2-dev", "libcogl-path-dev", "libcogl-dev", "libcairo2-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
//            ]),
//        .target(
//            name: "CoglPango",
//            dependencies: ["CCoglPango", "Cogl", "PangoCairo"],
//            swiftSettings: [
//                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
//                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
//            ],
//            plugins: [
//                .plugin(name: "gir2swift-plugin", package: "gir2swift")
//            ]
//        ),
//        .testTarget(name: "CoglPangoTests", dependencies: ["CoglPango"]),
        .systemLibrary(
            name: "CGdk", pkgConfig: "gtk4",
            providers: [
                .brew(["gtk4", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libgtk-4-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]),
        .target(
            name: "Gdk",
            dependencies: ["CGdk", "GdkPixBuf", "PangoCairo"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "GdkTests", dependencies: ["Gdk"]),
        .systemLibrary(
            name: "CGsk",
            pkgConfig: "gtk4",
            providers: [
                .brew(["gtk4", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libgtk-4-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]),
        .target(
            name: "Gsk",
            dependencies: ["CGsk", "GLibObject", "Graphene", "Gdk"],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "GskTests", dependencies: ["Gsk"]),
        .systemLibrary(
            name: "CGtk", pkgConfig: "gtk4-unix-print",
            providers: [
                .brew(["gtk4", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libgtk-4-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]
        ),
        .target(
            name: "Gtk", 
            dependencies: ["GtkCHelpers", "Graphene", "Gsk"],
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
