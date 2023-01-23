// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.14.0-rc.2"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "f5f874c75e453123d6aa38673ea5b2a7e1be617432d3c7de27232548d667a0a2"
    )
  ],
  swiftLanguageVersions: [.v5]
)
