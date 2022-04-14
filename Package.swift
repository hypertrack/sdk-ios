// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.10.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "9a773b1be3871200892f2d904245bafa6d02614c37eeeda1b141d11079a3f31d"
    )
  ],
  swiftLanguageVersions: [.v5]
)
