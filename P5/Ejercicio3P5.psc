//Autor Juan Nieto Acosta
//Modifica el ejercicio S1 para que despu�s de mostrar el dia de la semana al usuario la opci�n de ejecutarse otra vez o terminar.
Algoritmo Ejercicio3P5
	Definir dia Como Entero;
	Definir seguir Como Logico;
	Definir a Como Caracter;
	Escribir "Este programa pide un d�a de la semana (en n�meros) al usuario y muestra por pantalla el d�a elegido";
	seguir=Verdadero;
	Repetir
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
		Escribir "�Quiere introducir otro d�a? s/n";
		Leer a;
		si a=="n" Entonces
			seguir=Falso;
		FinSi
	Mientras Que seguir
	Escribir "Gracias por usar este programa, hasta pronto!";
FinAlgoritmo
