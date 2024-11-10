//Autor Juan Nieto Acosta
//Crea un programa que genere dos números al azar entre el 0 y el 100, y pida al usuario que calcule e introduzca su suma. Si la respuesta no es correcta, deberá volver a pedirla tantas veces como sea necesario hasta que el usuario acierte.
Algoritmo Ejercicio3P4
	Escribir "Este programa genera dos número aleatorios entre 0 y 100 y los suma";
	Escribir "Usted debe intentar adivinar la suma";
	Definir n1,n2,suma,intento Como Entero;
	n1= azar(101);
	n2= azar(101);
	suma = n1 + n2;
	Leer intento;
	Mientras intento<>suma Hacer
		Escribir "Incorrecto, inténtelo de nuevo";
		Leer intento;
		Limpiar Pantalla;
	FinMientras
	Escribir "Enhorabuena, has acertado!!";
FinAlgoritmo
