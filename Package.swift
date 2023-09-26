// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.0.2"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "6d4813992266907e9a0f9a08a6a4590ac84fe47503123f92fdaaf035bcacdf07"
    )
  ],
  swiftLanguageVersions: [.v5]
)
