# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [4.12.0] - 2022-06-09
### Added
- SDK now reports simulated locations as an outage
- Developers can simulate locations in development using the new `mockLocationsAllowed` property.

### Changed
- Logs are disabled by default now. Can be enabled using the new `isLoggingEnabled` type property.

## [4.11.1] - 2022-04-29
### Fixed
- Fixed Objective-C interface not having an error case for location getter.

## [4.11.0] - 2022-04-29
### Added
- Current location getter allows to synchronously get the current location of the user or a reason for why it's not available.

## [4.10.1] - 2022-04-14
### Fixed
- The default tracking config is in line with the cloud config. This fixes the device appearing disconnected in dashboard when GPS signal is low.

## [4.10.0] - 2022-04-11
### Added
- New availability API allows the user to mark the device as available for Nearby API.

## [4.9.1] - 2022-01-10
### Fixed
- The SDK now builds on Xcode 12

## [4.9.0] - 2022-01-05
### Added
- Battery instrumentation support. You can see the current battery level in our REST APIs.
### Fixed
- Automatic sync is now active even after integrating the SDK without push notifications. Please be advised, push notification integration is mandatory for SDK operation.
- Start tracking notification is now being called correctly when the app restarts after being killed while tracking. This should also fix any other cases where start/stop tracking notifications are missed or called multiple times in a row.

## [4.8.0] - 2021-04-22
### Added
- SDK gets an additional fresh location fix every time the user brings the app to the foreground, improving geotag accuracy and trip destination triggers.
### Changed
- SDK no longer tries to wake up the app in the background to check if it should start tracking. As a result, the iOS dialog "... has used your location _ times in background over the past 3 days..." will appear only when the SDK was explicitly tracking.

## [4.7.0] - 2020-12-23
### Changed
- Improved health event generation.
- Events that are stored in the SDK database and are older than 24 hours will be deleted automatically.
### Fixed
- Fixed issue with runtime error notifications.

## [4.6.0] - 2020-11-09
### Added
- Tracking intent sync with the platform to improve tracking control.
### Changed
- Geotags can be sent regardless of tracking status.
- Changed reachability implementation.

## [4.5.1] - 2020-10-07
### Fixed
- Fix for Xcode 11 integration, replaced Swift 5.2 feature to another one compatible with Swift 5.1

## [4.5.0] - 2020-09-24
### Added
- iOS 14 support. If the user denies precise location access, an outage appears on the dashboard and is available through APIs.
- Swift Package Manager support. Available on Xcode 12 and up. Use this URL `https://github.com/hypertrack/sdk-ios` when adding a package dependency.

### Removed
- GRDB dependency. Now SDK has no external dependencies.

## [4.4.0] - 2020-09-09
### Added
- SDK automatically syncs up with the cloud. Improves tracking rates when silent push notifications fail or are disabled by the user.
- Reduced battery consumption.
- Reduced mobile data usage.
- Configurability for automatic sync and tracking frequency. Configuration is server side, contact our support if you need non-standard tracking frequency.
- Improved first location accuracy (important for trips, client side UX and distance calculations).
- Support for the latest iPad model names in dashboard.

### Deprecated
- Motion denied error upon SDK initialization. If motion permissions were denied before first SDK initialization, SDK will still give you an instance with deviceID and will report lack of motion permissions in dashboard and APIs/web-hooks.

### Fixed
- SDK now correctly reports when tracking was interrupted due to device shutdown because of low battery.

## [4.3.0] - 2020-08-13
### Added
- iPad support for all "WiFi + Cellular" iPad models from this [list](https://en.wikipedia.org/wiki/Apple_motion_coprocessors#Products) (iPad column) .

### Fixed
- Reduced network data usage.
- Added workaround for iOS 13.3+ bug that causes the app to only receive low accuracy locations.
- Improved app restart detection, by adding OS updates and app updates.

## [4.2.3] - 2020-07-28
### Fixed
- Improved internal SDK to cloud API efficiency. Results in less number of requests and battery drain.

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


[4.12.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.12.0
[4.11.1]: https://github.com/hypertrack/sdk-ios/releases/tag/4.11.1
[4.11.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.11.0
[4.10.1]: https://github.com/hypertrack/sdk-ios/releases/tag/4.10.1
[4.10.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.10.0
[4.9.1]: https://github.com/hypertrack/sdk-ios/releases/tag/4.9.1
[4.9.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.9.0
[4.8.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.8.0
[4.7.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.7.0
[4.6.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.6.0
[4.5.1]: https://github.com/hypertrack/sdk-ios/releases/tag/4.5.1
[4.5.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.5.0
[4.4.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.4.0
[4.3.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.3.0
[4.2.3]: https://github.com/hypertrack/sdk-ios/releases/tag/4.2.3
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
