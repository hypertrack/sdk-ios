// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.10.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "c07f84c1e5d3f1aee344f32df92cd56d0dd9a67ca48791c38d0d9780b10f3bd6"
    )
  ],
  swiftLanguageVersions: [.v5]
)
