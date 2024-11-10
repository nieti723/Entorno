//Autor Juan Nieto Acosta
//Haz un programa que permita calcular la suma de pares de números. Pedirá dos números al usuario y mostrará su suma, volviendo a repetir hasta que ambos números introducidos sean 0.
Algoritmo Ejercicio2P4
	Escribir "Este programa calcula la suma de dos números introducidos por el usuario";
	Escribir "Para salir, debe introducir 0 en ambos datos";
	Definir n1,n2,suma Como Entero;
	Escribir "Introduce el primer número: " Sin Saltar;
	Leer n1;
	Escribir "Introduce el segundo número: " Sin Saltar;
	Leer n2;
	suma= n1+n2;
	Mientras suma<>0 Hacer
		Escribir "La suma de ambos número es: " suma;
		Escribir "Introduce los siguiente números";
		Leer n1,n2;
		suma = n1 + n2;
		Limpiar Pantalla;
	FinMientras
	Escribir "Hasta pronto";
FinAlgoritmo
