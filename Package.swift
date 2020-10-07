// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.5.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "5ddbb3100164e2f4d5915ad0cffbb0c0b4dd9979e3b28ee2ab406efbe0007355"
    )
  ],
  swiftLanguageVersions: [.v5]
)
