// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "GCDWebServer",
    platforms: [
        .iOS(.v11), .tvOS(.v11), .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "GCDWebServers",
            targets: ["GCDWebServers"]),
    ],
    targets: [
        .target(
            name: "GCDWebServers",
            path: "Sources/GCDWebServers",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("include")
            ]
        ),
    ]
)
