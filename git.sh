#!/bin/bash

#Programa de prueba para inicializar repositorio y subir los cambios a GitHub

echo "Programa git"
echo "-----------------------------------------------"

#Nos identificamos
read -p "Introduce tu email: " email
git config --global user.email $email #Comando para introducir email

echo "" #Linea de espacio

read -p "Introduce tu nombre de usuario de GitHub: " nombre
git config --global user.name $nombre #Comando para introducir nombre GitHub

#Inicializamos repositorio
echo "//Inicializando repositorio..."
git init 

