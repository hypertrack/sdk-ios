// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.11.3"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url:
        "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "9be38fee4a8200cfecf305f228ec682c904fd6de7ef49625ecc4fccef24b234b"
    )
  ],
  swiftLanguageVersions: [.v5]
)
