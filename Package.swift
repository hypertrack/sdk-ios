// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.6.0-rc.2"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "ae05ee6bd83fcc737c4a603b0cba4fa85ce48ea70db92a880aaa3f88fe46fadb"
    )
  ],
  swiftLanguageVersions: [.v5]
)
