// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.5.0-rc.9"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "72be195dfcb03aa6fc42f5fe0430d3cac6d5cad8a96e50a09a70fd8df2436bc4"
    )
  ],
  swiftLanguageVersions: [.v5]
)
