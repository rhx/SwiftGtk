import PackageDescription

let package = Package(
    name: "Gtk",
    dependencies: [
        .Package(url: "https://github.com/rhx/CGtk.git", majorVersion: 1),
        .Package(url: "https://github.com/rhx/SwiftGdk.git", majorVersion: 3),
        .Package(url: "https://github.com/rhx/SwiftAtk.git", majorVersion: 2)
    ]
)
