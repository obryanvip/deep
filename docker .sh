docker
docker run -p 8080:80 -e RESOLUTION=600x600 -e DISPLAY=host.docker.internal:0.0 -v /dev/shm:/dev/shm zachdeibert/android-studio






docker run zachdeibert/android-studio $DISPLAY $USER


docker run -p 8080:80 -e RESOLUTION=600x600 -v /dev/shm:/dev/shm zachdeibert/android-studio
docker run -d --name YourName --shm-size 2G -P -p 8888:5901 -p 8899:6901 -e VNC_RESOLUTION=1920x1080 -e VNC_PW=ppllmmoo --device /dev/kvm --user $(id -u):$(id -g)   zachdeibert/android-studio




###Clasico

docker run -p 8080:80 -e RESOLUTION=600x600 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc 
