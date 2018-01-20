// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SpmRef",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "SpmRefKit", targets: ["SpmRefKit"]),
        .library(name: "ToolKit", targets: ["ToolKit"]),
        .library(name: "XcodebuildKit", targets: ["XcodebuildKit"]),
        .executable(name: "spmref", targets: ["spmref"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Carthage/Commandant.git", from: "0.12.0"),
        .package(url: "https://github.com/jatoben/CommandLine.git", from: "3.0.0-pre1"),
        .package(url: "https://github.com/nsomar/Swiftline.git", from: "0.5.0"),
        .package(url: "https://github.com/apple/swift-package-manager.git", from: "0.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SpmRefKit",
            dependencies: []),
        .target(
            name: "ToolKit",
            dependencies: []),
        .target(
            name: "XcodebuildKit",
            dependencies: []),
        .target(
            name: "spmref",
            dependencies: ["SpmRefKit",
                           "XcodebuildKit",
                           "SwiftPM"]),
        .testTarget(
            name: "SpmRefTests",
            dependencies: ["SpmRefKit"],
            path: "Tests/SpmRefTests"),
        .testTarget(
            name: "ToolKitTests",
            dependencies: ["ToolKit"],
            path: "Tests/ToolKitTests"),
        .testTarget(
            name: "XcodebuildKitTests",
            dependencies: ["XcodebuildKit"],
            path: "Tests/XcodebuildKitTests"),
    ]
)
