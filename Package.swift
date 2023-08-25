// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "swiftui-introspect",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
    ],
    products: [
        .library(name: "SwiftUIIntrospect", targets: ["SwiftUIIntrospect"]),
        .library(name: "SwiftUIIntrospect-Static", type: .static, targets: ["SwiftUIIntrospect"]),
        .library(name: "SwiftUIIntrospect-Dynamic", type: .dynamic, targets: ["SwiftUIIntrospect"]),
    ],
    targets: [
        .target(
            name: "Introspect",
            path: "Introspect"
        ),
        .testTarget(
            name: "IntrospectTests",
            dependencies: ["Introspect"],
            path: "IntrospectTests"
        ),

        .target(
            name: "SwiftUIIntrospect",
            path: "Sources"
        ),
    ]
)
