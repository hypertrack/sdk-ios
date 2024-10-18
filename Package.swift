// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.8.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "1de500aba0c766184c79dc1e0685fe9ac06859e5d9c8c4e00b3d3b829c2e7dff"
    )
  ],
  swiftLanguageVersions: [.v5]
)

