#!/bin/bash

echo "UID: {$UID}, GUI: {$GID}"

# use UID and GID as user and group
groupadd -g $GID user
useradd -u $UID -g $GID -m anyogroupne
chown -R $UID:$GID /app

# gosu allows user always has sudo permission in Docker container
exec /usr/sbin/gosu user "$@"

