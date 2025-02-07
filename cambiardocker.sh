#!/bin/bash

# Crear el directorio /tmp/dockerobry si no existe
sudo mkdir -p /tmp/dockerobry

# Modificar el archivo de configuración de Docker para cambiar el directorio de datos
sudo tee /etc/docker/daemon.json > /dev/null <<EOT
{
  "data-root": "/tmp/dockerobry"
}
EOT

# Reiniciar el servicio de Docker para aplicar los cambios
#sudo systemctl restart docker

echo "El directorio de datos de Docker ha sido cambiado a /tmp/dockerobry y el servicio Docker ha sido reiniciado. reimicia manualmente"
