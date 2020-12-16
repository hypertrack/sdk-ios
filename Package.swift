// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.7.0-rc.2"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "ea426458f3a4cae04e39f42e5a34b0cfd1355fb8b3ce6ae346ef9e7ac4a94f00"
    )
  ],
  swiftLanguageVersions: [.v5]
)
