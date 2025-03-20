#!/bin/bash

echo "UID: {$UID}, GUI: {$GID}"

# use UID and GID as user and group
groupadd -g $GID anyone
useradd -u $UID -g $GID -m anyone
chown -R anyone:anyone /app

# gosu allows user always has sudo permission in Docker container
exec /usr/sbin/gosu anyone "$@"

