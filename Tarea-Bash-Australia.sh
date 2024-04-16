#!/bin/bash

echo -e "\nALTO! antes de entrar al país tiene que responder unas preguntas\n"

read -p "¿Cual es la actual vigencia de su pasaporte en meses? " vigencia
read -p "¿Cuantos días piensa permanecer en Australia? " dias
read -p "¿Tiene usted antecedentes penales? " antecedentes

echo -e "\nOK, la actual vigencias de su pasaporte es $vigencia meses, su estancia en el país va a ser de $dias dias y $antecedentes tiene antecedentes penales"

if [ $vigencia -ge 6 ] && [ $dias -le 90 ] && [ $antecedentes == "no" ]
then
	echo -e "\nAdelante, disfrute usted de su estancia en Australia.\n"
else
	echo -e "\nLo sentimos, usted no está autorizado a entrar a Australia.\n"
fi
