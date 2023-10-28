sudo apt update > /dev/null
sudo apt install --assume-yes --fix-broken curl #administrador de archivos
curl -L -o chrome-remote-desktop_current_amd64.deb \https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo DEBIAN_FRONTEND=noninteractive \apt-get install --assume-yes --fix-broken ./chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken 
curl -L -o google-chrome-stable_current_amd64.deb \https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo DEBIAN_FRONTEND=noninteractive \apt-get install --assume-yes --fix-broken ./google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken konsole
sudo apt install --assume-yes --fix-broken  firefox
sudo apt install --assume-yes --fix-broken  chromium
sudo apt install --assume-yes --fix-broken thunar #administrador de archivos
#novnc local

