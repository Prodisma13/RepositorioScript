#!/bin/bash

#Segunda Versión de programa para git
#Esta segunda versión te permite elegir que hacer a la hora de usar git
#Realizado por Prodisma13


echo "Programa git"
echo "---------------------------------------------"

echo "" #Linea de espacio

#Enunciado
echo "Selecciona que quieres hacer"
echo "" #Linea de espacio
echo "1. Iniciar sesión (Email y nombre de GitHub)"
echo "" #Linea de espacio
echo "2. Inicializar repositorio"
echo "" #Linea de espacio
echo "3. Ver el estado del repositorio"
echo "" #Linea de espacio
echo "4. Añadir los cambios realizados en el directorio"
echo "" #Lindea de espacio
echo "5. Guardar esos cambios con comentario incluido"

echo "" #Linea de espacio

#Selección de opción
read -p "Elige que quieres hacer(1-5): " seleccion

echo "" #Linea de espacio
#Opciones

case $seleccion in 

	1)
		read -p "Introduce tu email de GitHub: " email
		git config --global user.email $email

		echo "" #Linea de espacio

		read -p "Introduce tu nombre de GitHub: " nombre
		git config --global user.name $nombre
	;;

	2)
		echo "Inicializando repositorio..."
		git init
	;;

	3)
		echo "Analizando estado..."
		git status
	;;

	4)
		echo "Añadiendo cambios..."
		echo "" #Linea de espacio
		echo "Estos son los archivos que se encuentran en este direcotrio: "
		echo "//////////////////////////////////////////////////////////"
		ls
		echo "//////////////////////////////////////////////////////////"
		echo "" #Linea de espacio
		read -p "Escribe que archivo quieres añadir a los cambios: " archivo
		git add $archivo
		echo "Los archivos se han añadido correctamente"
	;;

	5)
		echo "Realizando cambios..."
		echo "" #Linea de espacio
		read -p "Escribe el comentario que quieras poner: " comentario
		echo "" #Linea de espacio
		git commit -m "$comentario"
	;;
esac		
