#!/bin/bash

nivelesDeIngles=("B1" "b1" "B2" "b2" "C1" "c1" "C2" "c2")

read -p "Donde vives? " ciudad

if [ "$ciudad" == "Bilbao" ] || [ "$ciudad" == "bilbao" ]; then 
	read -p "Cuantos años tienes? " edad
	if [ $edad -gt 18 ]; then
		read -p "Cuantos años de experencia previa tienes? " experencia
		if [ $experencia -ge 1 ]; then
			read -p "Estas disponible para viajar? Si/No " disponibilidadParaViajar
			if [ "$disponibilidadParaViajar" == "Si" ]; then
				read -p "Cual es tu nivel en ingles? " nivelDeIngles
				for nivel in "${nivelesDeIngles[@]}"
				do :

				if [ "$nivelDeIngles" == "$nivel" ]; then
					echo "Puedes aplicar para esta oferta comples con todos los requisitos"
					tieneNivelDeInglesRequirido="Si"
					break
				fi
	       				tieneNivelDeIng9lesRequirido="No"
				done
				if [ "$tieneNivelDeInglesRequirido" == "No" ]; then
					echo "No puedes aplicar debes tener al menos un B1"
				fi


			else 
			      echo "No puedes aplicar debes estar disponible para viajar"
			fi
		else
			echo "No puedes aplicar debes tener al menos un año de experencia previa"
		fi
	else
		echo "No puedes aplicar a esta oferta debes ser mayor de 18 años"
	fi
else
	echo "No puedes aplicar a esta oferta porque no vives en Bilbao" 
fi


echo "Abajo le dejemos su informacion: "

echo "Usted vive en $ciudad"
echo "Usted tiene $edad años"
echo "Usted tiene $experencia año(s) de experencia laboral"
echo "Su respuesta sobre la disponibilidad de viaje es $disponibilidadParaViajar"
echo "Tiene el nivel de ingles adecuado $tieneNivelDeInglesRequirido"
