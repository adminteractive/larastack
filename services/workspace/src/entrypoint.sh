#!/usr/bin/env bash

# Add local user.
USER_ID=${LOCAL_USER_ID:-9001}
USER_GROUP=${LOCAL_USER_GROUP:-9001}

sudo su - root -c "groupmod -g $USER_GROUP container && usermod -u $USER_ID container"

# Keep container alive.
/bin/ping localhost -i 5 > /dev/null