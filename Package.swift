// swift-tools-version:5.2

let package = Package(
    name: "openalloc.github.io",
    products: [
        .executable(name: "openalloc.github.io", targets: ["openalloc.github.io"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0"),
    ],
    targets: [
        .target(
            name: "openalloc.github.io",
            dependencies: [
               "Publish",
            ]
        )
    ]
)

