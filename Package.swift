// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.13.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "061831ade55a5435c56475270e68fc8c29a38bf174a3c21b0ca95fb3bd7d01fe"
    )
  ],
  swiftLanguageVersions: [.v5]
)
