#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail


echo '

[General]
DisplayServer=x11-user

' > /usr/lib/sddm.conf.d/rootless-x11.conf

cp /usr/lib/sddm.conf.d/rootless-x11.conf /etc/sddm.conf.d/rootless-x11.conf