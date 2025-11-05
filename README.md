https://shell.cloud.google.com/?show=ide%2Cterminal
####agregar sudo
apt install sudo
    2  apt install sudo
    3  apt install sudo
    4  apt install sudo
    5  su passwd headless
    6  sudo passwd headless
    7  sudo usermod -aG sudo headless
    8  su usermod -aG sudo headless
    9   usermod -aG sudo headless
   10   usermod -aG sudo headless
   11   usermod -aG sudo headless
       5  su passwd root

chmod 755 xampp-linux-*-installer.run

Ejecuta el instalador

sudo ./xampp-linux-*-installer.run


sudo find / -name "*.qcow2" 






docker exec   -it obry bash




docker exec -u root -it obry bash




sudo sync; sudo sysctl -w vm.drop_caches=3   liberar rammmmmmmmmmmmmm
 
 sudo du -ah . | sort -rh | head -n 10 ver archuvos mas grades

docker system prune -a -f --volumes borrar todo
 
 docker system df
 
 
 docker run --name obry -p 6080:80 -p 5900:5900 -e VNC_RESOLUTION=1280x1024 --device /dev/kvm  yodascholtz/docker-android-whatsapp-avd


docker run --name obry -e WEB_VNC=true  -p 6080:80 -p 5900:5900 -e VNC_RESOLUTION=1280x1024 --device /dev/kvm -u  root yodascholtz/docker-android-whatsapp-avd

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

#######github desktop   ########


wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null

sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'

sudo apt update && sudo apt install github-desktop

###################2024 github

wget -qO - https://mirror.mwt.me/shiftkey-desktop/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/mwt-desktop.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/mwt-desktop.gpg] https://mirror.mwt.me/shiftkey-desktop/deb/ any main" > /etc/apt/sources.list.d/mwt-desktop.list'
sudo apt update && sudo apt install github-desktop



mklink /D "C:\ruta\del\enlace\simbólico" "C:\ruta\del\objetivo"

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





######actualizar ubuntu desde la terminal 

sudo apt update
sudo apt -y upgrade
sudo apt install -y update-manager-core
sudo nano /etc/update-manager/release-upgrades  # Cambia Prompt=lts a Prompt=normal
sudo do-release-upgrade









docker rm -f $(docker ps -aq)


docker rmi $(docker images -q)


docker volume prune

# 1. Eliminar todos los contenedores detenidos
docker rm $(docker ps -aq)

# 2. Eliminar todas las imágenes no utilizadas
docker rmi -f $(docker images -q)

# 3. Eliminar todos los volúmenes no utilizados
docker volume prune -f

# 4. Eliminar todas las redes no utilizadas
docker network prune -f

# 5. Eliminar todo (contenedores, imágenes, volúmenes y redes no utilizados)
docker system prune -a --volumes -f

# 6. Verificar el espacio liberado
docker system df




     docker build -t docker-emulator-android-30  .



docker run --rm --privileged -e ANDROID_ARCH="x86" -v /dev/kvm:/dev/kvm docker-emulator-android-30



docker run -d --name obry --shm-size 2G -P -p 8888:5901 -p 8899:6901 -e VNC_RESOLUTION=1280x1024  -u root  obryanvip/obryjulio:2027

docker run -d --name obry --shm-size 2G -P -p 8888:5901 -p 8899:6901 -e VNC_RESOLUTION=1280x1024  -u root --privileged -e ANDROID_ARCH="x86" -v /dev/kvm:/dev/kvm docker-emulator-android-30

docker rm -f $(docker ps -aq)


docker rmi $(docker images -q)


docker volume prune

# 1. Eliminar todos los contenedores detenidos
docker rm $(docker ps -aq)

# 2. Eliminar todas las imágenes no utilizadas
docker rmi -f $(docker images -q)

# 3. Eliminar todos los volúmenes no utilizados
docker volume prune -f

# 4. Eliminar todas las redes no utilizadas
docker network prune -f

