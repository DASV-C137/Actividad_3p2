#!/bin/bash
read -p "Ingresa la palabra a buscar: " palabra
echo -e "\nBuscando '$palabra' en archivos .txt dentro de 'carpeta'..."
echo "------------------------------------------------------"
resultados=$(grep -ril --include="*.txt" "$palabra" carpeta)
echo "$resultados"
