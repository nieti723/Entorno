//Autor Juan Nieto Acosta
//Crea un programa que pida al usuario un código de usuario y una contraseña. Deberá repetirse hasta que el código sea "1" y la contraseña sea "1234".
Algoritmo Ejercicio4P4
	Definir codigo,pass Como Caracter;
	Escribir "Para ingresar debe introducir su código de usuario y su contraseña";
	Escribir "Código de usuario: " Sin Saltar;
	Leer codigo;
	Escribir "Contraseña: " Sin Saltar;
	Leer pass;
	Mientras codigo<>"1" o pass<>"1234" Hacer
		Escribir "Código o contraseña incorrectos, intréntelo de nuevo";
		Escribir "Código de usuario: " Sin Saltar;
		Leer codigo;
		Escribir "Contraseña: " Sin Saltar;
		Leer pass;
	FinMientras
	Escribir "Credenciales correctos, bienvenido";
FinAlgoritmo
