//Autor Juan Nieto Acosta
//Modifica el ejercicio S1 para que después de mostrar el dia de la semana al usuario la opción de ejecutarse otra vez o terminar.
Algoritmo Ejercicio3P5
	Definir dia Como Entero;
	Definir seguir Como Logico;
	Definir a Como Caracter;
	Escribir "Este programa pide un día de la semana (en números) al usuario y muestra por pantalla el día elegido";
	seguir=Verdadero;
	Repetir
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
		Escribir "¿Quiere introducir otro día? s/n";
		Leer a;
		si a=="n" Entonces
			seguir=Falso;
		FinSi
	Mientras Que seguir
	Escribir "Gracias por usar este programa, hasta pronto!";
FinAlgoritmo
