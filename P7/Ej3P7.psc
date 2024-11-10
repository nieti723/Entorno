//Autor Juan Nieto Acosta

Funcion a<-areaCirculo (r)
	definir a Como Real;
	a= PI*r^2;
FinFuncion



Algoritmo Ej3P7
	Escribir "Este programa calcula el área de un círculo introduciendo su radio por teclado";
	Escribir "Introduce el radio: " Sin Saltar;
	Definir r como entero;
	Definir area como real;
	Leer r;
	area=areaCirculo(r);
	Escribir "El área del círculo de radio" r " es " area "cm²";
	
FinAlgoritmo
