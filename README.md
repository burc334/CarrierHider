<p align="center">
  <img src="docs/icon.png" width="160" alt="Carrier Hider icon">
</p>

# Carrier Hider

<p align="center"><strong>Carrier Hider is a rootless iOS 18 jailbreak tweak that hides the carrier name in the status bar while keeping signal and network indicators.</strong></p>

- Package: `com.burc334.carrierhider`
- Version: `1.0.1`
- Tested: iOS 18.4.1 (Dopamine 3, roothide) on iPhone 11 Pro Max
- Builds: rootless (`iphoneos-arm64`) and roothide (`iphoneos-arm64e`)
- License: MIT

## Compatibility

| Build | Architecture | Compatibility |
|---|---|---|
| roothide | `iphoneos-arm64e` | Tested on iOS 18.4.1 (Dopamine 3, roothide) |
| rootless | `iphoneos-arm64` | Expected to work on iOS 18+ rootless jailbreaks |

The tweak requires iOS 18.0 or later. It targets the SpringBoard system status bar: Home Screen, Lock Screen, App Switcher, and Notification Center. In-app status bars on classic devices are outside this release's scope.

## What it does

- Hides the carrier name in the system status bar.
- Keeps signal bars, network type, Wi-Fi, battery, time, badges, and SOS indicators.
- Targets both primary and secondary cellular entries.
- Applies immediately after respring.
- Does not require a preference pane or configuration.

## How it works

iOS 18 renders the carrier name from the cellular status bar data entry. Carrier Hider hooks the `STStatusBarDataCellularEntry` string getters and returns an empty string. The status bar then hides only the carrier-name item; signal, network type, and the other indicators remain.

## Install

### Sileo

Add `https://burc334.github.io/apt/` in Sileo, then install Carrier Hider.

### Manual

1. Download the deb matching your jailbreak:
   - roothide: `com.burc334.carrierhider_1.0.1_iphoneos-arm64e.deb`
   - rootless: `com.burc334.carrierhider_1.0.1_iphoneos-arm64.deb`
2. Install it with Sileo, Zebra, or Filza.
3. Respring.

## Build

```sh
export THEOS=$HOME/theos
make clean package FINALPACKAGE=1
./tools/make-roothide.sh
```

The rootless deb is written to `packages/`. The roothide script converts the latest rootless package to `iphoneos-arm64e`.

## Verification

SHA-256 checksums are published in `SHA256SUMS.txt` with the GitHub release. Verify the downloaded deb before installing it.

## Support

Open an issue on the [GitHub repository](https://github.com/burc334/CarrierHider/issues). Include your iOS version, jailbreak, device model, and Carrier Hider version.

## License

MIT

AI-assisted development with DeepSeek-V4.1-Flash-1017.
