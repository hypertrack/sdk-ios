// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.12.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url:
        "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "225d6736c608c583be07ba0025862b56b9d5ce4b0d766b4c9692fdab09229922"
    )
  ],
  swiftLanguageVersions: [.v5]
)
