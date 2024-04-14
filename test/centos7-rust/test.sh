#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" cat /etc/redhat-release
check "rustc" rustc -V
check "rust-analyzer" rust-analyzer --version
check "cmake" cmake --version
check "rust crates index" cat ${CARGO_HOME:-$HOME/.cargo}/config

# Report result
reportResults
