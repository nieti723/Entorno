//Autor Juan Nieto Acosta
//Crea un programa que pida al usuario un c�digo de usuario y una contrase�a. Deber� repetirse hasta que el c�digo sea "1" y la contrase�a sea "1234".
Algoritmo Ejercicio4P4
	Definir codigo,pass Como Caracter;
	Escribir "Para ingresar debe introducir su c�digo de usuario y su contrase�a";
	Escribir "C�digo de usuario: " Sin Saltar;
	Leer codigo;
	Escribir "Contrase�a: " Sin Saltar;
	Leer pass;
	Mientras codigo<>"1" o pass<>"1234" Hacer
		Escribir "C�digo o contrase�a incorrectos, intr�ntelo de nuevo";
		Escribir "C�digo de usuario: " Sin Saltar;
		Leer codigo;
		Escribir "Contrase�a: " Sin Saltar;
		Leer pass;
	FinMientras
	Escribir "Credenciales correctos, bienvenido";
FinAlgoritmo
