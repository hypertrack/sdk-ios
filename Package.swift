// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.15.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url:
        "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "9507b8a51ce96be1e43fd22a41fa3122938a55d570af8a3a7f304c7523d81bb4"
    )
  ],
  swiftLanguageVersions: [.v5]
)
