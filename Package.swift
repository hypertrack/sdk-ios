// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.0.5"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "fea30644bd7d9d0015c1ee3ad4a92bded546cc6edeadbf904ab5bc620c05733a"
    )
  ],
  swiftLanguageVersions: [.v5]
)
