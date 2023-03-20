FROM mcr.microsoft.com/devcontainers/universal:2

# Install necessary packages
RUN apt-get update && \
    apt-get install -y tigervnc-standalone-server tigervnc-common novnc net-tools xterm

# Set up VNC
ENV USER=vscode \
    DISPLAY=:1 \
    VNC_PORT=5901 \
    NO_VNC_PORT=6080 \
    VNC_COL_DEPTH=24 \
    VNC_RESOLUTION=1280x800

# Expose VNC and noVNC ports
EXPOSE $VNC_PORT $NO_VNC_PORT

# Add customizations
COPY .bashrc /root/.bashrc
COPY setup.sh /usr/local/bin/setup.sh

# Set up entrypoint
CMD ["/usr/local/bin/setup.sh"]
