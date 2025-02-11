// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlipaySDK",
    platforms: [
      .iOS(.v16)
    ],
    products: [
        .library(
            name: "AlipaySDK",
            targets: ["AlipaySDKPM", "AlipaySDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AlipaySDKPM",
            path: "AlipaySDK",
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreText"),
                .linkedFramework("WebKit")
            ]
        ),
        .binaryTarget(
            name: "AlipaySDK",
            path: "./Framework/AlipaySDK.xcframework"
        )
    ]
)
