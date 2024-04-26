// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.5.3"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "14325219b54f7192d1137e5628aff4db3548da4b94edd5517b3654975d225029"
    )
  ],
  swiftLanguageVersions: [.v5]
)

