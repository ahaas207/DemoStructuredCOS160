#!/bin/bash
# Start up OpenBox, our window manager
openbox-session &

# Start the X virtual framebuffer
Xvfb :0 -screen 0 1024x768x16 &
sleep 2
export DISPLAY=:0


# Wait for the X server to be ready
timeout_counter=0
while ! xdpyinfo >/dev/null 2>&1; do
  sleep 1
  timeout_counter=$((timeout_counter + 1))
  if [ $timeout_counter -ge 60 ]; then
    echo "Timeout waiting for X server to be ready"
    exit 1
  fi
done

# Start the VNC server with security disabled (for simplicity)
x11vnc -display $DISPLAY -forever -shared -nopw -rfbport 5901 &

# Start up NoVNC
websockify --web /opt/noVNC/ 6901 localhost:5901



