Algoritmo Ej6P9
	Definir num, mayor5, menor5, i Como Entero;
	Dimension num[10];
	para i=0 Hasta 9 Hacer
		num[i]=azar(10)+1;
		si num[i]>=5 Entonces
			mayor5=mayor5+1;
		SiNo
			menor5=menor5+1;
		FinSi
	FinPara
	Escribir "Vector: " Sin Saltar;
	para i=0 Hasta 9 Hacer
		Escribir num[i] " " Sin Saltar;
	FinPara
	Escribir "";
	Escribir "Mayores o iguales a 5: " mayor5;
	Escribir "Menores a 5: " menor5;
FinAlgoritmo
