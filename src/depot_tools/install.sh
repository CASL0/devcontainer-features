#!/usr/bin/env bash
set -e

# Checks if packages are installed and installs them if not
check_packages() {
  if ! dpkg -s "$@" >/dev/null 2>&1; then
    apt-get update -y
    apt-get -y install --no-install-recommends "$@"
  fi
}

# Install depot_tools
install() {
  git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git /usr/local/depot_tools
}

# Install dependencies
check_packages git ca-certificates curl python3

install

echo "Done!"