# 5. Eliminar todo (contenedores, imágenes, volúmenes y redes no utilizados)
docker system prune -a --volumes -f

# 6. Verificar el espacio liberado
docker system df




     docker build -t docker-emulator-android-30  .



docker run --rm --privileged -e ANDROID_ARCH="x86" -v /dev/kvm:/dev/kvm docker-emulator-android-30



docker run -d --name obry --shm-size 2G -P -p 8888:5901 -p 8899:6901 -e VNC_RESOLUTION=1280x1024  -u root  obryanvip/obryjulio:2027

docker run -d --name obry --shm-size 2G -P -p 8888:5901 -p 8899:6901 -e VNC_RESOLUTION=1280x1024  -u root --privileged -e ANDROID_ARCH="x86" -v /dev/kvm:/dev/kvm docker-emulator-android-30


docker exec -it obry sudo apt install firefox 
docker exec -it obry  ./opt/sdk/noVNC/utils/launch.sh --listen 8080 
docker exec -it obry  /opt/sdk/funciono.sh
docker exec -it obry  /opt/sdk/start.sh

#te permite entrar al root de mi docker desde el terminal de afuera# #obry nombre del docker
docker exec -u root -it obry bash







######comprimir


tar -czvf android_backup.tar.gz -C /ruta/en/host .android



 cd /tmp/
    2  ls
    3  zip data dataw1115gb.img
    4  docker start obry
    5  docker stop obry
    6  docker start obry
    7  docker start obryu
    8  docker start obry
    9  a
   10  zip dataw1115gb24-02-2025.zip dataw1115gb24-02-2025.img
   11  c
   12  
     docker star obry
    2  dockr start obry
    3  docker start obry
      cp /workspaces/data.img /tmp/
      cp /workspaces/data.img /tmp/dataantesdeformatear.img
      cp /workspaces/data.img /tmp/dataw1115gb.img

      zip /tmp/dataw1115gb25-02-2025.zip /workspaces/data.img    --------) zip a tmp

     history


######descomprimir 
tar -xzvf android_backup.tar.gz -C /ruta/de/destino

#####permisos y enviar 

 chmod +x funciono.sh


docker cp funciono.sh obry:opt/sdk/



Que los datos del docker se guarden en   /workspaces/windows ejemplo las iso de windows 
docker run -it -v /workspaces/windows:/storage  -p 8006:8006 --device=/dev/kvm --device=/dev/net/tun --cap-add NET_ADMIN --stop-timeout 120 --name obry win




 cd /tmp/
    2  ls
    3  zip data dataw1115gb.img
    4  docker start obry
    5  docker stop obry
    6  docker start obry
    7  docker start obryu
    8  docker start obry
    9  a
   10  zip dataw1115gb24-02-2025.zip dataw1115gb24-02-2025.img
   11  c
   12  
     docker star obry
    2  dockr start obry
    3  docker start obry
      cp /workspaces/data.img /tmp/
      cp /workspaces/data.img /tmp/dataantesdeformatear.img
      cp /workspaces/data.img /tmp/dataw1115gb.img
         zip dataw1115gb25-02-2025.zip data.img

    sudo apt update 
      sudo apt-get install p7zip-full

      zip -r -s 98m data.img.enparte /workspaces/data.img
    zip -r mozilla75mb.zip .mozilla

7z x mozilla_pro.zip
zip -r mozilla75mb.zip .mozilla
zip -r mozilla75mb.zip .mozilla

sudo apt-get update
sudo apt-get install -y qemu-utils
qemu-img resize /tmp/data.img 15G
zip -s 90m /workspaces/data.zip /tmp/data.img    --------)  guarda en /workspaces/data.zip
zip -s 90m /tmp/data.zip /tmp/data.img             ---------) guarda en tmp /tmp/data.zip data.z001 .... data.z37
zip -s 0 /workspaces/data.zip --out /workspaces/data_full.zip
unzip /workspaces/data_full.zip


enlave en windows mklink /D "C:\Users\Docker\Desktop\enlaces" "\\host.lan\Data\w11\w11"


