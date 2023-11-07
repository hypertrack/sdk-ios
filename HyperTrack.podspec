Pod::Spec.new do |spec|

  # Root specification
  spec.name                     = "HyperTrack"
  spec.version                  = "5.0.5"
  spec.summary                  = "A Movement tracking SDK for iOS"
  spec.description              = "HyperTrack is a Movement tracking SDK"
  spec.license                  = { :type => "Copyright", :text => "Copyright (c) 2023 HyperTrack, Inc. (https://www.hypertrack.com)" }
  spec.homepage                 = "https://hypertrack.com"
  spec.author                   = "HyperTrack Inc."
  spec.source                   = { :http => "https://github.com/hypertrack/sdk-ios/releases/download/#{spec.version}/HyperTrack.xcframework.zip" }
  spec.swift_version            = "5.1"
  spec.cocoapods_version        = '>= 1.10.0'

  # Platform
  spec.platform                 = :ios
  spec.ios.deployment_target    = "12.0"

  # Framework
  spec.ios.vendored_frameworks  = 'HyperTrack.xcframework'

end
