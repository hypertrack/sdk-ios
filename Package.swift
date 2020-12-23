// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.7.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "34462f98c6b4e69f72b8c10548604f5d494790cfef7a37e160c308601bbaee61"
    )
  ],
  swiftLanguageVersions: [.v5]
)
