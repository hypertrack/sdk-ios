// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.7.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "803979d6d4faf364e253e3ef51c5b251c49ac74aeae121753f2c0a90df23f404"
    )
  ],
  swiftLanguageVersions: [.v5]
)

