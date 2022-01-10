// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.9.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "9a72c4b24e49f4d627df9fb6eab818eefcde59e47c3636bed5c9497c26f7b4a0"
    )
  ],
  swiftLanguageVersions: [.v5]
)
