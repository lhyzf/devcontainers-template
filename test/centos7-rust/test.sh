#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" cat /etc/redhat-release
check "rustc" rustc -V
check "cmake" cmake --version

# Report result
reportResults
