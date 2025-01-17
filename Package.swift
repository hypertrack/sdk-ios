// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.10.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "6f6271177ff2fd9d34e14d1a574bc1e288e2a8f3f4e023e7d381e9742b3aad0d"
    )
  ],
  swiftLanguageVersions: [.v5]
)

