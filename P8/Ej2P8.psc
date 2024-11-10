//Autor Juan Nieto Acosta

funcion n<-leeEntero(txt) 
	Definir n como entero; 
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
	Escribir " 1.Comprobar si es positivo";
	Escribir " 2.Comprobar si es par";
	Escribir " 3.Comprobar si es primo";
	Escribir " 4.Calcular su factorial";
	leer op;
FinFuncion

Funcion presentacion
	Escribir "---COMPRUEBA NÚMEROS---";
	Escribir "-----------------------";
	Escribir "";
	Escribir " Bienvenido al comprobador de números";
	Escribir "";
	Escribir " Pulsa una tecla para comenzar";
	Esperar tecla;
	Limpiar pantalla;
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

Funcion esPositivo(n)
	si n>0 Entonces
		Escribir "El número " n " es positivo";
	SiNo
		Escribir "El número " n " no es positivo";
	FinSi
FinFuncion

Funcion esPar(n)
	si n%2==0 Entonces
		Escribir "El número " n " es par";
	SiNo
		Escribir "El número " n " no es par";
	FinSi
FinFuncion

Funcion esPrimo(n)
	Definir i, divisores Como Entero;
	Para i=0 Hasta n/2 Hacer
		si n%i==0 Entonces
			divisores = divisores +1;
		FinSi
	FinPara
	
	si divisores>1 Entonces
		Escribir "El número " n " no es primo";
	SiNo
		Escribir "El número " n " es primo";
	FinSi
FinFuncion

Funcion factorial(n)
	Definir i, resultado Como Entero;
	resultado=1;
	para i=1 Hasta n
		resultado=resultado*i;
	FinPara
	Escribir n "!=" resultado;
FinFuncion

Algoritmo Ej2P8
	Definir n, op Como Entero;
	presentacion;
	
	Repetir
		n = leeEntero("Introduce el valor a comprobar: ");
		op=menu;
		
		Segun op Hacer
			1: 
				esPositivo(n);
			2: 
				esPar(n);
			3: 
				esPrimo(n);
			4:	
				factorial(n);
				
			De Otro Modo:
				
				Escribir " La opción elegida no es correcta (1-4)";
		Fin Segun
		
	mientras que ejecutarOtraVez;
	
FinAlgoritmo
