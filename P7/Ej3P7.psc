//Autor Juan Nieto Acosta

Funcion a<-areaCirculo (r)
	definir a Como Real;
	a= PI*r^2;
FinFuncion



Algoritmo Ej3P7
	Escribir "Este programa calcula el �rea de un c�rculo introduciendo su radio por teclado";
	Escribir "Introduce el radio: " Sin Saltar;
	Definir r como entero;
	Definir area como real;
	Leer r;
	area=areaCirculo(r);
	Escribir "El �rea del c�rculo de radio" r " es " area "cm�";
	
FinAlgoritmo
