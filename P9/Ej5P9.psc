Funcion muestraNombres(nombre Por Referencia, length Por Referencia, tama�o)
	Definir i Como Entero;
	Escribir "Nombre  Longitud";
	para i=0 Hasta tama�o-1
		Escribir nombre[i] "    " length[i];
	FinPara
FinFuncion

Algoritmo Ej5P9
	Definir nombre Como Caracter;
	Definir length, i, tama�o Como Entero;
	Escribir "Introduce la cantidad de nombres a procesar: " Sin Saltar;
	Leer tama�o;
	Dimension nombre[tama�o], length[tama�o];
	Para i=0 Hasta tama�o-1 Hacer
		Escribir "Escribe el " i+1 " nombre: " Sin Saltar;
		Leer nombre[i];
		length[i]=Longitud(nombre[i]);
	FinPara
	muestraNombres(nombre, length, tama�o);
FinAlgoritmo
