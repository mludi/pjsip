// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pjsip",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.1.2")
    ],
    targets: [
        .executableTarget(
            name: "pjsip",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .testTarget(
            name: "pjsipTests",
            dependencies: ["pjsip"]),
    ]
)

