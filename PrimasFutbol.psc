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
	Definir op como entero;
	Escribir "-          MENÚ PRINCIPAL          -";
	Escribir "------------------------------------";
	Escribir "1.Cargar jugadores";
	Escribir "2.Cargar datos por jugador";
	Escribir "3.Mostrar datos por jugador";
	Escribir "4.Calcular las primas de los jugadores";
	Escribir "5.Salir";
	op = leeEntero("Elija una opción: ");
	Limpiar Pantalla;
FinFuncion

Funcion cant<-presentacion
	Definir cant Como Entero;
	Escribir "------------------------------------CÁLCULO DE NÓMINAS-----------------------------------";
	Escribir "Esta aplicación permite gestionar los datos de jugadores en una temporada para establecer las primas";
	Escribir "Debes cargar los jugadores de tu equipo, partidos convocados, jugados y goles anotados para una liga de 20 jornadas";
	Escribir "La aplicación te mostrará todos los datos de los jugadores y las primas que le corresponden a cada uno";
	Escribir "Se deben establecer el número de jugadores y el importe de las primas por partido convocado, goles anotados y la prima para el máximo goleador";
	Escribir "------------------------------------------------------------------------------------------";
	Escribir "Pulse una tecla para comenzar";
	Esperar Tecla;
	Limpiar Pantalla;
	cant = leeEntero("Introduce la cantidad de jugadores a procesar: ");
FinFuncion

Funcion nombresJugadores(nombres Por Referencia, cant)
	Definir i Como Entero;
	Escribir "Vamos a cargar el nombre y apellidpos de los jugadores de tu equipo";
	Escribir "-------------------------------------------------------------------";
	Escribir "Pulse una tecla para continuar";
	Esperar Tecla;
	para i=0 Hasta cant-1
		Escribir "---" i+1 "º JUGADOR---";
		nombres[i,0] = leeTexto("Introduce el nombre: ");
		nombres[i,1] = leeTexto("Introduce los apellidos: ");
		Escribir "------------------------------------------------------------";
	FinPara
	Escribir "Nombres cargados, pulse una tecla para volver al menú principal";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Funcion datosJugadores(nombres Por Referencia, datos Por Referencia, cant)
	Definir i Como Entero;
	para i=0 Hasta cant-1
		Limpiar Pantalla;
		Escribir "------------------------------------------------------------------------------------------";
		Escribir "Jugador " nombres[i,0] " " nombres[i,1];
		Repetir
			datos[i,0] = leeEntero("Partidos convocados: ");
			si	datos[i,0]>20 o datos[i,0]<0
				Escribir "Error: dato no válido";
			FinSi
		Mientras Que datos[i,0]>20 o datos[i,0]<0
		Repetir
			datos[i,1] = leeEntero("Partidos jugados: ");
			si (datos[i,1]>datos[i,0] o datos[i,1]<0) Entonces
				Escribir "El valor introducido no es válido, ingréselo de nuevo";
			FinSi
		Mientras Que (datos[i,1]>datos[i,0] o datos[i,1]<0)
		Repetir
			datos[i,2] = leeEntero("Goles anotados: ");
			si datos[i,2]<0 Entonces
				Escribir "Error: dato no válido";
			FinSi
		Mientras Que datos[i,2]<0
	FinPara
	Escribir "Ya se han cargado los datos, pulse una tecla para continuar";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Funcion muestraDatos(nombres Por Referencia, datos Por Referencia, cant)
	Definir i Como Entero;
	Escribir "-          DATOS DE LOS JUGADORES          -";
	Escribir "--------------------------------------------";
	para i = 0 Hasta cant-1
		Escribir "**************************************************************************************************************";
		Escribir nombres[i,0] " " nombres[i,1];
		Escribir "--------------------------------------------------------------------------------------------------------------";
		Escribir "Partidos convocados: " datos[i,0];
		Escribir "Partidos jugados: " datos[i,1];
		Escribir "Goles: " datos[i,2];
		Escribir "**************************************************************************************************************";
	FinPara
	Escribir "--------------------------------------------------------------------------------------------------------------";
	Escribir "Pulse una tecla para volver al menú";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Funcion primaJugadores(nombres Por Referencia, datos Por Referencia, cant, primaConvocado, primaJugado, primaGol, maxGoleador)
	Definir i, prima, primaMax, golesMax Como Entero;
	primaMax = 0;
	golesMax = 0;
	Escribir "-                     NÓMINAS DE LOS JUGADORES                   -";
	Escribir "------------------------------------------------------------------";
	Escribir "Cada jugador recibe como prima:";
	Escribir "- Por partido convocado " primaConvocado " euros";
	Escribir "- Por partido jugado " primaJugado " euros";
	Escribir "- Por cada gol anotado " primaGol " euros";
	Escribir "Prima especial máximo goleador de " maxGoleador " euros";
	Escribir "-------------------------------------------------------------------";
	para i = 0 Hasta cant-1
		prima = datos[i,0]*primaConvocado + datos[i,1]*primaJugado + datos[i,2]*primaGol;
		Escribir "**************************************************************************************************************";
		Escribir nombres[i,0] " " nombres[i,1];
		Escribir "--------------------------------------------------------------------------------------------------------------";
		Escribir "Partidos convocados: " datos[i,0] " | Partidos jugados: " datos[i,1] " | Goles: " datos[i,2];
		Escribir "Primas del jugador: " prima;
		si datos[i,2]>golesMax Entonces
			primaMax=i;
			golesMax = datos[i,2];
		FinSi
		Escribir "**************************************************************************************************************";
	FinPara
	Escribir "Prima especial de " maxGoleador " euros al máximo goleador para " nombres[primaMax,0] " " nombres[primaMax,1];
	Escribir "--------------------------------------------------------------------------------------------------------------";
	Escribir "Primas mostradas";
	Escribir "Pulse una tecla para volver al menú";
	Esperar Tecla;
