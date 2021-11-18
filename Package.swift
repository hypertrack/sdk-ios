// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.9.0-devpoc"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "3c8d922a087f7d2a36db626a250480b9b2555f0e540104cfc6e4af2f19b42741"
    )
  ],
  swiftLanguageVersions: [.v5]
)
