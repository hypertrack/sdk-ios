// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.9.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "c9ee2ff857dc432f4d5ddc79ca7c8f9ea7d6ea788e1352799e0443aa50544d8b"
    )
  ],
  swiftLanguageVersions: [.v5]
)

