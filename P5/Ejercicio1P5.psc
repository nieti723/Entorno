//Autor Juan Nieto Acosta
//Haz un programa que pida un número al usuario un número de día de la semana (del 1 al 7) y escriba el nombre de ese día (por ejemplo, "martes" para el día 2). Debes emplear la orden SEGUN.
Algoritmo Ejercicio1P5
	Definir dia Como Entero;
	Escribir "Este programa pide un día de la semana (en números) al usuario y muestra por pantalla el día elegido";
	Escribir "Introduce el día (1-7): " Sin Saltar;
	Leer dia;
	Segun dia Hacer
		1: 
			Escribir "Lunes";
		2:
			Escribir "Martes";
		3:
			Escribir "Miércoles";
		4:
			Escribir "Jueves";
		5:
			Escribir "Viernes";
		6:
			Escribir "Sábado";
		7:
			Escribir "Domingo";
		De Otro Modo:
			Escribir "El valor introducido no está en el intervalo correcto";
	FinSegun
FinAlgoritmo
