#!/bin/bash
Xvfb :0 &
x11vnc -display :0 -forever -shared -rfbport 6080 &
cd /opt/novnc && ./utils/launch.sh --vnc localhost:6080
