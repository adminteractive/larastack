#!/usr/bin/env bash

# Add local user.
USER_ID=${LOCAL_USER_ID:-9001}
useradd --shell /bin/bash -u $USER_ID -o -c "" -m container

# Keep container alive.
/bin/ping localhost -i 5 > /dev/null