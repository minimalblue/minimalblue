#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

echo "Enabling faillock in PAM authentication profile"

authselect enable-feature with-faillock 1> /dev/null

echo "Disabling nullok in PAM authentication profile"

authselect enable-feature without-nullok 1> /dev/null
