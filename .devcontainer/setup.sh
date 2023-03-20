#!/bin/bash

# Install noVNC
sudo apt-get update && sudo apt-get install -y novnc

# Start a VNC server
su - $(whoami) -c "vncserver -geometry 1280x800"

# Start noVNC
nohup /usr/share/novnc/utils/launch.sh --vnc localhost:5901 &

# Set LD_LIBRARY_PATH to include directory containing libXtst.so.6
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/workspaces/.codespaces/shared/editors/jetbrains/*/plugins/remote-dev-server/selfcontained/lib

# Add port forwarding rule
curl -sSL https://raw.githubusercontent.com/$GIT_USER/$GIT_REPO/main/codespace-port-forwarding.sh | sudo bash

# Open the browser
open-browser
