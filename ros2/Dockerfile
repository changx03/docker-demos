FROM osrf/ros:humble-desktop

# Set HOME dir
ENV HOME=/app

WORKDIR /app

RUN apt-get update && apt-get upgrade -y

# Install utilities
RUN apt-get install -y \
    build-essential \
    glances \
    iperf3 \
    iproute2 \
    iputils-ping \
    nmap \ 
    picocom \
    screen \
    traceroute \
    usbutils \
    vim \
    x11-apps \
    xclip

# Install ROS2 packages
RUN apt-get install -y \
    ros-humble-navigation2 \
    ros-humble-nav2-bringup \
    libgeographic-dev \
    ros-humble-xacro \
    ros-humble-rmw-cyclonedds-cpp
   
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

# The default working directory `/app` will be mounted to the host. Copy to root instead
COPY cyclonedds.xml /

# Default command
CMD ["tail", "-f", "/dev/null"]
