Algoritmo Ej3P9
	Definir num,i,suma Como Entero;
	Dimension num[5];
	para i=0 Hasta 4 Hacer
		Escribir "Escribe el " i+1 " valor: " Sin Saltar;
		Leer num[i];
	FinPara
	Para i=0 Hasta 4 Hacer
		suma=suma+num[i];
	FinPara
	Escribir "Array: " Sin Saltar;
	Para i=0 Hasta 4 Hacer
		Escribir num[i] " " Sin Saltar;
	FinPara
	Escribir "";
	Escribir "Suma: " suma;
FinAlgoritmo
