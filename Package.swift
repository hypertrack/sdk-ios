// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.12.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url:
        "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "d58135e6676b8122b7b3b9ee7bf22d02658f2dc45c96188113da78612819ec26"
    )
  ],
  swiftLanguageVersions: [.v5]
)
