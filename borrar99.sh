#!/bin/bash
### darle permisos a scrip chmod +x borrar99.sh
# Directorio a buscar (puedes cambiarlo)
DIRECTORIO="/home/gitpod/Desktop/gitpodconfig12-12-2024/copigitpod/"




echo "Buscando archivos mayores de 99 MB en el directorio: $DIRECTORIO"

# Encuentra y lista archivos mayores de 99 MB, incluyendo subcarpetas y carpetas ocultas
find "$DIRECTORIO" -type f -size +99M | while read -r archivo; do
  echo "Archivo encontrado: $archivo"
  # Borrar el archivo
  rm -f "$archivo"
  echo "Archivo borrado: $archivo"
done

echo "Proceso completado."