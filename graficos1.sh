#!/bin/bash
echo '#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &' > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup


sudo apt install xfce4 xfce4-goodies -y
sudo apt-get install tightvncserver



sudo mkdir -p ~/.vnc && echo '#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &' > ~/.vnc/xstartup && chmod +x ~/.vnc/xstartup



#!  sudo vncserver -geometry 1440x900

git clone https://github.com/ayunami2000/noVNC
#./noVNC/utils/launch.sh --listen 8080 
#./noVNC/utils/launch.sh --listen 8080 --vnc localhost:5901
