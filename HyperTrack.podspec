Pod::Spec.new do |spec|

  # Root specification
  spec.name                     = "HyperTrack"
  spec.version                  = "3.6.0"
  spec.summary                  = "A Movement tracking SDK for iOS"
  spec.description              = "HyperTrack is a Movement tracking SDK"
  spec.license                  = { :type => 'Copyright', :text => 'Copyright (c) 2018 HyperTrack, Inc. (https://www.hypertrack.com)' }
  spec.homepage                 = "https://hypertrack.com"
  spec.author                   = "HyperTrack Inc."
  spec.source                   = { :http => "https://github.com/hypertrack/sdk-ios/releases/download/#{spec.version}/#{spec.name}.framework.zip" }
  spec.swift_version            = "4.2"
  spec.cocoapods_version        = '>= 1.6.0'

  # Platform
  spec.platform                 = :ios
  spec.ios.deployment_target    = '11.0'
  spec.ios.vendored_frameworks  = 'HyperTrack.framework'

  # Build settings
  spec.dependency                 'GRDB.swift', '3.6.2'

end
