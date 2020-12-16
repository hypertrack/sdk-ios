// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.7.0-rc.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "2dcf95b86425d3f8828fa1e8ea29c24a8fe2b1bf2e47caa0b0c2ee9eb4483e3a"
    )
  ],
  swiftLanguageVersions: [.v5]
)
