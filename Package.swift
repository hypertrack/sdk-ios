// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.5.0-rc.3"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "acc0ef1a187ca2293ec7d80d0d8c6a630994f453849d98427a937bb4c3d72779"
    )
  ],
  swiftLanguageVersions: [.v5]
)