FinFuncion

Algoritmo PrimasFutbol
	Definir cant, op, primaConvocado, primaJugado, primaGol, maxGoleador Como Entero;
	Definir nombresCargados, datosCargados Como Logico;
	nombresCargados = Falso;
	datosCargados = falso;
	cant = presentacion;
	Escribir "Introduce la prima por partido convocado: " Sin Saltar;
	Leer primaConvocado;
	Escribir "Introduce la prima por partido jugado: " Sin Saltar;
	Leer primaJugado;
	Escribir "Introduce la prima por gol anotado: " Sin Saltar;
	Leer primaGol;
	Escribir "Introduce la prima para el máximo goleador: " Sin Saltar;
	Leer maxGoleador;
	Limpiar Pantalla;
	Definir nombres Como Caracter;
	Definir datos Como Entero;
	Dimension nombres[cant,2], datos[cant,3];
	
	Repetir
		op = menu;
		Segun op Hacer
			1: 
				si nombresCargados = Falso 	
					nombresJugadores(nombres, cant);
					nombresCargados = Verdadero;
				SiNo
					Escribir "Los datos ya han sido cargados, no se pueden volver a cargar";
					Escribir "Pulse una tecla para volver al menú";
					Esperar Tecla;
					Limpiar Pantalla;
				FinSi
			2: 
				si datosCargados = Verdadero
					Escribir "Los datos ya han sido cargados";
					Escribir "Pulse una tecla para volver al menú";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					si nombresCargados = Falso
						Escribir "Debe cargar primero los nombres de los jugadores";
						Escribir "Pulse una tecla para volver al menú";
						Esperar Tecla;
						Limpiar Pantalla;
					SiNo
						datosJugadores(nombres, datos, cant);
						datosCargados = Verdadero;
					FinSi
				FinSi
			3: 
				si datosCargados = Falso o nombresCargados = Falso
					Escribir "Debe cargar primero los datos de los jugadores";
				SiNo
					muestraDatos(nombres, datos, cant);
				FinSi
			4:
				si datosCargados = Falso o nombresCargados = Falso
					Escribir "Debe cargar primero los datos de los jugadores";
				SiNo
					primaJugadores(nombres, datos, cant, primaConvocado, primaJugado, primaGol, maxGoleador);
				FinSi
		FinSegun
	Hasta Que (op=5)
FinAlgoritmo
