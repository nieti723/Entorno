//Autor Juan Nieto Acosta
funcion n<-leeEntero(txt) 
	Definir n como entero; 
	Escribir txt Sin Saltar;
	leer n;
FinFuncion


funcion n<-leeReal(txt) 
	Definir n como real; 
	Escribir txt Sin Saltar;
	leer n;
FinFuncion


Funcion t<-leeTexto(txt)
	Definir t como texto;
	Escribir txt Sin Saltar;
	leer t;
FinFuncion


Funcion op<-menu
	Definir op como entero; //variable local
	Escribir " Escoja una opción";
	Escribir " 1.Rectángulo";
	Escribir " 2.Triángulo";
	Escribir " 3.Círculo";
	Escribir " 4.Rombo";
	leer op;
FinFuncion


funcion e<-ejecutarOtraVez
	
	Definir e como logico;
	Definir t como texto;
	
	t=leeTexto("Pulsa s para ejecutar de nuevo o cualquier tecla para abandonar el programa");
	
	si t="s" o t="S" entonces 
		e=verdadero;
	SiNo
		e=falso;
	FinSi
	
	Limpiar Pantalla;
	
FinFuncion


Funcion areaRectangulo
	Definir b, h Como Real;
	Escribir "DATOS EN CM!!!";
	b = leeReal("Introduce la base: ");
	h = leeReal("Introduce la altura: ");
	Escribir "Base: " b "cm";
	Escribir "Altura: " h "cm";
	Escribir "Área: " b*h "cm²";
FinFuncion


Funcion areaTriangulo
	Definir b, h Como Real;
	Escribir "DATOS EN CM!!!";
	b = leeReal("Introduce la base: ");
	h = leeReal("Introduce la altura: ");
	Escribir "Base: " b "cm";
	Escribir "Altura: " h "cm";
	Escribir "Área: " (b*h)/2 "cm²";
FinFuncion

Funcion areaCirculo
	Definir r Como Real;
	Escribir "DATOS ENN CM!!!";
	r = leeReal("Introduzca el radio: ");
	Escribir "Radio: " r;
	Escribir "Área: " PI*(r^2) "cm²";
FinFuncion


Funcion areaRombo
	Definir dMayor, dMenor Como Real;
	Escribir "DATOS EN CM!!!";
	dMayor= leeReal("Introduce la diagonal mayor: ");
	dMenor = leeReal("Introduce la diagonal menor: ");
	Escribir "Mayor: " dMayor "cm";
	Escribir "Menor: " dMenor "cm";
	Escribir "Área: " (dMayor*dMenor)/2 "cm²";
FinFuncion


Funcion presentacion
	Escribir " CALCULADORA DE ÁREAS";
	Escribir "-----------------------";
	Escribir "";
	Escribir " Bienvenidos a la calculadora de Áreas";
	Escribir "";
	Escribir " Pulsa una tecla para comenzar";
	Esperar tecla;
	Limpiar pantalla;
FinFuncion


Algoritmo Ej1P8
	
	Definir op Como Entero;
	presentacion;
	
	Repetir
		op=menu;
		
		Segun op Hacer
			1: 
				areaRectangulo;
			2: 
				areaTriangulo;
			3: 
				areaCirculo;
			4:	
				areaRombo;
				
			De Otro Modo:
				
				Escribir " La opción elegida no es correcta (1-4)";
		Fin Segun
		
	mientras que ejecutarOtraVez;
	
FinAlgoritmo
