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
	Escribir " Escoja una opci�n";
	Escribir " 1.Rect�ngulo";
	Escribir " 2.Tri�ngulo";
	Escribir " 3.C�rculo";
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
	Escribir "�rea: " b*h "cm�";
FinFuncion


Funcion areaTriangulo
	Definir b, h Como Real;
	Escribir "DATOS EN CM!!!";
	b = leeReal("Introduce la base: ");
	h = leeReal("Introduce la altura: ");
	Escribir "Base: " b "cm";
	Escribir "Altura: " h "cm";
	Escribir "�rea: " (b*h)/2 "cm�";
FinFuncion

Funcion areaCirculo
	Definir r Como Real;
	Escribir "DATOS ENN CM!!!";
	r = leeReal("Introduzca el radio: ");
	Escribir "Radio: " r;
	Escribir "�rea: " PI*(r^2) "cm�";
FinFuncion


Funcion areaRombo
	Definir dMayor, dMenor Como Real;
	Escribir "DATOS EN CM!!!";
	dMayor= leeReal("Introduce la diagonal mayor: ");
	dMenor = leeReal("Introduce la diagonal menor: ");
	Escribir "Mayor: " dMayor "cm";
	Escribir "Menor: " dMenor "cm";
	Escribir "�rea: " (dMayor*dMenor)/2 "cm�";
FinFuncion


Funcion presentacion
	Escribir " CALCULADORA DE �REAS";
	Escribir "-----------------------";
	Escribir "";
	Escribir " Bienvenidos a la calculadora de �reas";
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
				
				Escribir " La opci�n elegida no es correcta (1-4)";
		Fin Segun
		
	mientras que ejecutarOtraVez;
	
FinAlgoritmo
