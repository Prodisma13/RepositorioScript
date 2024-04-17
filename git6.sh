#!/bin/bash

#Sexta Versión de programa para git
#Esta sexta versión te permite elegir que hacer a la hora de usar git
#Realizado por Prodisma13


echo "Programa git"
echo "---------------------------------------------"

echo "" #Linea de espacio

#Enunciado
echo "Selecciona que quieres hacer"
echo "" #Linea de espacio
echo "1. Iniciar sesión (Email y nombre de GitHub)"
echo "" #Linea de espacio
echo "2. Clonar repositorio"
echo "" #Linea de espacio
echo "3. Inicializar repositorio"
echo "" #Linea de espacio
echo "4. Ver el estado del repositorio"
echo "" #Linea de espacio
echo "5. Añadir los cambios realizados en el directorio"
echo "" #Lindea de espacio
echo "6. Guardar esos cambios con comentario incluido"
echo "" #Linea de espacio
echo "7. Subimos los archivos a el repositorio"
echo "" #Linea de espacio
echo "Opciones extras"
echo "-----------------------------------------------------"
echo "" #Linea de espacio
echo "8. Mover script al directorio deseado (Copia)"
echo "" #Linea de espacio
echo "9. Eliminar script del directorio actual"


echo "" #Linea de espacio

#Selección de opción
read -p "Elige que quieres hacer(1-9): " seleccion

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
		read -p "Pega aqui la url de tu repositorio: " url
		git clone $url
		echo "" #Linea de espacio
		echo "Clonación realizada con éxito"
	;;

	3)
		echo "Inicializando repositorio..."
		git init
	;;

	4)
		echo "Analizando estado..."
		git status
	;;

	5)
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

	6)
		echo "Realizando cambios..."
		echo "" #Linea de espacio
		read -p "Escribe el comentario que quieras poner: " comentario
		echo "" #Linea de espacio
		git commit -m "$comentario"
	;;

	7)
		echo "Subiendo el contenido..."
		echo "" #Linea de espacio
		git push	
	;;

	8)
		echo "Copiar script"
		echo "" #Linea de espacio
		echo "/////////////////////////////////////////////////////"
		echo "" #Linea de espacio
		ls *.sh
		echo "" #Linea de espacio
		echo "/////////////////////////////////////////////////////"
		echo "" #Linea de espacio
		read -p "Escribe el script que quieres copiar:" script
		read -p "Escribe la ruta para copiar el script al directorio deseado:" ruta 
		echo "" #Linea de espacio
		echo "Copiando script..."
		if [ -e $script ] && [ -e $ruta ]; then
			cp $script $ruta
			echo "Tu script se ha copiado correctamente en el directorio deseado."
		else 
			echo "No se ha encontrado el $script o el directorio $ruta deseado."
		fi
	;;

	9)
		echo "Eliminar script"
		echo "" #Linea de espacio
		echo "////////////////////////////////////////////////////////"
		echo "" #Linea de espacio
		ls *.sh
		echo "" #Linea de espacio
		echo "////////////////////////////////////////////////////////"
		echo "" #Linea de espacio
		read -p "Escribe el script que quieres eliminar:" script
		echo "" #Linea de espacio
		echo "Eliminando script..."
		echo "" #Linea de espacio
		if [ -e $script ]; then
			rm $script
			echo "El archivo $script ha sido eliminado correctamente"
		else 
			echo "No se ha encontrado el archivo $script en el directroio actual"
		fi
	;;

esac		

		
