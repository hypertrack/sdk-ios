// swift-tools-version:5.3

import PackageDescription

let name = "HyperTrack"
let version = "4.12.3-rc.1"

let package = Package(
  name: name,
  platforms: [.iOS(.v11)],
  products: [.library(name: name, targets: [name])],
  targets: [
    .binaryTarget(
      name: name,
      url: "https://github.com/hypertrack/sdk-ios/releases/download/\(version)/\(name).xcframework.zip",
      checksum: "3062d4af4b935dbb142bf9140e397bd6f11106adb9254c47505408cef043e996"
    )
  ],
  swiftLanguageVersions: [.v5]
)
