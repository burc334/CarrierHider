# Carrier Hider 1.0.0 release review

This is the local review bundle for **Carrier Hider 1.0.0**. It records the
files prepared for publication, the release metadata, and the verification
status. Nothing has been published.

## Release summary

- Name: Carrier Hider
- Version: 1.0.0
- Package: `com.burc334.carrierhider`
- Tested behavior: iOS 18.4.1 (Dopamine 3, RootHide) on iPhone 11 Pro Max
- Architectures: `iphoneos-arm64` (rootless) and `iphoneos-arm64e` (RootHide)
- License: MIT
- Repository: `https://github.com/burc334/CarrierHider`
- Pages depiction: `https://burc334.github.io/CarrierHider/`
- Sileo depiction: `https://burc334.github.io/CarrierHider/depiction.json`
- Release tag: `v1.0.0`
- Release assets:
  - `builds/com.burc334.carrierhider_1.0.0_iphoneos-arm64.deb`
  - `builds/com.burc334.carrierhider_1.0.0_iphoneos-arm64e.deb`
  - `SHA256SUMS.txt`

## Scope

Carrier Hider targets the SpringBoard system status bar: Home Screen, Lock
Screen, App Switcher, and Notification Center. In-app status bars on classic
devices are outside this release's scope.

## Publishable file inventory

### Project metadata

- `README.md`
- `LICENSE`
- `control`
- `Makefile`
- `.gitignore`
- `CarrierHider.plist`
- `Tweak.xm`
- `TESTING.md`
- `RELEASE_NOTES.md`
- `SHA256SUMS.txt`
- `RELEASE_REVIEW.md`

### Build and packaging

- `tools/make-roothide.sh`
- `builds/com.burc334.carrierhider_1.0.0_iphoneos-arm64.deb`
- `builds/com.burc334.carrierhider_1.0.0_iphoneos-arm64e.deb`

### GitHub Pages

- `docs/index.html`
- `docs/style.css`
- `docs/depiction.json`
- `docs/.nojekyll`

## GitHub settings proposal

- Repository name: `CarrierHider`
- Description: `Hides the carrier name in the iOS status bar while keeping signal and network indicators. Rootless + RootHide.`
- Website: `https://burc334.github.io/CarrierHider/`
- Topics: `ios`, `jailbreak`, `status-bar`, `carrier`, `roothide`, `rootless`, `theos`, `tweak`
- Pages source: `main` branch, `/docs` folder
- Release title: `Carrier Hider 1.0.0`
- Release tag: `v1.0.0`
- Release assets: both debs and `SHA256SUMS.txt`
- Release state: latest, not draft, not prerelease
- No APT repository

## Package checksums

| Asset | SHA-256 |
|---|---|
| `com.burc334.carrierhider_1.0.0_iphoneos-arm64.deb` | `20ebf8003bbf36ddfdb4ce16dc12cddffd995bad8c7b9dedc591c95e4d794880` |
| `com.burc334.carrierhider_1.0.0_iphoneos-arm64e.deb` | `6338fdf8d9393286d6f4f859d72675f04a6657ce3cb3976a9fa89e72ae73d8b4` |

Both packages contain only:

- `CarrierHider.dylib`
- `CarrierHider.plist`

No preference bundle, icon, dSYM, diagnostic log, probe preference, or test
artifact is included. There is no `Info.plist`, `Root.plist`, or
PreferenceLoader entry because this tweak has no Settings UI.

## Verified

- [x] Rootless and RootHide packages build.
- [x] Version is `1.0.0` in `control` and documentation.
- [x] Rootless architecture is `iphoneos-arm64`.
- [x] RootHide architecture is `iphoneos-arm64e`.
- [x] Both packages depend on `ellekit` and `firmware (>= 18.0)`.
- [x] `ellekit` is installed on the test device.
- [x] `Depiction` and `SileoDepiction` fields point to the planned Pages URLs.
- [x] Rootless package payload installs under `var/jb/Library/MobileSubstrate/DynamicLibraries`.
- [x] RootHide package payload installs under `Library/MobileSubstrate/DynamicLibraries`.
- [x] No preference bundle or package icon is present.
- [x] No dSYM, probe, log, or debug payload is present.
- [x] Source contains no probe or diagnostic code.
- [x] Source and deb strings contain no personal paths or credentials.
- [x] Final dylibs contain no `NSLog` or `[CarrierHider]` debug strings.
- [x] `depiction.json` validates.
- [x] `docs/.nojekyll` is present.
- [x] README first sentence is present and is the correct rootless iOS 18 description.
- [x] README final AI note appears exactly once.
- [x] AI note appears nowhere else.
- [x] License file is present.
- [x] SHA-256 values match `SHA256SUMS.txt`.
- [x] Probe behavior was confirmed by the user on the target device.
- [x] Final 1.0.0 RootHide package installed over the probe and respringed.

## Remaining before release approval

- [x] Confirm the final 1.0.0 RootHide build visually on the target device.
- [x] Rootless build is present and documented as expected on iOS 18+ rootless
      jailbreaks; no rootless test device was available.
- [x] Review this bundle and approve the final files.
- [x] Obtain explicit `publish` approval before creating the GitHub repository,
      committing, pushing, enabling Pages, or creating the release.

## Publishing checklist

- [x] Version, architecture, and package metadata correct.
- [x] License present.
- [x] README first sentence correct.
- [x] README final AI note correct and unique.
- [x] No personal data or local paths in source, docs, debs, or release assets.
- [x] Pages source proposal is `main` / `docs`.
- [x] `docs/.nojekyll` present.
- [x] Depiction and Sileo depiction JSON prepared.
- [x] No APT repository planned.
- [x] Final release artifact visual retest.
- [x] Final review approval.
- [ ] Push and publish.
- [ ] Re-download release assets and verify SHA-256 values.
- [ ] Verify live HTML and depiction JSON.

## Publish procedure (only after the literal word `publish`)

1. Create the public repository `burc334/CarrierHider`.
2. Set the repository-local git identity to:

   ```text
   burc334
   21700838+burc334@users.noreply.github.com
   ```

3. Commit the publishable source, metadata, and docs. Do not commit `.theos/`,
   `packages/`, `builds/`, logs, or dSYMs.
4. Push `main`.
5. Enable GitHub Pages from `main` / `docs`.
6. Create release `v1.0.0` with:
   - `com.burc334.carrierhider_1.0.0_iphoneos-arm64.deb`
   - `com.burc334.carrierhider_1.0.0_iphoneos-arm64e.deb`
   - `SHA256SUMS.txt`
7. Verify the live HTML and `depiction.json` return HTTP 200 and the JSON
   validates.
8. Re-download the release assets and verify their SHA-256 values.
9. Confirm the release is latest, not draft, and not prerelease.
10. Do not create an APT repository.

No git repository has been initialized, and nothing has been committed,
pushed, or uploaded.

## License decision

MIT is prepared, matching the established burc334 convention. Confirm before
publish if a different license is wanted.
