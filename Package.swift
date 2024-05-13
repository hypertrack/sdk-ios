// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.5.4"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "f064b696306168ac5ec8be5e25df0fc7352aefe565b62e94015d3c745ae37b89"
    )
  ],
  swiftLanguageVersions: [.v5]
)

