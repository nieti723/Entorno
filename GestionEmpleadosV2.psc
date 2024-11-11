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
	Escribir "MENÚ PRINCIPAL";
	Escribir "1.Introducir datos de los empleados";
	Escribir "2.Mostrar las nóminas";
	Escribir "3.Sorteo Navidad";
	Escribir "4.Salir";
	op = leeEntero("Elija una opción: ");
	Escribir "";
FinFuncion

Funcion cant<-presentacion
	Definir cant Como Entero;
	Escribir "------------------------------------CÁLCULO DE NÓMINAS-----------------------------------";
	Escribir "La apliación permite calcular las nóminas de los empleados de una empresa de programación";
	Escribir "La nómina dependerá de 3 factores:";
	Escribir "- Categoría profesional (analista / programador)";
	Escribir "- Horas extra trabajadas en el mes (<50)";
	Escribir "- Retención IRPF según hijos (sin hijos 18%, de 1 a 2 hijos 12%, 3 o más hijos 10%)";
	Escribir "------------------------------------------------------------------------------------------";
	Escribir "Pulse una tecla para comenzar";
	Esperar Tecla;
	cant = leeEntero("Introduce la cantidad de empleados a procesar: ");
FinFuncion

Funcion datosEmpleados(nombres Por Referencia, datos Por Referencia, cant)
	Definir i Como Entero;
	para i=0 Hasta cant-1
		Limpiar Pantalla;
		Escribir "------------------------------------------------------------------------------------------";
		Escribir "Datos del " i+1 "º empleado";
		nombres[i,0] = leeTexto("Introduce el nombre: ");
		nombres[i,1] = leeTexto("Apellidos: ");
		Repetir
			datos[i,0] = leeEntero("Introduce la categoría (1.Analista / 2.Programador: ");
			si	datos[i,0]<>1 y datos[i,0]<>2
				Escribir "Error: dato no válido";
			FinSi
		Mientras Que datos[i,0]<>1 y datos[i,0]<>2
		Segun datos[i,0] Hacer
			1: 
				datos[i,1] = 2000;
				datos[i,2] = 30;
			2:
				datos[i,1] = 1750;
				datos[i,2] = 20;
		FinSegun
		Repetir
			datos[i,3] = leeEntero("Introduce las horas extra trabajadas en el mes (máximo 50): ");
			si (datos[i,3]>50 o datos[i,3]<0) Entonces
				Escribir "El valor introducido no es válido, ingréselo de nuevo";
			FinSi
		Mientras Que (datos[i,3]>50 o datos[i,3]<0)
		Repetir
			datos[i,4] = leeEntero("Introduzca el número de hijos: ");
			si datos[i,4]<0 Entonces
				Escribir "Error: dato no válido";
			FinSi
		Hasta Que datos[i,4]>0
		si datos[i,4]>2
			datos[i,4] = 10;
		SiNo
			si datos[i,4]>0
				datos[i,4] = 12; 
			SiNo
				datos[i,4] = 18;
			FinSi
		FinSi
	FinPara
	Escribir "Ya se han cargado los datos, pulse una tecla para continuar";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Funcion muestraSueldos(nombres Por Referencia, datos Por Referencia, cant)
	Definir i Como Entero;
	Escribir "Lista de empleados y sueldos";
	para i = 0 Hasta cant-1
		Escribir "**************************************************************************************************************";
		Escribir "Nómina del empleado: " nombres[i,0] " " nombres[i,1];
		Escribir "--------------------------------------------------------------------------------------------------------------";
		Escribir "Código categoría: " datos[i,0];
		Escribir "Sueldo base: " datos[i,1];
		Escribir "Horas extra: " datos[i,3] " Importe Hora Extra: " datos[i,2] " Total horas extra: " datos[i,2]*datos[i,3];
		Escribir "% Retención IRPF: " datos[i,4] " - Importe Retención: " (datos[i,1]+(datos[i,2]*datos[i,3])) * (datos[i,4]/100); 
		Escribir "--------------------------------------------------------------------------------------------------------------";
		Escribir "Total a percibir: " (datos[i,1]+(datos[i,2]*datos[i,3])) - ((datos[i,1]+(datos[i,2]*datos[i,3])) * (datos[i,4]/100));
		Escribir "**************************************************************************************************************";
	FinPara
	Escribir "--------------------------------------------------------------------------------------------------------------";
	Escribir "Pulse una tecla para volver al menú";
	Esperar Tecla;
FinFuncion

Funcion sorteoNavidad(nombres Por Referencia, sueldos Por Referencia, cant)
	Definir num Como Entero;
	Escribir "--------------------------------------------------";
	Escribir "Ahora vamos a hacer el sorteo de una paletilla ib?rica entre los empleados";
	Escribir "Pulse una tecla para sacar la bola";
	Esperar Tecla;
	num = azar(cant);
	Escribir "El empleado ganador es: " nombres[num,0] " " nombres[num,1] " Enhorabuena!!!!";
	Escribir "--------------------------------------------------";
	Escribir "Pulse una tecla para volver al menú principal";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Algoritmo GestionEmpleadosV2
	Definir cant, op Como Entero;
	Definir datosCargados Como Logico;
	cant = presentacion;
	Definir nombres, cambiar Como Caracter;
	Definir datos Como Entero;
	Dimension nombres[cant,2], datos[cant,5];
	
	Repetir
		op = menu;
		Segun op Hacer
			1: 
				si datosCargados = Falso 	
					datosEmpleados(nombres, datos, cant);
					datosCargados = Verdadero;
				SiNo
					Escribir "Los datos ya han sido cargados, no se pueden volver a cargar";
					cambiar = leeTexto("Si desea cambiar algo, pulse 1, si no pulse cualquier otra tecla: ");
					si cambiar="1" Entonces
						datosEmpleados(nombres, datos, cant);
						cambiar = "";
					FinSi
				FinSi
			2: 
				si datosCargados = Falso
					Escribir "Debe cargar primero los datos de los empleados";
				SiNo
					muestraSueldos(nombres, datos, cant);
				FinSi
			3: 
				si datosCargados = Falso
					Escribir "Debe cargar primero los datos de los empleados";
				SiNo
					sorteoNavidad(nombres, datos, cant);
				FinSi
		FinSegun
	Hasta Que (op=4)
FinAlgoritmo
