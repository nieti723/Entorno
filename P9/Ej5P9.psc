Funcion muestraNombres(nombre Por Referencia, length Por Referencia, tamaño)
	Definir i Como Entero;
	Escribir "Nombre  Longitud";
	para i=0 Hasta tamaño-1
		Escribir nombre[i] "    " length[i];
	FinPara
FinFuncion

Algoritmo Ej5P9
	Definir nombre Como Caracter;
	Definir length, i, tamaño Como Entero;
	Escribir "Introduce la cantidad de nombres a procesar: " Sin Saltar;
	Leer tamaño;
	Dimension nombre[tamaño], length[tamaño];
	Para i=0 Hasta tamaño-1 Hacer
		Escribir "Escribe el " i+1 " nombre: " Sin Saltar;
		Leer nombre[i];
		length[i]=Longitud(nombre[i]);
	FinPara
	muestraNombres(nombre, length, tamaño);
FinAlgoritmo
