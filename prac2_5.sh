#!/bin/bash 
echo -n "Introduzca el nombre de un directorio: "
read ruta

#comprueba si es un directorio
if [ ! -d "$ruta" ]
then
  echo "$ruta no es un directorio"
else
  #numArch contendrá el numero de archivos que hay en el directorio ruta
  numArch=$(ls -l "$ruta" | grep ^- | wc -l)
  #numDir contendrá el numero de directorios que hay en el directorio ruta
  numDir=$(ls -l "$ruta" | grep ^d | wc -l)
    echo "El numero de ficheros y directorios en $ruta es de $numArch y $numDir, respectivamente"
fi