#!/bin/bash
# Start up OpenBox, our window manager
openbox-session &

# Wait for the X server to be ready
while ! xdpyinfo >/dev/null 2>&1; do sleep 1; done

# Start the VNC server with security disabled (for simplicity)
x11vnc -display $DISPLAY -forever -shared -nopw -rfbport 5901 &

# Start up NoVNC
websockify --web /opt/noVNC/ 6901 localhost:5901

