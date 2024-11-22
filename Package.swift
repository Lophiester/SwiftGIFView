
// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "SwiftGIFView",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SwiftGIFView",
            targets: ["SwiftGIFView"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftGIFView",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftGIFViewTests",
            dependencies: ["SwiftGIFView"]
        ),
    ]
)
