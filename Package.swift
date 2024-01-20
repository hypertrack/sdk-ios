// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.3.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "8c9eb583e9aaafb3268b665a08126813834fb98ffc5a563d0c6663b6460a764c"
    )
  ],
  swiftLanguageVersions: [.v5]
)

