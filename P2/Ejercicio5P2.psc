Algoritmo Ejercicio5P2
	// Autor Juan Nieto Acosta
	// Se introduce el nombre de una persona y un numero de 1 a 10 correspondiente al nivel de ingles que tiene y el programa mostrar� el siguiente mensaje, suponiendo que el nombre es Fulanito por ejemplo:
	
	Escribir "---NIVEL DE INGL�S---";
	Definir nombre Como Caracter;
	Definir nivel Como Entero;
	Escribir "Introduzca su nombre: " Sin Saltar;
	Leer nombre;
	Escribir "Introduzca su nivel de ingl�s (1-10): " Sin Saltar;
	Leer nivel;
	
	si nivel>=7 Entonces
		Escribir nombre " tiene un nivel de ingl�s alto";
	FinSi
	si nivel>=4 y nivel<7 Entonces
		Escribir nombre " tiene un nivel de ingl�s medio";
	FinSi
	si nivel<4 Entonces
		Escribir nombre " tiene un nivel de ingl�s bajo";
	FinSi
FinAlgoritmo
