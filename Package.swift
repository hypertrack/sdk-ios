// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.5.0-rc.4"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "e4fa3173f7621462612e0babeb8fc59bf621078fd083b95f81343ed1d1f33e84"
    )
  ],
  swiftLanguageVersions: [.v5]
)
