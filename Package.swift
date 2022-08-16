// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "openalloc.github.io",
    products: [
        .executable(name: "openalloc.github.io", targets: ["openalloc.github.io"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
    ],
    targets: [
        .executableTarget(
            name: "openalloc.github.io",
            dependencies: [
                .product(name: "Publish", package: "Publish"),
            ],
            path: "Sources"
        )
    ]
)

