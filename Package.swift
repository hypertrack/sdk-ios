// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.8.0-rc.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "175e50ff3165c19514eaf73cb58752cb3c89af37a1235ae286d8869694a8ceba"
    )
  ],
  swiftLanguageVersions: [.v5]
)
