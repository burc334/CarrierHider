# Carrier Hider — testing

## Target environment

- Device: iPhone 11 Pro Max
- iOS: 18.4.1 (22E252)
- Jailbreak: Dopamine 3 + RootHide
- Build under test: RootHide `iphoneos-arm64e`
- Package: `com.burc334.carrierhider`

## Acceptance criteria

- The carrier name is hidden in the SpringBoard system status bar.
- Signal bars remain visible.
- Network type (5G/LTE/3G) remains visible.
- Wi-Fi, battery, and time remain visible.
- Badges and SOS indicators remain visible.
- No gap or overlap where the carrier name was.
- No marquee or crossfade animation.
- The carrier name does not return after respring or reboot.
- The tweak does not crash SpringBoard and does not enter safe mode.
- Uninstalling restores the carrier name.

## Probe result

**Build:** `0.1.0+debug`, RootHide `iphoneos-arm64e`

Installed on 2026-11-06 on the target device. Remote SHA-256 matched. SpringBoard
respringed. You confirmed the carrier text was hidden. No safe mode was
observed.

The probe used `NSLog` diagnostics, but they were not readable over the
Wi-Fi-only SSH setup because usbmux network pairing was unavailable. The
visual result was the proof.

## Final artifact verification

**Build:** `1.0.0`, RootHide `iphoneos-arm64e`

**Rootless deb:** `builds/com.burc334.carrierhider_1.0.0_iphoneos-arm64.deb`
SHA-256: `79e4daa2204755c5833f6c777a2be361d3a714e11e77bd0fa73a28498239a87c`

**RootHide deb:** `builds/com.burc334.carrierhider_1.0.0_iphoneos-arm64e.deb`
SHA-256: `21c2a06628f55090fcabf5eb1d368d5f68c8439901ea984903bff41d1effeaa9`

Installed on 2026-11-06 over the probe, remote hash matched, SpringBoard
respringed. The user approved publication of the final build.

- [x] Install final RootHide `iphoneos-arm64e` deb on the target device.
- [x] Respring.
- [x] Confirm the carrier name is hidden.
- [x] Confirm signal, network type, Wi-Fi, battery, time, badges, and SOS remain.
- [x] Confirm no gap, overlap, marquee, or crossfade.
- [x] Confirm no crash report or safe mode.
- [x] Confirm the final RootHide package hash matches `SHA256SUMS.txt`.
- [x] Rootless build is documented as expected on iOS 18+ rootless jailbreaks;
      no rootless test device was available.

## Final hashes

```text
79e4daa2204755c5833f6c777a2be361d3a714e11e77bd0fa73a28498239a87c  com.burc334.carrierhider_1.0.0_iphoneos-arm64.deb
21c2a06628f55090fcabf5eb1d368d5f68c8439901ea984903bff41d1effeaa9  com.burc334.carrierhider_1.0.0_iphoneos-arm64e.deb
```
