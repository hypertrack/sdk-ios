// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.4.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "5b77e2efde9cf6f93ffa6ca38279521b228ff16a38e7d31d39061efb68b5310f"
    )
  ],
  swiftLanguageVersions: [.v5]
)

