// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.0.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "797716683add9b759237c42294f4287117251418ac20bce0c840fac3ea3ca96f"
    )
  ],
  swiftLanguageVersions: [.v5]
)
