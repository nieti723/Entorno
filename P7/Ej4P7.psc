//Autor Juan Nieto Acosta

Funcion primo<-esPrimo (n)
	Definir div,i Como Entero;
	Definir primo Como Logico;
	Para i=1 Hasta n/2
		si n%i==0 Entonces
			div=div+1;
		FinSi
	FinPara
	si div>1 Entonces
		primo = Falso;
	SiNo
		primo = Verdadero;
	FinSi
FinFuncion

Algoritmo Ej4P7
	Definir n Como Entero;
	Definir primo Como Logico;
	Escribir "Este programa pide un n�mero por teclado y determina si es primo o no";
	Escribir "Introduzca el n�mero: " Sin Saltar;
	Leer n;
	primo=esPrimo(n);
	Escribir primo;
FinAlgoritmo
