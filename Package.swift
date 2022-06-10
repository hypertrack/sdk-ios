// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.12.2"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "cb090f509335c601dac7b5e02b847278bc7e9a493a167af6ca4fee587b2d922c"
    )
  ],
  swiftLanguageVersions: [.v5]
)
