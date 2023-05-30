# Start from the base OpenJDK 8 image
FROM openjdk:8-jdk

# Set up environment variables
ENV DISPLAY=:0 \
    JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Install necessary software
RUN apt-get update && apt-get install -y \
    openbox \
    xvfb \
    x11vnc \
    wget \
    unzip \
    python3-pip \
    x11-utils \
    x11-xserver-utils \
    && rm -rf /var/lib/apt/lists/*

# Install websockify using pip
RUN pip3 install websockify

# Download and install noVNC
RUN wget https://github.com/novnc/noVNC/archive/refs/tags/v1.4.0.zip -P /tmp && \
    unzip /tmp/v1.4.0.zip -d /tmp && \
    mv /tmp/noVNC-1.4.0 /opt/noVNC && \
    rm -rf /tmp/noVNC-1.4.0 /tmp/v1.4.0.zip && \
    chown -R root:root /opt/noVNC

# Create the destination directory for the VS Code extension
RUN mkdir -p /usr/share/code-server/extensions

# Install VS Code extension
RUN mkdir /tmp/cs50-extension && \
    cd /tmp/cs50-extension && \
    wget https://github.com/cs50/cs50.vsix/archive/refs/heads/main.zip && \
    unzip main.zip && \
    mv cs50.vsix-main /usr/share/code-server/extensions/cs50.vsix

# Copy the startup script into the image
COPY vnc_startup.sh /dockerstartup/

# Make the startup script executable
RUN chmod +x /dockerstartup/vnc_startup.sh

# Expose the necessary ports
EXPOSE 5901 6901

# Run the xvfb startup script when the container starts
ENTRYPOINT ["/bin/bash", "-c", "./dockerstartup/xvfb.sh; tail -f /dev/null"]












