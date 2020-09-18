Pod::Spec.new do |spec|

  # Root specification
  spec.name                     = "HyperTrack"
  spec.version                  = "4.5.0-rc.1"
  spec.summary                  = "A Movement tracking SDK for iOS"
  spec.description              = "HyperTrack is a Movement tracking SDK"
  spec.license                  = { :type => "Copyright", :text => "Copyright (c) 2018 HyperTrack, Inc. (https://www.hypertrack.com)" }
  spec.homepage                 = "https://hypertrack.com"
  spec.author                   = "HyperTrack Inc."
  spec.source                   = { :http => "https://github.com/hypertrack/sdk-ios/releases/download/#{spec.version}/#{spec.name}.zip" }
  spec.swift_version            = "5.1"

  # Platform
  spec.platform                 = :ios
  spec.ios.deployment_target    = "11.0"

  spec.subspec "Swift" do |subspec|
    subspec.source_files        = "*"
    subspec.exclude_files       = "HTSDK.swift"
  end

  spec.subspec "Objective-C" do |subspec|
    subspec.dependency            "HyperTrack/Swift"
    subspec.source_files        = "HTSDK.swift"
  end

  spec.default_subspec          = "Swift"

end
