#!/bin/bash

usermod -u $TARGETUID chromium
echo "XDG_RUNTIME_DIR $XDG_RUNTIME_DIR"
su -c "chromium --user-data-dir=/data" chromium
