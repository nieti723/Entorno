Algoritmo Ej4P9
	Definir num,i,suma, tama�o Como Entero;
	Escribir "Introduce el tama�o del array: " Sin Saltar;
	Leer tama�o;
	Dimension num[tama�o];
	para i=0 Hasta tama�o-1 Hacer
		Escribir "Escribe el " i+1 " valor: " Sin Saltar;
		Leer num[i];
	FinPara
	Para i=0 Hasta tama�o-1 Hacer
		suma=suma+num[i];
	FinPara
	Escribir "Array: " Sin Saltar;
	Para i=0 Hasta tama�o-1 Hacer
		Escribir num[i] " " Sin Saltar;
	FinPara
	Escribir "";
	Escribir "Suma: " suma;
FinAlgoritmo
