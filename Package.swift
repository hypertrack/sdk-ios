// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.7.0-rc.3"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "2f04f18740e7e9b8d995cae5e5ca3cf20445b3ccc8c6acdf8b4f0c30346cb169"
    )
  ],
  swiftLanguageVersions: [.v5]
)
