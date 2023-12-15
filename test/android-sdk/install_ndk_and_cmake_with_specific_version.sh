#!/bin/bash
set -e

source dev-container-features-test-lib

check "sdkmanager version" sdkmanager --version

check "adb version" adb --version

check "build-tools exists" grep "19.1.0" <(ls -la "${ANDROID_SDK_ROOT}"/build-tools)

check "platforms exists" grep "android-10" <(ls -la "${ANDROID_SDK_ROOT}"/platforms)

check "ndk exists" grep "16.1.4479499" <(ls -la /usr/local/android/ndk)

check "cmake exists" grep "3.6.4111459" <(ls -la "${ANDROID_SDK_ROOT}"/cmake)

reportResults
