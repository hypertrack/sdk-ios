// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.5.0-rc.10"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "88a71298911e5a50d13cccd29c3677fd7a61fc04d05dd272c046f2e7c1ff4adf"
    )
  ],
  swiftLanguageVersions: [.v5]
)
