// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.6.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "6877a2e963f3e80b05280799c3453766a1470775cd1c7c61ec04bfd57b4ddd3f"
    )
  ],
  swiftLanguageVersions: [.v5]
)

