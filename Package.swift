// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.12.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "6b7b1dd3b7f7a39153ac4e75eb1a9ea2c8e69169e0c881e54a2b3fcbfe4fcfe0"
    )
  ],
  swiftLanguageVersions: [.v5]
)
