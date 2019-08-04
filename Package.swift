// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Gtk",
    products: [
        .library(name: "Gtk", targets: ["Gtk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rhx/CGtk.git", .branch("master")),
        .package(url: "https://github.com/rhx/SwiftAtk.git", .branch("master")),
        .package(url: "https://github.com/rhx/SwiftGdk.git", .branch("master")),
    ],
    targets: [
        .target(name: "Gtk", dependencies: ["GtkCHelpers", "Gdk", "Atk"]),
        .target(name: "GtkCHelpers"),
        .testTarget(name: "GtkTests", dependencies: ["Gtk"]),
    ]
)
