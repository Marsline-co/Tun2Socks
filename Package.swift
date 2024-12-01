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
        url: "https://github.com/Marsline-co/Tun2Socks/releases/download/2.6.0/HevSocks5Tunnel.xcframework.zip",
        checksum: "f5a0edb493fd689c871e109f47eb8959bbe02b4a7d94a827df97dd47e8a1bba6"
    )
  ]
)
