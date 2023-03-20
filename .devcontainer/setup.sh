#!/bin/bash

# Update package index
sudo apt-get update

# Install required packages
sudo apt-get install -y libxtst6


# Install noVNC
sudo apt-get update && sudo apt-get install -y novnc

# Start a VNC server
su - $(whoami) -c "vncserver -geometry 1280x800"

# Start noVNC
nohup /usr/share/novnc/utils/launch.sh --vnc localhost:5901 &

# Add port forwarding rule
curl -sSL https://raw.githubusercontent.com/$GIT_USER/$GIT_REPO/main/codespace-port-forwarding.sh | sudo bash
