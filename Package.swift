// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.0.7"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "982d77933722c90031a6e09a93820011ff289ec334cb352cffa05296e9ef8d90"
    )
  ],
  swiftLanguageVersions: [.v5]
)
