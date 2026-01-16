// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Components",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Components", targets: ["Components"])
    ],
    dependencies: [
        .package(url: "https://github.com/adedwi1808/game-catalogue-Core-package.git", from: "1.0.2"),
.package(url: "https://github.com/adedwi1808/game-catalogue-Common-package.git", from: "1.0.2"),

        .package(
            url: "https://github.com/onevcat/Kingfisher.git",
            from: "8.6.2"
        ),
        .package(
            url: "https://github.com/Juanpe/SkeletonView.git",
            from: "1.31.0"
        ),
    ],
    targets: [
        .target(
            name: "Components",
            dependencies: ["Core", "Common", "Kingfisher", "SkeletonView"]
        )
    ]
)
