# Use an official Java development image as a parent image
FROM openjdk:8-jdk

# Set the working directory in the container to /app
WORKDIR /app

# Install Xvfb, a VNC server, a lightweight window manager, and noVNC
RUN apt-get update && apt-get install -y xvfb x11vnc fluxbox novnc

# Cleanup apt cache
RUN apt-get clean

# Set up noVNC
RUN ln -s /usr/share/novnc/vnc.html /usr/share/novnc/index.html

# Expose the noVNC port
EXPOSE 8081

