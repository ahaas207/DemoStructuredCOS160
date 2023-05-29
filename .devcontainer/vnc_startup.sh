#!/bin/bash
# Start up OpenBox, our window manager
openbox-session &

# Start the VNC server with security disabled (for simplicity)
x11vnc -display $DISPLAY -forever -shared -nopw -rfbport 5901 &

# Start up NoVNC
websockify --web /opt/noVNC/ 6901 localhost:5901
