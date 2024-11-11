Algoritmo Ej8P9
	Definir i, j Como Entero;
	Definir notas Como Real;
	Definir alumnos Como Caracter;
	Dimension notas[10,4], alumnos[10,3];
	//Bucle para cargar los alumnos
	Escribir "A continuación debe introducir los datos de los alumnos";
	Escribir "Pulse una tecla para continuar" Sin Saltar;
	Esperar Tecla;
	Escribir "";
	para i=0 Hasta 9 Hacer
		Escribir "---ALUMNO " i+1 "---";
		Escribir "Nombre: " Sin Saltar;
		Leer alumnos[i,0];
		Escribir "Primer apellido: " Sin Saltar;
		Leer alumnos[i,1];
		Escribir "Segundo apellido: " Sin Saltar;
		Leer alumnos[i,2];
		Limpiar Pantalla;
	FinPara
	Escribir "Los datos de los alumnos han sido cargados correctamente";
	Escribir "Ahora debe introducir las notas de los alumnos";
	Escribir "Pulse una tecla para continuar" Sin Saltar;
	Esperar Tecla;
	Escribir "";
	para i=0 Hasta 9 Hacer
		Escribir "---" alumnos[i,1] " " alumnos[i,2] ", " alumnos[i,0] "---";
		Escribir "1ª Evaluación: " Sin Saltar;
		Leer notas[i,0];
		Escribir "2ª Evaluación: " Sin Saltar;
		Leer notas[i,1];
		Escribir "3ª Evaluación: " Sin Saltar;
		Leer notas[i,2];
		notas[i,3] = (notas[i,0] + notas[i,1] + notas[i,2])/3; 
		Limpiar Pantalla;
	FinPara
	Escribir "Ya están todos los datos cargados";
	Escribir "Pulse una tecla para mostrar la lista de alumnos con sus notas" Sin Saltar;
	Esperar Tecla;
	Escribir "";
	para i=0 Hasta 9 Hacer
		Escribir "---" alumnos[i,1] " " alumnos[i,2] ", " alumnos[i,0] "---";
		Escribir "1ª Evaluación: " notas[i,0];
		Escribir "2ª Evaluación: " notas[i,1];
		Escribir "3ª Evaluación: " notas[i,2];
		Escribir "Nota media: " notas[i,3];
	FinPara
FinAlgoritmo
