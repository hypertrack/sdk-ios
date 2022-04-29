// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.11.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "2641e8a52193a8140f8c137e2be9face335a140afc7957cdfe1ddab91347763d"
    )
  ],
  swiftLanguageVersions: [.v5]
)
