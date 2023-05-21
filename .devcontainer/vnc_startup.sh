#!/bin/bash
# Start up OpenBox, our window manager
openbox-session &

# Start the VNC server with security disabled (for simplicity)
x11vnc -display $DISPLAY -forever -shared -nopw &

# Start up NoVNC
websockify --web /opt/noVNC/ $NO_VNC_PORT localhost:$VNC_PORT
