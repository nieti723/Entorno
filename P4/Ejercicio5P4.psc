//Autor Juan Nieto Acosta
//Prepara un programa que divida dos n�meros que introduzca el usuario. Si el segundo n�mero es cero, se le deber� avisar y volver a pedir tantas veces como sea necesario, hasta que introduzca un n�mero distinto de cero, momento en que se calcular� y mostrar� el resultado de la divisi�n.
Algoritmo Ejercicio5P4
	Escribir "Introduzca dos n�meros para realizar una divisi�n";
	Definir n1,n2 Como Entero;
	Leer n1,n2;
	Mientras n2=0 Hacer
		Escribir "El divisor no puede ser 0, introduzca un nuevo valor";
		Leer n2;
	FinMientras
	Escribir "El resultado de la divisi�n " n1 "/" n2 "=" n1/n2;
FinAlgoritmo
