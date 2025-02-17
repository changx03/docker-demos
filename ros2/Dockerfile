FROM osrf/ros:humble-desktop

# Set HOME dir
ENV HOME=/boxfish

WORKDIR /boxfish

RUN apt-get update && apt-get upgrade -y

# Install utilities
RUN apt-get install -y \
    picocom \
    usbutils

# Install ROS2 packages
RUN apt-get install -y \
    ros-humble-navigation2 \
    ros-humble-nav2-bringup \
    libgeographic-dev \
    ros-humble-xacro

# Default command
CMD ["bash"]
