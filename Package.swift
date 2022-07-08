// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.12.4"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "26a526a5dbcb4677811f1f3dd74d91e727ddda128ecb757da06cd9aaa25c811a"
    )
  ],
  swiftLanguageVersions: [.v5]
)
