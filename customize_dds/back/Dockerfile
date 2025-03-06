FROM osrf/ros:humble-desktop

ENV HOME=/app
ENV RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
ENV CYCLONEDDS_URI="/app/cyclonedds_config.xml"

WORKDIR /app

RUN apt-get update && apt-get install -y \
    iproute2 \
    usbutils \
    iputils-ping \
    ros-humble-rmw-cyclonedds-cpp

RUN apt update && apt install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-flake8-docstrings \
    python3-pytest-cov \
    ros-dev-tools

RUN mkdir -p /app/dds

RUN bash /opt/ros/humble/setup.bash

CMD [ "python3", "./src/src/action_server/action_server/fibonacci_action_server.py" ]
