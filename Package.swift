// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.10.0-rc.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "d0d1d08ae7f57b2227285b24aa0aa006e4f637d1b6e9608dab5fbbfd35c002de"
    )
  ],
  swiftLanguageVersions: [.v5]
)
