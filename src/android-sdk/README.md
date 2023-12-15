
# Android SDK (android-sdk)

Installs Android SDK.

## Example Usage

```json
"features": {
    "ghcr.io/CASL0/devcontainer-features/android-sdk:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| platformsVersion | Select or enter an SDK platform version | string | 34 |
| buildToolsVersion | Select or enter an SDK build tools version | string | 34.0.0 |
| installNdk | Install NDK, a toolset that lets you implement parts of your app in native code | boolean | false |
| ndkVersion | Select or enter an NDK version | string | 26.1.10909125 |
| installCmake | Install CMake, the cross-platform, open-source build system | boolean | false |
| cmakeVersion | Select or enter a CMake version | string | 3.22.1 |



---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/CASL0/devcontainer-features/blob/main/src/android-sdk/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
