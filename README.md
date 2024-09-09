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


######descomprimir 
tar -xzvf android_backup.tar.gz -C /ruta/de/destino





