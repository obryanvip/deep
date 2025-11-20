#clonar github frefoxcolab y actualizar github descomentar git clone la primera vez
#se debe descomprimir .so sacarlo de la carpeta y dejarlo afuera
%%shell
#!/bin/bash
#git clone https://github.com/obryanvip/nube
git clone https://tGQ2BT4Pn54xRR4GSsrUH3qXpNl@github.com/obryanvip/nubecolab
# Agregar los cambios a la zona de preparación
cd nubecolab
 git config --global user.email "obryan.vip@gmail.com"
  git config --global user.name "obryanvip"

#!export GITHUB_TOKEN=nNh0V9TlFsSdq3W7Mat

git add .

# Realizar un commit con un mensaje descriptivo de los cambios
git commit -m "28-088-2024"

# Enviar los cambios al repositorio remoto en GitHub
git push
