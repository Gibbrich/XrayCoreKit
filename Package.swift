// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XrayCoreKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "XrayCoreKit",
            targets: ["XrayCoreKit", "XrayCore"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "XrayCoreKit",
            dependencies: ["XrayCore"]
        ),
        .testTarget(
            name: "XrayCoreKitTests",
            dependencies: ["XrayCoreKit"]
        ),
        .binaryTarget(
            name: "XrayCore",
            url: "https://github.com/Gibbrich/safewayvpn-mobile-core/releases/download/1.0.0/XrayCore.xcframework.zip",
            checksum: "8756f84ae14fa852e1d4b38dad50747479abf8bd0df1c53b886e5818423ca0fd"
        )
    ]
)
