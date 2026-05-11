FROM osrf/ros:humble-desktop

# Set HOME dir
ENV HOME=/app

WORKDIR /app

RUN apt-get update && apt-get upgrade -y

# Install utilities
RUN apt-get update && apt-get install -y \
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
    xclip \
    python3-pip

# Install ROS2 packages
RUN apt-get update && apt-get install -y \
    ros-humble-desktop \
    ros-dev-tools \
    ros-humble-navigation2 \
    ros-humble-nav2-bringup \
    libgeographic-dev \
    ros-humble-xacro \
    ros-humble-rmw-cyclonedds-cpp \
    ros-humble-tf-transformations

RUN pip3 install --upgrade transforms3d

# Install dependencies for Sony Camera Control PTP3 
RUN apt-get update && apt-get install -y \
    libusb-1.0-0 \
    libusb-1.0-0-dev \
    libc6 \
    libc6-dev \
    libstdc++6 \
    libstdc++-11-dev

# Install dependencies for exiv2 (image exif parser)
RUN apt-get update && apt-get install -y \
    ccache \
    google-mock \
    libbrotli-dev \
    libcurl4-openssl-dev \
    libexpat1-dev \
    libgtest-dev \
    libinih-dev \
    libssh-dev \
    libxml2-utils \
    libz-dev \
    zlib1g-dev \
    exiftool

# Install GStreamer
RUN apt-get update && apt-get install -y \
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    libgstrtspserver-1.0-dev \
    libv4l-dev

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# The default working directory `/app` will be mounted to the host. Copy to root instead
COPY cyclonedds.xml /

# Default command
CMD ["tail", "-f", "/dev/null"]
