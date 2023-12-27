# Usage

Typically, you embed this package into your own project
using the [Swift Package Manager](https://swift.org/package-manager/).

After installing the prerequisites (see <doc:GettingStarted>),
add this package as a dependency to your `Package.swift` file.

E.g.:

```swift
// swift-tools-version:5.6

import PackageDescription

let package = Package(name: "MyPackage",
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git", branch: "main"),
        .package(url: "https://github.com/rhx/SwiftGtk.git",  branch: "gtk4"),
    ],
    targets: [
        .target(name: "MyPackage",
                dependencies: [
                    .product(name: "Gtk", package: "SwiftGtk")
                ]
        )
    ]
)
```

For gtk3 replace `.branch("gtk4")` with `.branch("gtk3")`.
