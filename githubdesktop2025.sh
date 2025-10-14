#Navega a la carpeta de Descargas.
#Es un buen lugar para descargar el archivo temporalmente.

#Descarga el paquete .deb más reciente.
#Este comando descargará la última versión disponible del paquete para Ubuntu/Debian.

#Bash

wget https://github.com/shiftkey/desktop/releases/download/release-3.3.13-linux1/GitHubDesktop-linux-amd64-3.3.13-linux1.deb -O github-desktop.deb
#Nota: El enlace anterior es para la versión 3.3.13. Si en el futuro quieres una versión más nueva, puedes visitar la página de lanzamientos de GitHub Desktop y copiar el enlace del archivo .deb.

#Instala el paquete descargado.
#apt instalará el archivo local (./github-desktop.deb) y se encargará de descargar e instalar automáticamente cualquier dependencia que necesite.

#Bash

sudo apt install ./github-desktop.deb

#Una vez terminado, puedes borrar el archivo de instalación si lo deseas:

#Bash

rm ./github-desktop.deb
