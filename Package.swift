// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.1.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "6bd3fb2961b7f87cc5747433099809543a8633f1a9f2194ef40a393bedc2656c"
    )
  ],
  swiftLanguageVersions: [.v5]
)

