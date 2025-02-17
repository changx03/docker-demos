FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && \
    apt-get install -y \
    python3.10 \
    python3-pip \
    picocom \
    usbutils

CMD [ "/bin/bash" ]
