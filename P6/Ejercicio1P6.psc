//Autor Juan Nieto Acosta
//Dise�a un algoritmo que dado un n�mero por teclado averig�e si es o no primo.
Algoritmo Ejercicio1P6
	Definir n,divisores,i Como Entero;
	Escribir "Este programa determina si un n�mero ingresado por teclado es primo o no";
	Escribir "Introduzca el valor a comprobar: " Sin Saltar;
	Leer n;
	para i=1 Hasta n/2 Hacer
		si n%i==0 Entonces
			divisores = divisores +1;
		FinSi
	FinPara
	
	si divisores>1 Entonces
		Escribir "El n�mero " n " no es primo";
	SiNo
		Escribir "El n�mero " n " es primo";
	FinSi
FinAlgoritmo
