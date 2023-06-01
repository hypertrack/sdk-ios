// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.16.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "9a1c1d3ab30a0724c33753c2a29c8d54e3894251b4f4fcdaad31a9a8632ca94c"
    )
  ],
  swiftLanguageVersions: [.v5]
)
