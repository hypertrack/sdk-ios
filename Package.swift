// swift-tools-version: 5.7

import PackageDescription

let name = "HyperTrack"
let version = "5.8.0"

let package = Package(
  name: name,
  platforms: [.iOS(.v12)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "1d0173deb7a413bb93aedfe82e464af6bcfe30b9b8a2a89709a55dec10e08938"
    )
  ],
  swiftLanguageVersions: [.v5]
)

