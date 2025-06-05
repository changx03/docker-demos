#!/bin/bash

echo "Running this script from WSL will launch RViz2 in Docker on Windows."

docker run -it --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /mnt/wslg:/mnt/wslg \
    -v /mnt/c/workspace/docker-demos/ros2-windows/app:/app \
    -e DISPLAY \
    -e WAYLAND_DISPLAY \
    -e XDG_RUNTIME_DIR \
    -e PULSE_SERVER \
    -e RMW_IMPLEMENTATION=rmw_cyclonedds_cpp \
    -e CYCLONEDDS_URI=file:///app/cyclonedds.xml \
    --network host \
    --cap-add=NET_RAW --cap-add=NET_ADMIN \
    --name ros2-rviz2 \
    ros2:humble_custom \
    bash
