#!/bin/bash 

#comprueba que el usuario ha introducido un solo argumento
if [ "$#" -ne "1" ]
then
  echo "Sintaxis: practica2_3.sh <nombre_archivo>"
else
  
  if [ -f "$1" ]
  then
    #convierte en ejecutable para el dueño y el grupo
    chmod ug+x "$1"
    #muestra el modo final mediante el comando stat 
    stat -c '%A' "$1"
  else
    echo "$1 no existe"
  fi
fi