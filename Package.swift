// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.9.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "90c6a81d17010baee39b948a2be4d5a5f069c8e981cd3f6fa668e8bd4f49a133"
    )
  ],
  swiftLanguageVersions: [.v5]
)

