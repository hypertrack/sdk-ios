// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.14.0-rc.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "0acf400d13c1380494c32f6cd90afea92be132887c10a04a64de2f97e0aa0c3b"
    )
  ],
  swiftLanguageVersions: [.v5]
)
