// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.15.0-rc.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "cde215b2634761655fb7d70bdf13e9ddc7fcc37472f0cc7b787431e304527543"
    )
  ],
  swiftLanguageVersions: [.v5]
)
