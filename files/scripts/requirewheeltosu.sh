#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sudo sed -i '/#auth            required        pam_wheel.so use_uid/s/^#//g' /etc/pam.d/su
