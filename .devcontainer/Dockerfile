# Start from the base OpenJDK 8 image
FROM openjdk:8-jdk

# Set up environment variables
ENV DISPLAY=:1 \
    VNC_PORT=5901 \
    NO_VNC_PORT=6901 \
    JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Install necessary software
RUN apt-get update && apt-get install -y \
    openbox \       # Install the Openbox window manager for lightweight desktop environment
    xvfb \          # Install X virtual framebuffer for headless X server
    x11vnc \        # Install X11 VNC server for remote desktop access
    wget \          # Install wget for downloading files
    unzip \         # Install unzip for extracting zip files
    && rm -rf /var/lib/apt/lists/*

# Download and install noVNC
RUN wget https://github.com/novnc/noVNC/archive/refs/tags/v1.4.0.zip -P /tmp && \
    unzip /tmp/v1.4.0.zip -d /tmp && \
    mv /tmp/noVNC-1.4.0 /opt/noVNC \        # Move the extracted noVNC folder to /opt/noVNC
    && rm -rf /tmp/noVNC-1.4.0 /tmp/v1.4.0.zip \   # Clean up temporary files
    && chown -R root:root /opt/noVNC         # Change ownership of noVNC files to root

# Copy the startup script into the image
COPY vnc_startup.sh /dockerstartup/

# Make the startup script executable
RUN chmod +x /dockerstartup/vnc_startup.sh

# Expose the necessary ports
EXPOSE $VNC_PORT $NO_VNC_PORT

# Start up VNC, OpenBox, and noVNC
ENTRYPOINT ["/dockerstartup/vnc_startup.sh"]
CMD ["--wait"]





