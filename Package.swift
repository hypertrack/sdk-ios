// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.13.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url:
        "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "55f31bf60e5cdad64aa5c234bd0082339d17c190486e1e9f8444bdba29bfbfc4"
    )
  ],
  swiftLanguageVersions: [.v5]
)
