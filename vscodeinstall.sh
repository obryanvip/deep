wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo dpkg -i ./code_*.deb
sudo apt-get install -f



##Import the Microsoft GPG key:

sudo apt update
sudo apt install wget gpg


#wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
#sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/packages.microsoft.gpg

   
        


#sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'


    

#sudo apt update
#sudo apt install code


