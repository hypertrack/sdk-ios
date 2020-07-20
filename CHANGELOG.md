# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [4.2.2] - 2020-07-20
### Fixed
- Fixed battery state not updating immediately

## [4.2.1] - 2020-07-13
### Fixed
- Makes the new `automaticallyRequestPermissions` initialization property backwards compatible in Objective-C

## [4.2.0] - 2020-07-10
### Added
- Initializers now have a new property `automaticallyRequestPermissions` that can be used to disable automatic permissions dialogs
- Improved energy efficiency and location frequency on stops

## [4.1.0] - 2020-07-09
### Added
- If anything blocks the SDK from tracking, this reason is reported and can be seen in the dashboard. Reasons include denied permissions, disabled services, loss of GPS signal, app terminations by OS or user and more
- Asks for permissions automatically if the host app did not ask them.  This includes some tricky situations when permissions are reset globally from settings or were asked when the app was in the background
- Automatically recovers from tracking blockers and continues tracking. Tracking rate is greatly improved
- Adaptively changes the frequency of location events based on current motion activity and distance traveled. Results in smooth tracking data without gaps
- Device name and metadata changes now reflect immediately in APIs and dashboard
- Geotags are now sent without any delay
- Improved energy consumption

### Deprecated
- `addTripMarker` was renamed to `addGeotag`

### Fixed
- Fixed incorrect steps data reported when SDK was tracking for more than 24 hours

## [4.0.1] - 2019-12-21
### Fixed
- Fixed an issue of SDK stopping tracking when a new trip creation interrupted background tracking.

## [4.0.0] - 2019-12-12
### Added
- Support for iOS 9 and Xcode 10.1
- `syncDeviceSettings()` method forces the SDK to check if it needs to track. Helpful when silent push notifications fail, which can happen on fresh installs. Call it whenever app is in foreground and when your app expects tracking to start or stop.

### Changed
- SDK has a new interface with strong typing.

## [3.7.4] - 2019-10-17
### Fixed
- Fix for the usage of different versioning strategies between Xcode 10 and 11

## [3.7.3] - 2019-10-17
### Fixed
- [3.7.1] and [3.7.2] were compiled with iOS 13 SDK, that can cause conflicts on older Xcode versions. This is fixed and should work on Xcode 10.2 till 11.1+

## [3.7.2] - 2019-10-10
### Fixed
- Fixed a crash when multiple HyperTrack SDK interface calls done sequentially could lead to access of the variable on the wrong thread.

## [3.7.1] - 2019-09-18
### Changed
- Updated GRDB dependency to 4.4.0. This allows our SDK to work around React Native bug in 0.60+

## [3.7.0] - 2019-09-02
### Added
- SDK informs HyperTrack platform about tracking outages that happened when SDK was offline (permissions change)

### Fixed
- Multiple push notifications received in the background now can't lead to app being suspended (because of tracking being restarted)

## [3.6.0] - 2019-08-30
### Added
- When SDK starts tracking it sends the last known activity event. This can help visually understand in what state the device is currently in immediately after tracking has started.
- Added more debug logging

### Changed
- Improved location filtering. This increases the number of location events during unknown activities. Should improve overall tracking polyline.

## [3.5.0] - 2019-08-23
### Added
- SDK now restarts tracking if it was tracking before the app restart
- Ignores all repeated commands (startTracking, stopTracking, name, metadata etc.) if new state is the same as the old one
- SDK sends silent push notification acknowledgments to backend. This results in more stable Trips experience
- Added error messages when static SDK methods are used before publishable key was set
- Increased robustness across all usage scenarios and states

## [3.4.0] - 2019-08-14
### Changed
- SDK sports new interface that should be easier to use, more functional

### Deprecated
- Old interface is still there, but it's deprecated for now

### Fixed
- Fixed an issue where activity permissions were asked manually by the host app, but didn't propagate to the SDK

## [3.3.6] - 2019-07-31
### Changed
- SDK now consumes less network data


[4.2.2]: https://github.com/hypertrack/sdk-ios/releases/tag/4.2.2
[4.2.1]: https://github.com/hypertrack/sdk-ios/releases/tag/4.2.1
[4.2.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.2.0
[4.1.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.1.0
[4.0.1]: https://github.com/hypertrack/sdk-ios/releases/tag/4.0.1
[4.0.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.0.0
[3.7.4]: https://github.com/hypertrack/sdk-ios/releases/tag/3.7.4
[3.7.3]: https://github.com/hypertrack/sdk-ios/releases/tag/3.7.3
[3.7.3]: https://github.com/hypertrack/sdk-ios/releases/tag/3.7.3
[3.7.2]: https://github.com/hypertrack/sdk-ios/releases/tag/3.7.2
[3.7.1]: https://github.com/hypertrack/sdk-ios/releases/tag/3.7.1
[3.7.0]: https://github.com/hypertrack/sdk-ios/releases/tag/3.7.0
[3.6.0]: https://github.com/hypertrack/sdk-ios/releases/tag/3.6.0
[3.5.0]: https://github.com/hypertrack/sdk-ios/releases/tag/3.5.0
[3.4.0]: https://github.com/hypertrack/sdk-ios/releases/tag/3.4.0
[3.3.6]: https://github.com/hypertrack/sdk-ios/releases/tag/3.3.6
