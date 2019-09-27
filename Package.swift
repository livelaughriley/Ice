// swift-tools-version:4.0
// Managed by ice

import PackageDescription

let package = Package(
    name: "Ice",
    products: [
        .executable(name: "ice", targets: ["Ice"]),
        .library(name: "IceKit", targets: ["IceKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jakeheis/Icebox", from: "0.0.6"),
        .package(url: "https://github.com/kylef/PathKit", from: "0.9.0"),
        .package(url: "https://github.com/onevcat/Rainbow", from: "3.1.1"),
        .package(url: "https://github.com/livelaughriley/SwiftCLI", from: "5.0.0"),
        .package(url: "https://github.com/scottrhoyt/SwiftyTextTable", from: "0.9.0"),
    ],
    targets: [
        .target(name: "Ice", dependencies: ["IceCLI"]),
        .target(name: "IceCLI", dependencies: ["IceKit", "PathKit", "Rainbow", "SwiftCLI", "SwiftyTextTable"]),
        .target(name: "IceKit", dependencies: ["PathKit", "Rainbow", "SwiftCLI"]),
        .target(name: "TestingUtilities", dependencies: ["Icebox"]),
        .testTarget(name: "IceKitTests", dependencies: ["IceKit", "Icebox", "PathKit", "SwiftCLI", "TestingUtilities"]),
        .testTarget(name: "IceTests", dependencies: ["Icebox", "Rainbow", "TestingUtilities"]),
    ]
)
