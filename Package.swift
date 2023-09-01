// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.0.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "3155bc0a8af3daa6eea1c0befc3ca23067b47cb05b56998d873e1ce209f67b90"
    )
  ],
  swiftLanguageVersions: [.v5]
)
