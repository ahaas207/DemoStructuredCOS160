# We'll start from an Ubuntu base image
FROM ubuntu:20.04

# This will prevent prompts from asking for user input during package installation
ARG DEBIAN_FRONTEND=noninteractive

# Unset user
USER root

# Update packages and install tools
RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    openbox \
    xvfb \
    x11vnc \
    unzip \
    net-tools \
    curl \
    git

# Setup NoVNC
RUN mkdir -p /opt/novnc/utils/websockify \
    && curl -L -o /tmp/novnc.zip https://github.com/novnc/noVNC/archive/refs/tags/v1.4.0.zip \
    && unzip /tmp/novnc.zip -d /tmp \
    && mv /tmp/noVNC-1.4.0 /opt/novnc \
    && rm -rf /tmp/noVNC-1.4.0 /tmp/novnc.zip

# Setup Xvfb
RUN echo '#!/bin/bash\nXvfb :0 -screen 0 1280x800x24 &' > /etc/X11/xinit/xserverrc

# Start up scripts
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]



