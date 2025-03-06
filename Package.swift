// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.11.2"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url:
        "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "f3d17329e88280ba440472453ce6b5cfd4a40c4952080c4f4c5929abd2486dca"
    )
  ],
  swiftLanguageVersions: [.v5]
)
