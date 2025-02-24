FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && \
    apt-get install -y \
    python3.10 \
    python3-pip \
    picocom \
    usbutils \
    inotify-tools \
    udev

CMD [ "tail", "-f", "/dev/null" ]
