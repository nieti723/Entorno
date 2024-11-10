//Autor Juan Nieto Acosta

Funcion num<-valorNum(n1,n2)
	Definir num Como Entero;
	si (n1==n2) Entonces
		num=0;
	SiNo
		si (n1>n2) Entonces
			num=1;
		SiNo
			num=2;
		FinSi
	FinSi
FinFuncion

Algoritmo Ej5P7
	Escribir "Este programa pide dos números y muestra 0 si son iguales, 1 si el primero es mayor y 2 si el segundo es el mayor";
	Escribir "Introduce ambos números";
	Definir n1,n2 Como Real;
	Definir num Como Entero;
	Leer n1,n2;
	num = valorNum(n1,n2);
	Escribir num;
FinAlgoritmo
