//Autor Juan Nieto Acosta

Funcion cont<-veces(txt1,txt2)
	Definir long, cont,i Como Entero;
	long = Longitud(txt1);
	Para i=0 Hasta long-1
		si txt2==Subcadena(txt1,i,i) Entonces
			cont=cont+1;
		FinSi
	FinPara
FinFuncion


Algoritmo Ej7P7
	Escribir "En este programa el usuario introducir� una cadena de texto y un car�cter";
	Escribir "luego se mostrar� cuantas veces se repite ese car�cter en la cadena introducida";
	Definir cad, car Como Caracter;
	Definir cont Como Entero;
	Escribir "Introduzca la cadena: " Sin Saltar;
	Leer cad;
	Escribir "Introduzca el car�cter: " Sin Saltar;
	Leer car;
	cont = veces(cad,car);
	si cont>1 Entonces
		Escribir "El car�cter " car " se repite " cont " veces en la cadena " cad;
	SiNo
		Escribir "El car�cter " car " se repite " cont " vez en la cadena " cad;
	FinSi
	
FinAlgoritmo
