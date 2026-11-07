# Carrier Hider 1.0.0

Carrier Hider 1.0.0 is the first public release of the status-bar carrier-name
tweak for iOS 18.

## Highlights

- Hides the carrier name in the SpringBoard system status bar.
- Keeps signal bars, network type, Wi-Fi, battery, time, badges, and SOS
  indicators.
- Targets both primary and secondary cellular entries.
- No preference pane or configuration.
- Rootless and RootHide packages.

## Compatibility

| Build | Architecture | Compatibility |
|---|---|---|
| RootHide | `iphoneos-arm64e` | Tested on iOS 18.4.1 (Dopamine 3, RootHide) |
| Rootless | `iphoneos-arm64` | Expected to work on iOS 18+ rootless jailbreaks |

Tested on iOS 18.4.1 (Dopamine 3, RootHide) on iPhone 11 Pro Max. The tweak
requires iOS 18.0 or later. The rootless build is expected to work on iOS 18+
rootless jailbreaks.

## Scope

Carrier Hider targets the SpringBoard system status bar: Home Screen, Lock
Screen, App Switcher, and Notification Center. In-app status bars on classic
devices are outside this release's scope.

## Assets

- `com.burc334.carrierhider_1.0.0_iphoneos-arm64e.deb`
- `com.burc334.carrierhider_1.0.0_iphoneos-arm64.deb`
- `SHA256SUMS.txt`

## Install

1. Download the deb matching your jailbreak.
2. Install it with Sileo, Zebra, or Filza.
3. Respring.

## Verification

Verify the downloaded deb against `SHA256SUMS.txt` before installing it.

## Notes

This release uses GitHub Releases and the GitHub Pages depiction. No APT
repository is required.
