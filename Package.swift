// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.4.0-alpha.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "39368c39c23e4b0d5cec1df44f6d8e8d7bbaf66319a7484203813b955f2dff82"
    )
  ],
  swiftLanguageVersions: [.v5]
)

