// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.11.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "316512d05c45e8f9835f9ef76ba8f1e60e346d154828898c00cfc5f5c38d85e9"
    )
  ],
  swiftLanguageVersions: [.v5]
)

