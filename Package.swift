// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.9.0-rc.3"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "3610610dd3be1797e80562b935dad13c93ec5c1bc3fec2169dcf52c8061ac2ec"
    )
  ],
  swiftLanguageVersions: [.v5]
)
