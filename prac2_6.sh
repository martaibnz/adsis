#!/bin/bash 

#el nombre del archivo con la última modificación más antigua se asigna a la variable dir
dir=$(stat -c %n,%Y ~/binN2Z 2> /dev/null | sort -t ',' -k 2 | head -n 1 |cut -d ',' -f 1)

#no existe el directorio -> lo creo
if [ "$dir" = "" ]
  then
  dir=$(mktemp -d ~/binN2Z)
  echo "Se ha creado el directorio $dir"
fi
count=0
echo "Directorio destino de copia: $dir"
for param in $(ls)
do
#comprueba que son archivos regulares y ejecutables
if [ -f "$param" -a -x "$param" ]
  then
  #copia los archivos en el directorio
  cp "$param" "$dir"
  echo "./$param ha sido copiado a $dir"  
  count=$((count+1))
fi
done
  if [ "$count" -eq 0 ]
  then
    echo "No se ha copiado ningun archivo"
  else
    echo "Se han copiado $count archivos"
fi