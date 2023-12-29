docker run -d -p 6080:6080 -e EMULATOR_DEVICE="Samsung Galaxy S10" -e WEB_VNC=true --device /dev/kvm --name android-container budtmo/docker-android:emulator_13.0

docker run -d -p 6080:6080 -e EMULATOR_DEVICE="Samsung Galaxy S10" -e WEB_VNC=true --device /dev/kvm --name obry  budtmo/docker-android:emulator_9.0

docker run -d -p 6080:6080 -e EMULATOR_DEVICE="Samsung Galaxy S10" -e WEB_VNC=true --device /dev/kvm budtmo/docker-android:emulator_13.0
run --privileged -d

docker exec -it obry adb emu sms send 04249470620 23232
docker exec -u root obry apt install unzip




docker exec -it obry sudo apt update


docker run -it \
    --device /dev/kvm \
    -e EXTRA="-display none -vnc 0.0.0.0:99,password=off" \
    -p 5555:5555 \
    -p 5999:5999 \
    sickcodes/dock-droid:latest


