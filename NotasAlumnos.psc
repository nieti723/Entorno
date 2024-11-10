//Autor Juan Nieto Acosta

funcion n<-leeEntero(txt) 
	Definir n como entero; 
	Escribir txt Sin Saltar;
	leer n;
FinFuncion

funcion n<-leeReal(txt) 
	Definir n como Real; 
	Escribir txt Sin Saltar;
	leer n;
FinFuncion

Funcion t<-leeTexto(txt)
	Definir t como texto;
	Escribir txt Sin Saltar;
	leer t;
FinFuncion

Funcion cargaLista(listado Por Referencia, t)
	Definir i Como Entero;
	
	Escribir "Primero debe caragar los datos de los alumnos";
	Escribir "Pulse enter para continuar" Sin Saltar;
	Esperar Tecla;
	Limpiar Pantalla;
	
	Para  i=0 Hasta t-1 Hacer
		Escribir "-------------------------------------------";
		Escribir "DATOS DEL ALUMNO Nº" (i+1);
		listado(i,0)=leeTexto("Introduce el nombre: ");
		listado(i,1)=leeTexto("Introduce el primer apellido: ");
		listado(i,2)=leeTexto("Introduce el segundo apellido: ");
		Limpiar Pantalla;
	FinPara
	Escribir "LISTA DE ALUMNOS CARGADA";
FinFuncion

Funcion cargaNotas(listado Por Referencia, notas Por Referencia, t)
	Definir i Como Entero;
	
	Escribir "Ahora debe rellenar las notas de los alumnos";
	Escribir "Pulse enter para continuar" Sin Saltar;
	Esperar Tecla;
	Limpiar Pantalla;
	
	para i=0 Hasta t-1 Hacer
		Escribir "Notas de: " listado(i,1) " " listado(i,2) ", " listado(i,0);
		notas(i,0)=leeReal("Introduce la primera nota: ");
		notas(i,1)=leeReal("Introduce la segunda nota: ");
		notas(i,2)=leeReal("Introduce la tercera nota: ");
		notas(i,3)=(notas(i,0)+notas(i,1)+notas(i,2))/3;
		Limpiar Pantalla;
	FinPara
	
	Escribir "NOTAS CARGADAS";
FinFuncion

Funcion listaNotas(listado Por Referencia, notas Por Referencia, t)
	Definir i Como Entero;
	
	Escribir "Ahora le mostraremos la lista de los alumnos y sus notas";
	Escribir "Pulse enter para continuar" Sin Saltar;
	Esperar Tecla;
	Limpiar Pantalla;
	Escribir "------LISTA DE NOTAS------";
	
	para i=0 Hasta t-1 Hacer
		Escribir "Notas de: " listado(i,1) " " listado(i,2) ", " listado(i,0);
		Escribir "1ª EV: " notas(i,0);
		Escribir "2ª EV: " notas(i,1);
		Escribir "3ª EV: " notas(i,2);
		Escribir "Nota Media: " notas(i,3);
		Escribir "-----------------------------------------------------------";
	FinPara
FinFuncion

Algoritmo NotasAlumnos
	Definir i, t Como Entero;
	Definir listado Como Caracter;
	Definir notas Como Real;
	t=leeEntero("Introduzca la cantidad de alumnos en la clase: ");
	Dimension listado(t,3);
	Dimension notas(t,4);
	
	cargaLista(listado, t);
	cargaNotas(listado, notas, t);
	listaNotas(listado, notas, t);
FinAlgoritmo
