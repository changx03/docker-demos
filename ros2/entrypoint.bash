#!/bin/bash

echo "UID: {$UID}, GUI: {$GID}"

# use UID and GID as user and group
groupadd -g $GID "group${GID}"
useradd -u $UID -g $GID -M "user${UID}"
chown -R "user${UID}":"group${GID}" /app
export HOME=/app

# gosu allows user always has sudo permission in Docker container
exec /usr/sbin/gosu "user${UID}" "$@"

