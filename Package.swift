// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AttributedStringBuilder",
    products: [
        .library(
            name: "AttributedStringBuilder",
            targets: ["AttributedStringBuilder"]),
    ],
    targets: [
        .target(
            name: "AttributedStringBuilder",
            dependencies: [],
            path: "AttributedStringBuilder")
    ]
)
