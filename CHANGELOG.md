# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [5.3.0] - 2024-01-20
### Added
- Reports drivers who change the time on the phone. Changing time doesn't affect the data.

### Fixed
- Prevents data corruption by forcing OS to write the data to disk on every write.

## [5.2.0] - 2024-01-16
### Added
- Uses NTP servers to synchronize time independantly from the OS. Avoids sending data with wrong time information for users who override phone's settings with incorrect values.

### Fixed
- Optimized querying the Location Manager to reduce impact on battery life and main thread performance.
- Mitigates SDK cache file corruption that led to some Android devices loading to device_id values with all zeroes.
- Reduced network traffic.

## [5.1.0] - 2023-12-29
### Added
- New dynamicPublishableKey API allows to set the publishable key later in the app lifecycle. Should only be used when there is no other way around it and it's impossible to know the publishable key in advance. Please contact us if this matches your use case.

### Fixed
- Improved the speed of tracking intent synchronization.

## [5.0.8] - 2023-12-06
### Fixed
- Fixed cancelling a subscription multiple times hanging a thread. Including cancelling and assigning to nil after.

## [5.0.7] - 2023-11-20
### Fixed
- Fixed a crash that happened randomly when reconnecting to a web socket.

## [5.0.6] - 2023-11-10
### Fixed
- This version of the SDK now automatically migrates device_id, name and metadata from versions before 5. After the user updates the app, those values stay the same, no additional steps required.

## [5.0.5] - 2023-11-07
### Fixed
- Fixed the SDK not sending device information when push notifications capability is not set in Xcode. 
- Reduced a chance of generating a null (all zeroes) device_id.

## [5.0.4] - 2023-10-12
### Fixed
- Fixed location indicator displaying when not tracking.

## [5.0.3] - 2023-10-10
### Fixed
- Fixed sending more network packets than needed when locate() API is used.

## [5.0.2] - 2023-09-26
### Fixed
- Fixed `addGeotag()` and `location` returning Errors when there is no intent to track.
- Fixed rare cases when starting tracking remotely when the app is not running resulted in the SDK not updating locations until the user opens the app.

## [5.0.1] - 2023-09-13
### Fixed
- Resolved an issue that could lead to data corruption if the app crashed during a write operation.
- Ensured that absence of disk storage does not hinder caching of location data when available.
- Enhanced resilience during outages, especially when the OS suspends the app.
- Optimized app longevity after receiving a push notification while it's not in the foreground.

## [5.0.0] - 2023-09-01
We are excited to announce the release of HyperTrack iOS SDK 5.0.0, a major update to our location tracking SDK. This release ensures highest tracking performance, reduces deployed app sizes and comes with an improved API to simplify the integrations.  We highly recommend upgrading, but please note this is a breaking change from the previous major version.

### Changed
- **WARNING** ⚠️: The device ID will be changed after the update to this version.
- The SDK API was fully redesigned to be more ergonomic and to require less code to use.
- All the API methods can be accessible at any time from any place in the app by calling them on the static HyperTrack class.
- No need to initialize the SDK by setting publishable key. Now set the key in `Info.plist` as `HyperTrackPublishableKey`. 
- `HyperTrackError` enum is renamed to `HyperTrack.Error` and now has nested structure.
- `availability` renamed to `isAvailable`
- `subscribeToAvailability` renamed to `subscribeToIsAvailable`
- Minimum deployment target was increased to iOS 12.

### Added
- New `locate()` API. Allows to get a one-time location and sends it to the cloud even when the device is not tracking or available.
- The SDK is always in sync with our cloud (if internet connection is present), there is no need to call `syncDeviceSettings()` anymore.
- `name` variable to set the user name associated with the device.
- The SDK now works in Simulator.

### Removed
- `HyperTrack.init()`, `HyperTrack.makeSDK()` (you can use `Info.plist` params to configure the SDK instead)
  - `automaticallyRequestPermissions` init param is always false now (use `subscribeToErrors` to trigger permission requests)
  - `mockLocationsAllowed` init param is always true now (but the device will send `Location.Mocked` error)
- `start()`, `stop()` (use `isTracking` variable setter instead)
- `setDeviceMetadata()` (use `metadata` variable setter instead)
- `setDeviceName()` (use `name` variable setter instead)
- `HyperTrackError` types:
  - `motionActivityPermissionsDenied`
  - `motionActivityServicesDisabled`
  - `motionActivityServicesUnavailable`
  - `motionActivityPermissionsRestricted`
