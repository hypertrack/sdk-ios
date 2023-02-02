// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.14.0-rc.3"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "17cdcffcba4e0b5fd50f3c2520e9496217cbc5bc2f3c14e8c390ea4a3808995a"
    )
  ],
  swiftLanguageVersions: [.v5]
)
