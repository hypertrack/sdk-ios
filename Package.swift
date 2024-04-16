// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.5.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "327c2ef90e160d5137ab4a274346fd09448df8b6dd8ab90e970c58b4c3b707d6"
    )
  ],
  swiftLanguageVersions: [.v5]
)

