#!/bin/bash

echo "Bienvenid@, tienes la oportunidad de conseguir el trabajo de tu vida, para ello contesta el siguiente formulario"
read -p "¿En que ciudad vives actualmente? " ciudad
read -p "¿Que edad tienes? " edad
read -p "¿Cuantos años de experiencia tienes en un puesto igual o similar? " antiguedad
read -p "¿Tienes disponibilidad para viajar? " disponibilidad
read -p "¿Que nivel de inglés tienes? (NADA|A1|A2|B1|B2|C1|C2|) " ingles


echo -e "\nactualmente vives en $ciudad"
echo "tienes $edad años"
echo "cuentas con $antiguedad años de experiencia"
if [ $disponibilidad == "si" ] || [ $disponibilidad == "s" ]
then
	echo "Si tienes disponibilidad para viajar"
else
	echo "No tienes disponibilidad para viajar"
fi
echo "tu nivel de inglés es $ingles"

if [ $ciudad == "Bilbao" ] && [ $edad -ge 18 ] && [ $antiguedad -ge 1 ] && [ $disponibilidad == "si" ] || [ $disponibilidad == "s" ] && [ $ingles == "B1" ] || [ $ingles == "B2" ] || [ $ingles == "C1" ] || [ $ingles == "C2" ]
	
then
	echo -e "\n¡Ehorabuena! eres apt@\n"
else
	echo -e "\nLo sentimos no das el perfil adecuado, suerte en el futuro\n"
fi
