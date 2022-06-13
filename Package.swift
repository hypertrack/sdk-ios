// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.12.3"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "91e1676d3d2cad6486e1f6d98e8abc7f990b9e067897383bf5df4b8e2d103839"
    )
  ],
  swiftLanguageVersions: [.v5]
)
