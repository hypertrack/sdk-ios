// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.5.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "34500419e2e095d34f102ce052c3e066a8e920c031aa8cde7b4684f69f8a3971"
    )
  ],
  swiftLanguageVersions: [.v5]
)
