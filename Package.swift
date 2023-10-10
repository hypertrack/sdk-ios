// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.0.3"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "dd5461566dc56fe8ae9afaeb2b0c20642a3c855f3aec4bf29638895a684227e6"
    )
  ],
  swiftLanguageVersions: [.v5]
)
