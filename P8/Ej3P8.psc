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
	Escribir " 1.Calcular la longitud del texto";
	Escribir " 2.Comprobar cuantas palabras tiene el texto";
	Escribir " 3.Comprobar cuantas vocales tiene el texto";
	leer op;
FinFuncion

Funcion presentacion
	Escribir "---PRORCESAR TEXTO---";
	Escribir "-----------------------";
	Escribir "";
	Escribir " Bienvenido al procesador de texto";
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

funcion length(txt)
	definir long Como Entero;
	long = Longitud(txt);
	Escribir "La cadena introducida tiene " long " caracteres";
FinFuncion

Funcion cantPalabras(txt)
	Definir palabra, i Como Entero;
	palabra=1;
	Para i=0 Hasta Longitud(txt)-1
		si Subcadena(txt,i,i)==" " Entonces
			palabra = palabra+1;
		FinSi
	FinPara
	Escribir "La cadena introducida tiene " palabra " palabras";
FinFuncion

Funcion vocales(txt)
	Definir vocal,i Como Entero;
	Para i=0 Hasta Longitud(txt)-1
		si Subcadena(txt,i,i)=="a" o Subcadena(txt,i,i)=="A" o Subcadena(txt,i,i)=="e" o Subcadena(txt,i,i)=="E" o Subcadena(txt,i,i)=="i" o Subcadena(txt,i,i)=="I" o Subcadena(txt,i,i)=="o" o Subcadena(txt,i,i)=="O" o Subcadena(txt,i,i)=="u" o Subcadena(txt,i,i)=="U" Entonces
			vocal = vocal+1;
		FinSi
	FinPara
	Escribir "La cadena introducida tiene " vocal " vocales";
FinFuncion

Algoritmo Ej3P8
	
	Definir txt Como Caracter;
	Definir op Como Entero;
	presentacion;
	
	Repetir
		txt = leeTexto("Introduce el texto: ");
		op=menu;
		
		Segun op Hacer
			1: 
				length(txt);
			2: 
				cantPalabras(txt);
			3: 
				vocales(txt);
			De Otro Modo:
				
				Escribir " La opción elegida no es correcta (1-3)";
		Fin Segun
		
	mientras que ejecutarOtraVez;
	
FinAlgoritmo
