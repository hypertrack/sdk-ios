// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.8.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "81b8aa8a91574464553c3d39334e44bd3985f5bf90c66effb99c4b24e5b620fc"
    )
  ],
  swiftLanguageVersions: [.v5]
)
