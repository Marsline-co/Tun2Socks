// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  platforms: [.iOS(.v12)],
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit"]
    )
  ],
  targets: [
    .target(
        name: "Tun2SocksKit",
        dependencies: ["Tun2SocksKitC", "HevSocks5Tunnel"],
        cSettings: [
            .headerSearchPath("../../include")
        ]
    ),
    .target(
        name: "Tun2SocksKitC",
        path: "Sources/Tun2SocksKitC",
        publicHeadersPath: "include" // Ensure all headers are in a single "include" folder
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        path: "./HevSocks5Tunnel/HevSocks5Tunnel.xcframework" // Ensure correct path to .xcframework
    )
  ]
)
