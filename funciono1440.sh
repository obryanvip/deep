##este pegado y copiado fue el que funciono
 ./noVNC/utils/launch.sh --listen 8080 &
Xvfb -screen 0 1440x900x24+32 +extension GLX &
export DISPLAY=:0
xfce4-session &
x11vnc -noshm -geometry 1440x900 -shared -forever
