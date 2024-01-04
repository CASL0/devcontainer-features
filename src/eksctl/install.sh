#!/usr/bin/env bash
set -e

# Checks if packages are installed and installs them if not
check_packages() {
  if ! dpkg -s "$@" >/dev/null 2>&1; then
    apt-get update -y
    apt-get -y install --no-install-recommends "$@"
  fi
}

# Install eksctl
install() {
  local arch=$1
  local platform=$(uname -s)_$arch

  curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$platform.tar.gz"

  # (Optional) Verify checksum
  curl -sL "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_checksums.txt" | grep "$platform" | sha256sum --check

  tar -xzf eksctl_"$platform".tar.gz -C /tmp && rm eksctl_"$platform".tar.gz

  mv /tmp/eksctl /usr/local/bin
}

# Install dependencies
check_packages ca-certificates curl tar

install amd64

echo "Done!"
