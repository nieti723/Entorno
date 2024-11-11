Algoritmo Ej4P9
	Definir num,i,suma, tamaño Como Entero;
	Escribir "Introduce el tamaño del array: " Sin Saltar;
	Leer tamaño;
	Dimension num[tamaño];
	para i=0 Hasta tamaño-1 Hacer
		Escribir "Escribe el " i+1 " valor: " Sin Saltar;
		Leer num[i];
	FinPara
	Para i=0 Hasta tamaño-1 Hacer
		suma=suma+num[i];
	FinPara
	Escribir "Array: " Sin Saltar;
	Para i=0 Hasta tamaño-1 Hacer
		Escribir num[i] " " Sin Saltar;
	FinPara
	Escribir "";
	Escribir "Suma: " suma;
FinAlgoritmo
