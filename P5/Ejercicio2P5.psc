//Autor Juan Nieto Acosta
//Crea un programa que pida un n�mero al usuario un n�mero de mes (por ejemplo, el 4) y escriba el nombre del mes correspondiente (por ejemplo, "abril"). Debes usar la orden SEGUN.
Algoritmo Ejercicio2P5
	Definir mes Como Entero;
	Escribir "Este programa pide un mes del a�o (en n�meros) al usuario y muestra por pantalla el mes elegido";
	Escribir "Introduce el mes (1-12): " Sin Saltar;
	Leer mes;
	Segun mes Hacer
		1: 
			Escribir "Enero";
		2:
			Escribir "Febrero";
		3:
			Escribir "Marzo";
		4:
			Escribir "Abril";
		5:
			Escribir "Mayo";
		6:
			Escribir "Junio";
		7:
			Escribir "Julio";
		8:
			Escribir "Agosto";
		9:
			Escribir "Septiembre";
		10:
			Escribir "Octubre";
		11:
			Escribir "Noviembre";
		12:
			Escribir "Diciembre";
		De Otro Modo:
			Escribir "El valor introducido no est� en el intervalo correcto";
	FinSegun
FinAlgoritmo
