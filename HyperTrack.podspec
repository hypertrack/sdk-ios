Pod::Spec.new do |spec|

  # Root specification
  spec.name                     = "HyperTrack"
  spec.version                  = "4.14.0-rc.3"
  spec.summary                  = "A Movement tracking SDK for iOS"
  spec.description              = "HyperTrack is a Movement tracking SDK"
  spec.license                  = { :type => "Copyright", :text => "Copyright (c) 2023 HyperTrack, Inc. (https://www.hypertrack.com)" }
  spec.homepage                 = "https://hypertrack.com"
  spec.author                   = "HyperTrack Inc."
  spec.source                   = { :http => "https://github.com/hypertrack/sdk-ios/releases/download/#{spec.version}/cocoapods.zip" }
  spec.swift_version            = "5.1"
  spec.cocoapods_version        = '>= 1.10.0'

  # Platform
  spec.platform                 = :ios
  spec.ios.deployment_target    = "11.0"
  spec.default_subspec          = "Swift"

  spec.subspec "Swift" do |subspec|
    subspec.ios.vendored_frameworks  = 'swift/HyperTrack.xcframework'
  end

  spec.subspec "Objective-C" do |subspec|
    subspec.ios.vendored_frameworks  = 'objc/HyperTrack.xcframework'
  end

end
