#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

if [ ! -f /usr/bin/chsh ]; then
  echo "chsh not found in /usr/bin"
else
  rm /usr/bin/chsh
fi
