// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignTokens",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "DesignTokens", targets: ["DesignTokens"])
    ],
    targets: [
        .target(name: "DesignTokens", path: "types/ios")
    ]
)
