%%shell
#!/bin/bash
apt update
apt install -y ssh-askpass xvfb x11vnc build-essential libx11-dev libxcursor-dev libxrandr-dev libxinerama-dev libxi-dev libgl1-mesa-dev libgl1-mesa-dri fluxbox xterm
git clone https://github.com/ayunami2000/noVNC
./noVNC/utils/launch.sh --listen 8080 &
Xvfb -screen 0 1024x768x24+32 +extension GLX &
export DISPLAY=:0
fluxbox &
x11vnc -noshm -geometry 1280x1024 -shared -forever &
ssh -o StrictHostKeychecking=no -R 8080:localhost:8080 nokey@localhost.run
#2023