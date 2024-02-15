#!/bin/bash 

num='[0-9]'
letra='[a-zA-Z]'
echo -n "Introduzca una tecla: "
read -n1 tecla
read -r resto
if [[ $tecla =~ $letra ]]
  then 
    echo "$tecla es una letra"
elif [[ $tecla =~ $num ]]
  then 
    echo "$tecla es un numero"
else
  echo "$tecla es un caracter especial"
fi