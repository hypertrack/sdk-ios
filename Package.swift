// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.9.1-rc.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "6933713799e47300276b78a461c9a9a87a4d381c7656c4200d1f48801be44285"
    )
  ],
  swiftLanguageVersions: [.v5]
)
