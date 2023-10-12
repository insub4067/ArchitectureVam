// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Vam",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Vam",
            targets: ["Vam"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Vam"
        ),
        .target(
            name: "Example",
            dependencies: ["Vam"]
        ),
        .testTarget(
            name: "VamTests",
            dependencies: ["Vam"]),
    ]
)
