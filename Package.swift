// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.5.2"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "806e554198e715368062f6a90283ab68fdd2e064efe379092a6ae77790b1a083"
    )
  ],
  swiftLanguageVersions: [.v5]
)

