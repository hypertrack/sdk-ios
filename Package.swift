// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.11.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "067ba1487cfd48e119e2e7f7b118cfa5e15acc7f9b5cb8347709e4a9ddaa29d0"
    )
  ],
  swiftLanguageVersions: [.v5]
)