- `syncDeviceSettings()`
- `mockLocationsAllowed`
- `isLoggingEnabled` 
- `isRunning`
- `addGeotag(Metadata)` (use `addGeotag(JSON.Object)` instead)
- `addTripMarker()` (use `addGeotag()` instead)
- `HyperTrack.startedTrackingNotification`, `HyperTrack.stoppedTrackingNotification` (use `subscribeToIsTracking` instead)
- `HyperTrack.becameAvailableNotification`, `HyperTrack.becameUnavailableNotification` (use `subscribeToIsAvailable` instead)
- `HyperTrack.didEncounterRestorableErrorNotification`, `HyperTrack.didEncounterUnrestorableErrorNotification` (use `subscribeToErrors` instead)
- Activity permissions are no longer required.
- Objective-C API.

## [4.16.1] - 2023-06-16
### Fixed
- Stops significant location updates started by previous (pre 4.16.0) versions. This makes sure that the issue discovered in 4.16.0 is fixed even if the user kills the app while the SDK was tracking and updates to a 4.16.x.

## [4.16.0] - 2023-06-01
### Fixed
- Fixed location not being collected in background on iOS 16.4 and upwards. Removed significant location change monitoring to comply with new requirements (https://developer.apple.com/forums/thread/726945?answerId=749230022#749230022).

### Changed
- Changed automatic permission request from Always to When In Use to avoid Provisional Always Authorization (https://hypertrack.com/blog/2020/06/24/impact-of-ios13-ios14-location-permissions-on-background-location-access/).

## [4.15.0] - 2023-05-19
### Added
- New geotag with expected location API. When you know where the driver is supposed to make an action, attach a location to a geotag. This will calculate the deviation between the real position where it happened and the expected position. This information will also be available on dashboards and APIs.

### Changed
- Geotag API now captures the precise position of the driver at the moment the geotag API was triggered.

## [4.14.0] - 2023-02-16
### Added
- Automatic silent push notification integration using Swizzling. You no longer need to connect the methods manually in AppDelegate. At the same time there is no need to change anything in existing integrations.
- New errors API that allow you to check if there is anything that can prevent the SDK from tracking at any point in time. This API returns all the errors that are currently affecting tracking, so you won't be able to miss any of them, like with the previous Notifications based APIs. This API can be invoked at any point in time, not just during tracking.
- New subscription APIs, that allow you to subscribe to errors, isTracking, and availability. The current value will be delivered right after subscribing and all subsequent changes will be delivered as they happen.
- New metadata API that allows you to set and get the current metadata for the driver in a type-safe JSON form. The JSON form supports all the convenient Representable family of Swift protocols that allows you to use the API as if specifying a native Dictinary value.

## [4.13.0] - 2022-09-23
### Changed
- If the user simulates locations when it's prohibited, the SDK still passes real locations through if there are any.

## [4.12.4] - 2022-07-08
### Fixed
- Setting availability now immediately reflects in availability getter

## [4.12.3] - 2022-06-13
### Fixed
- Notifications sending only when tracking and availability values change.

## [4.12.2] - 2022-06-10
### Fixed
- A race where the tracking and availability notifications were sent before they observable variables were changed.

## [4.12.1] - 2022-06-10
### Fixed
- Regression in posting tracking notifications

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


[5.3.0]: https://github.com/hypertrack/sdk-ios/releases/tag/5.3.0
[5.2.0]: https://github.com/hypertrack/sdk-ios/releases/tag/5.2.0
[5.1.0]: https://github.com/hypertrack/sdk-ios/releases/tag/5.1.0
[5.0.8]: https://github.com/hypertrack/sdk-ios/releases/tag/5.0.8
[5.0.7]: https://github.com/hypertrack/sdk-ios/releases/tag/5.0.7
[5.0.6]: https://github.com/hypertrack/sdk-ios/releases/tag/5.0.6
[5.0.5]: https://github.com/hypertrack/sdk-ios/releases/tag/5.0.5
[5.0.4]: https://github.com/hypertrack/sdk-ios/releases/tag/5.0.4
[5.0.3]: https://github.com/hypertrack/sdk-ios/releases/tag/5.0.3
[5.0.2]: https://github.com/hypertrack/sdk-ios/releases/tag/5.0.2
[5.0.1]: https://github.com/hypertrack/sdk-ios/releases/tag/5.0.1
[5.0.0]: https://github.com/hypertrack/sdk-ios/releases/tag/5.0.0
[4.16.1]: https://github.com/hypertrack/sdk-ios/releases/tag/4.16.1
[4.16.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.16.0
[4.15.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.15.0
[4.14.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.14.0
[4.13.0]: https://github.com/hypertrack/sdk-ios/releases/tag/4.13.0
[4.12.4]: https://github.com/hypertrack/sdk-ios/releases/tag/4.12.4
[4.12.3]: https://github.com/hypertrack/sdk-ios/releases/tag/4.12.3
[4.12.2]: https://github.com/hypertrack/sdk-ios/releases/tag/4.12.2
[4.12.1]: https://github.com/hypertrack/sdk-ios/releases/tag/4.12.1
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
