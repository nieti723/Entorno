//Autor Juan Nieto Acosta
//Haz un programa que permita calcular la suma de pares de n�meros. Pedir� dos n�meros al usuario y mostrar� su suma, volviendo a repetir hasta que ambos n�meros introducidos sean 0.
Algoritmo Ejercicio2P4
	Escribir "Este programa calcula la suma de dos n�meros introducidos por el usuario";
	Escribir "Para salir, debe introducir 0 en ambos datos";
	Definir n1,n2,suma Como Entero;
	Escribir "Introduce el primer n�mero: " Sin Saltar;
	Leer n1;
	Escribir "Introduce el segundo n�mero: " Sin Saltar;
	Leer n2;
	suma= n1+n2;
	Mientras suma<>0 Hacer
		Escribir "La suma de ambos n�mero es: " suma;
		Escribir "Introduce los siguiente n�meros";
		Leer n1,n2;
		suma = n1 + n2;
		Limpiar Pantalla;
	FinMientras
	Escribir "Hasta pronto";
FinAlgoritmo
