// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.16.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "cff7cb815b9efd2b144c255ecf916dbfbea50f5b38e41a37f4c0ddf4798778bf"
    )
  ],
  swiftLanguageVersions: [.v5]
)
