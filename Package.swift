// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.0.6"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "e134980624d122712f20c5d9a3a85c855faa37ed179e45c4b70135c92cb55710"
    )
  ],
  swiftLanguageVersions: [.v5]
)
