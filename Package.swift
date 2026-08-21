// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.14.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url:
        "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "34a8fc487b42d2922e61822ea1e9f287ffb721593e597c5955a9a48a4f2f8b90"
    )
  ],
  swiftLanguageVersions: [.v5]
)
