docker run -d -p 6080:6080 -e EMULATOR_DEVICE="Samsung Galaxy S10" -e WEB_VNC=true --device /dev/kvm --name android-container budtmo/docker-android:emulator_13.0

docker run -d -p 6080:6080 -e EMULATOR_DEVICE="Samsung Galaxy S10" -e WEB_VNC=true --device /dev/kvm --name obry  budtmo/docker-android:emulator_9.0

docker run -d -p 6080:6080 -e EMULATOR_DEVICE="Samsung Galaxy S10" -e WEB_VNC=true --device /dev/kvm budtmo/docker-android:emulator_13.0
run --privileged -d

docker exec -it obry adb emu sms send 04249470620 23232



docker exec -it obry sudo apt update


docker run -it \
    --device /dev/kvm \
    -e EXTRA="-display none -vnc 0.0.0.0:99,password=off" \
    -p 5555:5555 \
    -p 5999:5999 \
    sickcodes/dock-droid:latest




    #############################2024 pasar a docker desde terminal

 docker ps -a  # ver contenedores activos
# Contenedores en ejecución
docker ps

# Todos los contenedores (incluidos los detenidos)
docker ps -a

docker start obry   #abrir despues de caido el sistema
docker stop obry

    docker exec -it obry sudo apt update
     docker exec -it sudo apt install default-jdk -y
      docker exec -it keen_lumiere  sudo apt install default-jdk -y    #keen_lumiere es el usuario
      docker exec -it keen_lumiere  curl -L -o android-studio-2022.3.1.19-linux.tar.gz \https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.3.1.19/android-studio-2022.3.1.19-linux.tar.gz ; #install android studio en docker

emulador de android docker google clound 
docker run -d -p 6080:6080 -e EMULATOR_DEVICE="Samsung Galaxy S10" -e WEB_VNC=true  --name android-container budtmo/docker-android:emulator_13.0

