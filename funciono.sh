
#!/bin/bash

pkill -t tty0



# Matar cualquier proceso en tty0
pkill -t tty0

# Eliminar el archivo de bloqueo si existe
if [ -f /tmp/.X0-lock ]; then
    rm /tmp/.X0-lock
fi




./opt/sdk/noVNC/utils/launch.sh --listen 8080 &
Xvfb -screen 0 1280x1024x24+32 +extension GLX &
export DISPLAY=:0
xfce4-session &
x11vnc -noshm -geometry 1280x1024 -shared -forever 