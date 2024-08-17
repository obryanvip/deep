##############################Comandos


sudo apt-get autoremove --purge xfce4 xfce4-goodies

sudo apt-get autoremove --purge x11vnc

sudo apt purge --autoremove \
  libxcursor-dev libxrandr-dev libxinerama-dev \
  libxi-dev libgl1-mesa-dev libgl1-mesa-dri xterm \
  xfce4 xfce4-goodies xfce4-*

sudo apt purge --autoremove \
 xvfb x11vnc build-essential 
ssh-askpass xvfb x11vnc build-essential  xfce4-goodies xterm

sudo apt install default-jdk -y 
