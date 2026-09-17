palabra="$1"
echo "palabra a buscar: $palabra"
echo "Ubicacion actual"
pwd
grep -r --color "$palabra" carpeta
