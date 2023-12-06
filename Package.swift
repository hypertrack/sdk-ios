// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.0.8"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "f4a9b9ee785332780ee3425a9797d26ff18d9dad745eb428cde4a2e699f1ddc4"
    )
  ],
  swiftLanguageVersions: [.v5]
)

