// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.4.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "6f6fe7efaca474c6c4c4cd35ac69ca2e37aaccdd1d7e4fa7c2da1bf8a1be8865"
    )
  ],
  swiftLanguageVersions: [.v5]
)

