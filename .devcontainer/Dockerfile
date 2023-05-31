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
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Update npm
RUN npm install -g npm@latest

# Install websockify using pip
RUN pip3 install websockify

# Download and install noVNC
RUN wget https://github.com/novnc/noVNC/archive/refs/tags/v1.4.0.zip -P /tmp && \
    unzip /tmp/v1.4.0.zip -d /tmp && \
    mv /tmp/noVNC-1.4.0 /opt/noVNC && \
    rm -rf /tmp/noVNC-1.4.0 /tmp/v1.4.0.zip && \
    chown -R root:root /opt/noVNC

# Install VS Code extension
RUN npm install -g vsce yarn && \
    mkdir --parents /opt/cs50/extensions && \
    cd /tmp && \
    git clone https://github.com/cs50/cs50.vsix.git && \
    cd cs50.vsix && \
    npm install && \
    vsce package && \
    mv cs50-0.0.1.vsix /opt/cs50/extensions && \
    pip3 install ./python-clients/cs50vsix-client/ && \
    rm -rf /tmp/cs50.vsix
    
# Copy the startup script into the image
COPY vnc_startup.sh /dockerstartup/

# Make the startup script executable
RUN chmod +x /dockerstartup/vnc_startup.sh

# Expose the necessary ports
EXPOSE 5901 6901

# Run the xvfb startup script when the container starts
ENTRYPOINT ["/bin/bash", "-c", "./dockerstartup/vnc_startup.sh; tail -f /dev/null"]
