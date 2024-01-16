// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.2.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "3b51e3a2d0d9c9a6290614cc8642dd0ca473c275e04d319c31d24f87ca2011e7"
    )
  ],
  swiftLanguageVersions: [.v5]
)

