FROM osrf/ros:humble-desktop

# Set HOME dir
ENV HOME=/app

WORKDIR /app

RUN apt-get update && apt-get upgrade -y

# Install utilities
RUN apt-get install -y \
    picocom \
    usbutils \
    iproute2 \
    build-essential \
    x11-apps

# Install ROS2 packages
RUN apt-get install -y \
    ros-humble-navigation2 \
    ros-humble-nav2-bringup \
    ros-humble-rmw-cyclonedds-cpp \
    ros-humble-xacro \
    libgeographic-dev
   
# Install dependencies for Sony Camera Control PTP3 
RUN apt-get install -y \
    libusb-1.0-0 \
    libusb-1.0-0-dev \
    libc6 \
    libc6-dev \
    libstdc++6 \
    libstdc++-11-dev

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Default command
CMD ["tail", "-f", "/dev/null"]
