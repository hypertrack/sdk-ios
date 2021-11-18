// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.9.0-rc.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "1b1c039928ca6e6457de79d95eb4432cd1c39db74207cf45327e28dea8ef1a0c"
    )
  ],
  swiftLanguageVersions: [.v5]
)
