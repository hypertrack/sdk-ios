// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.6.0-rc.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "6d8bff30c0b8e45f98221050e4bf6782661a1876e8e9b8ac53e04de88224c244"
    )
  ],
  swiftLanguageVersions: [.v5]
)
