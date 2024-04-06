// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.5.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "2deda180de0368b66a55f47bb83884e6097e7028745fc0b4ab0c68271f484b88"
    )
  ],
  swiftLanguageVersions: [.v5]
)

