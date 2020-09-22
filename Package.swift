// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.5.0-rc.2"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "94b1a5ae457bda0e909cb906e628a593c69fd0a50fca51029a60972a0ae0dc30"
    )
  ],
  swiftLanguageVersions: [.v5]
)
