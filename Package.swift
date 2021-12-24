// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.9.0-rc.4"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "8e3b01ffeac1d4804e4e97eab32d6aa6c8e9ad4ed198f6f2fbcfc2ab1f611f1e"
    )
  ],
  swiftLanguageVersions: [.v5]
)
