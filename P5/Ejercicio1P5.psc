//Autor Juan Nieto Acosta
//Haz un programa que pida un n�mero al usuario un n�mero de d�a de la semana (del 1 al 7) y escriba el nombre de ese d�a (por ejemplo, "martes" para el d�a 2). Debes emplear la orden SEGUN.
Algoritmo Ejercicio1P5
	Definir dia Como Entero;
	Escribir "Este programa pide un d�a de la semana (en n�meros) al usuario y muestra por pantalla el d�a elegido";
	Escribir "Introduce el d�a (1-7): " Sin Saltar;
	Leer dia;
	Segun dia Hacer
		1: 
			Escribir "Lunes";
		2:
			Escribir "Martes";
		3:
			Escribir "Mi�rcoles";
		4:
			Escribir "Jueves";
		5:
			Escribir "Viernes";
		6:
			Escribir "S�bado";
		7:
			Escribir "Domingo";
		De Otro Modo:
			Escribir "El valor introducido no est� en el intervalo correcto";
	FinSegun
FinAlgoritmo
