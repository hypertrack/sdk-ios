// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.6.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "2d80058044fd84a870a99cfab6c48ede176168014e9088204792cd59398eaebc"
    )
  ],
  swiftLanguageVersions: [.v5]
)
