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
################java
sudo apt install default-jdk -y 

#######github desktop
wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null

sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'

sudo apt update && sudo apt install github-desktop


###########zip y zip en partes
zip -r -s 20m mozilla_parte mozilla/
zip -r mozilla75mb.zip .mozilla


###########install 7z
sudo apt-get install p7zip-full
7z x mozilla_pro.zip
zip -r mozilla75mb.zip .mozilla
zip -r mozilla75mb.zip .mozilla


#######COPIAR UNA CARPETA  -R TODO -V MUESTRA LO COPIADO
sudo cp -r -v /workspace/obryanvipip/gipot-android-stuio.config /home/gitpod/

######COPIAR TODOS LOS ARCHIVOS DE UNA CARPETA ####SE USA EL PUNTO A FINAL DE LA CARPETA PARA COPIAR TODO
sudo cp -r -v /workspace/obryanvipip/gipot-android-stuio.config/. /home/gitpod
