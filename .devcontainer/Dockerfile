# Start from the base OpenJDK 8 image
FROM openjdk:8-jdk

# Set up environment variables
ENV DISPLAY=:1 \
    VNC_PORT=5901 \
    NO_VNC_PORT=6901 \
    JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Install necessary software
RUN apt-get update && apt-get install -y \
    openbox \
    xvfb \
    x11vnc \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Download and install noVNC
RUN wget https://github.com/novnc/noVNC/archive/refs/tags/v1.4.0.zip -P /tmp && \
    unzip /tmp/v1.4.0.zip -d /tmp && \
    mv /tmp/noVNC-1.4.0 /opt/noVNC && \
    rm -rf /tmp/noVNC-1.4.0 /tmp/v1.4.0.zip && \
    chown -R root:root /opt/noVNC

# Set up Xvfb startup script
RUN echo "Xvfb $DISPLAY -screen 0 1024x768x24 &" > /dockerstartup/xvfb.sh && \
    chmod +x /dockerstartup/xvfb.sh

# Copy the startup script into the image
COPY vnc_startup.sh /dockerstartup/

# Make the startup script executable
RUN chmod +x /dockerstartup/vnc_startup.sh

# Expose the necessary ports
EXPOSE $VNC_PORT $NO_VNC_PORT

# Start up Xvfb, VNC, OpenBox, and noVNC
ENTRYPOINT ["/dockerstartup/vnc_startup.sh"]
CMD ["--wait"]






