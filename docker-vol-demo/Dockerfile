FROM ubuntu:22.04

WORKDIR /data

RUN apt update && apt install -y vim

COPY data /data

COPY message.txt /data

CMD ["/bin/sh", "-c", "cat message.txt && tail -f /dev/null"]
