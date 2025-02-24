
#sudo apt-get update -y
#sudo apt-get install -y qemu-system-x86-64
#wget -O RTL8139F.iso 'https://drive.google.com/uc?export=download&id=1wDL8vo9mmYKw1HKXZzaYHoKmzSt_wXai'
#wget -O Tiny10.qcow2 'https://www.dropbox.com/s/v3gak59mvkqb7g6/Tiny10.qcow2?dl=1'

#!curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
sudo qemu-system-x86_64 \
  -m 8G \
  -cpu host \
  -boot order=d \
  -drive file=Tiny10.qcow2 \
   -drive file=RTL8139F.iso,media=cdrom,index=2 \
  -device usb-ehci,id=usb,bus=pci.0,addr=0x4 \
  -drive file=/workspaces/deep/carpeta_temporal/archivo_salida.iso,media=cdrom \
  -device usb-tablet \
  -vnc :0 \
  -cpu n270 \
  -vga std \
  -device e1000,netdev=n0 -netdev user,id=n0 \
    -accel  kvm \
