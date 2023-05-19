// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.15.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "3d118ea4ec145bd5b92550fd5bf5fa383a71af21a400fcebeb7a6eb959b4fd39"
    )
  ],
  swiftLanguageVersions: [.v5]
)
