#!/bin/bash

# --- Script para descargar desde pCloud (Versión 2.0) ---
#
# Requiere: curl, jq
#
# Corregido para manejar datos de pCloud que ocupan múltiples líneas.
# -----------------------------------------------------------

# 1. Verificar si 'jq' está instalado
if ! command -v jq &> /dev/null; then
    echo "Error: Este script requiere 'jq'."
    echo "Por favor, instálalo para continuar (ej: sudo apt install jq)"
    exit 1
fi

# 2. Pedir la URL al usuario
echo "Pega la URL de la página de descarga de pCloud:"
read pcloud_url

if [ -z "$pcloud_url" ]; then
    echo "No se ingresó URL. Abortando."
    exit 1
fi

echo "Analizando la página... Por favor espera."

# 3. Obtener el contenido HTML de la página
html_content=$(curl -sL "$pcloud_url")

# 4. Extraer el bloque de datos JSON (es multi-línea)
# Busca desde 'var publinkData = ' hasta la línea que termina en '};'
json_data_block=$(echo "$html_content" | sed -n '/var publinkData = /,/};/p')

if [ -z "$json_data_block" ]; then
    echo "Error: No se pudo encontrar 'publinkData' en la página."
    echo "Asegúrate de que la URL sea correcta y sea una página pública de pCloud."
    exit 1
fi

# 5. Limpiar los datos para que sean JSON válido
# Elimina 'var publinkData = ' de la primera línea
# Elimina el ';' de la última línea
json_data=$(echo "$json_data_block" | sed '1s/^[ \t]*var publinkData = //; $s/;//')

# 6. Extraer el enlace y el nombre del archivo con 'jq'
download_link=$(echo "$json_data" | jq -r '.downloadlink')
filename=$(echo "$json_data" | jq -r '.metadata.name')

# 7. Validar que se encontró la información
if [ -z "$download_link" ] || [ "$download_link" == "null" ]; then
    echo "Error: No se pudo extraer el enlace de descarga (downloadlink)."
    echo "JSON extraído: $json_data" # Ayuda para depurar
    exit 1
fi

if [ -z "$filename" ] || [ "$filename" == "null" ]; then
    echo "Advertencia: No se pudo encontrar el nombre del archivo. Se usará un nombre genérico."
    filename="descarga_pcloud_file"
fi

# 8. Mostrar información y comenzar la descarga
echo "---"
echo "Archivo a descargar: $filename"
echo "Enlace directo: $download_link"
echo "Iniciando descarga con wget..."
echo "---"

wget --show-progress -O "$filename" "$download_link"

echo "---"
echo "Descarga de '$filename' completada."