//Auto Juan Nieto Acosta

Funcion areaCirculo (r)
	definir area Como Real;
	area= PI*r^2;
	Escribir "El �rea del c�rculo de radio " r " es: " area;
FinFuncion


Algoritmo Ej1P7
	Escribir "Este programa calcula el �rea de un c�rculo introduciendo su radio por teclado";
	Escribir "Introduce el radio: " Sin Saltar;
	Definir r como entero;
	Leer r;
	areaCirculo(r);
FinAlgoritmo
