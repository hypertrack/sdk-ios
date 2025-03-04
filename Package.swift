// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.11.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url:
        "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "e8b299008cb1e25fa490dac10965a9e9913b227801662dc7482c0709d3833a14"
    )
  ],
  swiftLanguageVersions: [.v5]
)
