// swift-tools-version:4.0
// Managed by ice

import PackageDescription

let package = Package(
    name: "Ice",
    products: [
        .executable(name: "ice", targets: ["CLI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jakeheis/SwiftCLI", .upToNextMinor(from: "3.0.2")),
        .package(url: "https://github.com/JustHTTP/Just", .upToNextMinor(from: "0.6.0")),
        .package(url: "https://github.com/JohnSundell/Files", .upToNextMinor(from: "1.11.0")),
        .package(url: "https://github.com/sharplet/Regex", .upToNextMinor(from: "1.1.0")),
        .package(url: "https://github.com/onevcat/Rainbow", .upToNextMinor(from: "2.1.0")),
        .package(url: "https://github.com/kiliankoe/CLISpinner", .upToNextMinor(from: "0.3.4")),
    ],
    targets: [
        .target(name: "CLI", dependencies: ["SwiftCLI", "Core"]),
        .target(name: "Core", dependencies: ["Just", "Files", "Regex", "Rainbow", "CLISpinner"]),
        .testTarget(name: "CoreTests", dependencies: ["Core"]),
    ]
)