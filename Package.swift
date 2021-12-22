// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.9.0-rc.2"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "1bfe70e9fdc2b2c7f6f0fa1757f939bc18a74d0b0fcbfb4e18238fff057e3e41"
    )
  ],
  swiftLanguageVersions: [.v5]
)
