Algoritmo Ejercicio5P2
	// Autor Juan Nieto Acosta
	// Se introduce el nombre de una persona y un numero de 1 a 10 correspondiente al nivel de ingles que tiene y el programa mostrará el siguiente mensaje, suponiendo que el nombre es Fulanito por ejemplo:
	
	Escribir "---NIVEL DE INGLÉS---";
	Definir nombre Como Caracter;
	Definir nivel Como Entero;
	Escribir "Introduzca su nombre: " Sin Saltar;
	Leer nombre;
	Escribir "Introduzca su nivel de inglés (1-10): " Sin Saltar;
	Leer nivel;
	
	si nivel>=7 Entonces
		Escribir nombre " tiene un nivel de inglés alto";
	FinSi
	si nivel>=4 y nivel<7 Entonces
		Escribir nombre " tiene un nivel de inglés medio";
	FinSi
	si nivel<4 Entonces
		Escribir nombre " tiene un nivel de inglés bajo";
	FinSi
FinAlgoritmo
