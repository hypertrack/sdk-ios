// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.0.4"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "a25229f1a68a455fbd3b749becc6201282cdb3feb4b786062c7becf3d8e04f37"
    )
  ],
  swiftLanguageVersions: [.v5]
)
