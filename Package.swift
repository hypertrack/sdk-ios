// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.14.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "cbcac62d797d6ce230044418600dfa975f9489aad93a04bf6f8880ed5afe8319"
    )
  ],
  swiftLanguageVersions: [.v5]
)
