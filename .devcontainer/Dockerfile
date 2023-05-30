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

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

# Install websockify using pip
RUN pip3 install websockify

# Download and install noVNC
RUN wget https://github.com/novnc/noVNC/archive/refs/tags/v1.4.0.zip -P /tmp && \
    unzip /tmp/v1.4.0.zip -d /tmp && \
    mv /tmp/noVNC-1.4.0 /opt/noVNC && \
    rm -rf /tmp/noVNC-1.4.0 /tmp/v1.4.0.zip && \
    chown -R root:root /opt/noVNC

# Create the destination directory for the VS Code extension
RUN mkdir -p /usr/share/code-server/extensions/cs50.vsix

# Install VS Code extension
RUN npm install -g vsce yarn && \
    mkdir -p /tmp/cs50-extension && \
    cd /tmp/cs50-extension && \
    git clone https://github.com/cs50/cs50.vsix.git && \
    cd cs50.vsix && \
    npm install && \
    vsce package && \
    mv cs50-0.0.1.vsix /usr/share/code-server/extensions/cs50.vsix

# Install the cs50vsix-client package
RUN mkdir -p /tmp/cs50vsix-client && \
    cp -r /usr/share/code-server/extensions/cs50.vsix/cs50.vsix-main/python-clients/cs50vsix-client /tmp/cs50vsix-client && \
    cd /tmp/cs50vsix-client && \
    pip3 install . && \
    rm -rf /tmp/cs50vsix-client

# Remove unnecessary files
RUN rm -rf /tmp/cs50-extension

# Copy the startup script into the image
COPY vnc_startup.sh /dockerstartup/

# Make the startup script executable
RUN chmod +x /dockerstartup/vnc_startup.sh

# Expose the necessary ports
EXPOSE 5901 6901

# Run the xvfb startup script when the container starts
ENTRYPOINT ["/bin/bash", "-c", "./dockerstartup/xvfb.sh; tail -f /dev/null"]

