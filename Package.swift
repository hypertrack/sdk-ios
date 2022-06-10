// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.12.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "aa74f5544a9d2fc984da6840582a5c2be3a4c1e3e5a67234d3d1832a464890a7"
    )
  ],
  swiftLanguageVersions: [.v5]
)
