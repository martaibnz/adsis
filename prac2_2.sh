#!/bin/bash 
for fich in "$@"
do
  #comprobamos si existe el fichero
  if [ -f "$fich" ]
  then
      #muestra el contenido del fichero
      more "$fich"
  else
    echo "$fich no es un fichero"
  fi
done