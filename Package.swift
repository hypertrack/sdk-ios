// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.5.0-rc.6"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "78941ea017074065c81670566f1ce2dda8733727d745d121daf4fdca2f3ffe4b"
    )
  ],
  swiftLanguageVersions: [.v5]
)
