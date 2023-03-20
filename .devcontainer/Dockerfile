FROM mcr.microsoft.com/devcontainers/universal:2

# Install necessary packages
RUN apt-get update && \
    apt-get install -y tigervnc-standalone-server tigervnc-common novnc net-tools xterm openssh-server x11-apps x11vnc xfce4 xfce4-terminal

# Set up SSH server
RUN mkdir /var/run/sshd
RUN echo 'root:password' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#X11Forwarding no/X11Forwarding yes/' /etc/ssh/sshd_config
RUN sed -i 's/#X11UseLocalhost yes/X11UseLocalhost no/' /etc/ssh/sshd_config
RUN echo 'X11UseLocalhost no' >> /etc/ssh/sshd_config

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
