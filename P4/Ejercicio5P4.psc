//Autor Juan Nieto Acosta
//Prepara un programa que divida dos números que introduzca el usuario. Si el segundo número es cero, se le deberá avisar y volver a pedir tantas veces como sea necesario, hasta que introduzca un número distinto de cero, momento en que se calculará y mostrará el resultado de la división.
Algoritmo Ejercicio5P4
	Escribir "Introduzca dos números para realizar una división";
	Definir n1,n2 Como Entero;
	Leer n1,n2;
	Mientras n2=0 Hacer
		Escribir "El divisor no puede ser 0, introduzca un nuevo valor";
		Leer n2;
	FinMientras
	Escribir "El resultado de la división " n1 "/" n2 "=" n1/n2;
FinAlgoritmo
