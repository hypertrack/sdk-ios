// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.9.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "fe970265f582207e960ba19bbe96ab60b12f5bdacdd5142449aa5f4d4cd4545b"
    )
  ],
  swiftLanguageVersions: [.v5]
)
