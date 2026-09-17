#!/bin/bash

# Se fija la carpeta por defecto y se pide la palabra al usuario
read -p "Ingresa la palabra a buscar: " palabra


echo -e "\nBuscando '$palabra' en archivos .txt dentro de 'carpeta'..."
echo "------------------------------------------------------"

# Búsqueda en los archivos .txt de la carpeta
resultados=$(grep -ril --include="*.txt" "$palabra" carpeta)

echo "$resultados"
