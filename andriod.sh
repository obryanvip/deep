docker run -d -p 6080:6080 -e EMULATOR_DEVICE="Samsung Galaxy S10" -e WEB_VNC=true --device /dev/kvm --name android-container budtmo/docker-android:emulator_13.0

docker run -d -p 6080:6080 -e EMULATOR_DEVICE="Samsung Galaxy S10" -e WEB_VNC=true --device /dev/kvm --name obry  budtmo/docker-android:emulator_9.0

run --privileged -d

docker exec -it obry adb emu sms send 04249470620 23232



docker exec -it obry sudo apt update


