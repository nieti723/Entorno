Funcion mostrarNumeros(num Por Referencia)
	Definir i, j Como Entero;
	Escribir "---NUMEROS---";
	Escribir "1  2  3  Media";
	Para i=0 Hasta 5 Hacer
		para j=0 Hasta 3 Hacer
			Escribir num[i,j] "  " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
FinFuncion

Algoritmo Ej7P9
	Definir num,i,j Como Entero;
	Dimension num[6,4];
	Para i=0 Hasta 5 Hacer
		Escribir "---FILA " i+1  "---";
		para j=0 Hasta 3 Hacer
			si	j<3 Entonces
				Escribir "Escriba el " j+1 " número: " Sin Saltar;
				Leer num[i,j];
			SiNo
				num[i,j]=(num[i,0]+num[i,1]+num[i,2])/3;
			FinSi
		FinPara
		Limpiar Pantalla;
	FinPara
	mostrarNumeros(num);
FinAlgoritmo
