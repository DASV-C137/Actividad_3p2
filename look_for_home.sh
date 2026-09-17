#!/bin/bash

# Se fija la carpeta por defecto y se pide la palabra al usuario
directorio="carpeta"
read -p "Ingresa la palabra a buscar: " palabra

# Validar que la carpeta exista en el directorio actual
if [ ! -d "$directorio" ]; then
    echo "Error: La carpeta '$directorio' no existe en esta ubicación."
    exit 1
fi

echo -e "\nBuscando '$palabra' en archivos .txt dentro de '$directorio'..."
echo "------------------------------------------------------"

# Búsqueda en los archivos .txt de la carpeta
resultados=$(grep -ril --include="*.txt" "$palabra" "$directorio")

# Mostrar los resultados
if [ -z "$resultados" ]; then
    echo "No se encontraron coincidencias."
else
    echo "$resultados"
fi
