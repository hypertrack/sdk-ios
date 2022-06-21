// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "5.0.0-alpha.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "7ef74aea0bfeb753083a7fa8dbf7bd0e5fcb3352a05a3857171db4a534b640e4"
    )
  ],
  swiftLanguageVersions: [.v5]
)
