#!/bin/bash
set -e

source dev-container-features-test-lib

check "sdkmanager version" sdkmanager --version

check "adb version" adb --version

check "build-tools exists" grep "34.0.0" <(ls -la "${ANDROID_SDK_ROOT}"/build-tools)

check "platforms exists" grep "android-34" <(ls -la "${ANDROID_SDK_ROOT}"/platforms)

check "ndk exists" grep "26.1.10909125" <(ls -la /usr/local/android/ndk)

check "cmake exists" grep "3.22.1" <(ls -la "${ANDROID_SDK_ROOT}"/cmake)

reportResults
