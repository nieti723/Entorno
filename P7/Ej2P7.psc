//Autor Juan Nieto Acosta

Funcion esPrimo (n)
	Definir div,i Como Entero;
	Para i=1 Hasta n/2
		si n%i==0 Entonces
			div=div+1;
		FinSi
	FinPara
	si div>1 Entonces
		Escribir "El n�mero " n " no es primo";
	SiNo
		Escribir "El n�mero " n " es primo";
	FinSi
FinFuncion



Algoritmo Ej2P7
	Definir n Como Entero;
	Escribir "Este programa pide un n�mero por teclado y determina si es primo o no";
	Escribir "Introduzca el n�mero: " Sin Saltar;
	Leer n;
	esPrimo(n);
FinAlgoritmo
