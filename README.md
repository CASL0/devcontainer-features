# Dev Container Features

カスタム Dev Container Features

## Contents

### [`android-sdk`](src/android-sdk/README.md)

Android アプリ開発に使う下記のツールをインストールします。

- SDK（platforms）
- ビルドツール（build-tools）
- プラットフォームツール（platform-tools）
- NDK
- CMake

```jsonc
{
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
  "features": {
    "ghcr.io/devcontainers/features/java:1": {
      "version": "17"
    },
    "ghcr.io/casl0/devcontainer-features/android-sdk:1": {
      "installNdk": true,
      "installCmake": true
    }
  }
}
```
