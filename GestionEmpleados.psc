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
	Escribir "Bienvenidos al programa de cálculo de nóminas";
	Escribir "---------------------------------------------";
	cant = leeEntero("Introduce la cantidad de empleados a procesar: ");
FinFuncion

Funcion datosEmpleados(empleados Por Referencia, sueldos Por Referencia, cant, datosCargados Por Referencia)
	Definir i Como Entero;
	para i=0 Hasta cant-1
		Limpiar Pantalla;
		Escribir "Datos del " i+1 "º empleado";
		empleados[i,0] = leeTexto("Nombre: ");
		empleados[i,1] = leeTexto("Apellidos: ");
		Repetir
			sueldos[i,0] = leeEntero("Introduce las horas trabajadas en el mes (máximo 160): ");
			si (sueldos[i,0]>160 o sueldos[i,0]<0) Entonces
				Escribir "El valor introducido no es válido, ingréselo de nuevo";
			FinSi
		Mientras Que (sueldos[i,0]>160 o sueldos[i,0]<0)
		sueldos[i,1] = sueldos[i,0]*12;
		Escribir "---------------------------";
	FinPara
	Escribir "Ya se han cargado los datos, pulse una tecla para continuar";
	Esperar Tecla;
	Limpiar Pantalla;
	datosCargados = Verdadero;
FinFuncion

Funcion muestraSueldos(empleados Por Referencia, sueldos Por Referencia, cant)
	Definir i Como Entero;
	Escribir "Lista de empleados y sueldos";
	para i = 0 Hasta cant-1
		Escribir "----------------------------------------------";
		Escribir empleados[i,0] " " empleados[i,1];
		Escribir "Horas trabajadas: " sueldos[i,0];
		Escribir "Sueldo mes: " sueldos[i,1];
	FinPara
	Escribir "--------------------------------------------------";
	Escribir "Pulse una tecla para volver al menú";
	Esperar Tecla;
FinFuncion

Funcion sorteoNavidad(empleados Por Referencia, sueldos Por Referencia, cant)
	Definir num Como Entero;
	Escribir "--------------------------------------------------";
	Escribir "Ahora vamos a hacer el sorteo de una paletilla ibérica entre los empleados";
	Escribir "Pulse una tecla para sacar la bola";
	Esperar Tecla;
	num = azar(cant);
	Escribir "El empleado ganador es: " empleados[num,0] " " empleados[num,1] " Enhorabuena!!!!";
	Escribir "--------------------------------------------------";
	Escribir "Pulse una tecla para volver al menú principal";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Algoritmo GestionEmpleados
	Definir cant, op Como Entero;
	Definir datosCargados Como Logico;
	cant = presentacion;
	Definir empleados, cambiar Como Caracter;
	Definir sueldos Como Entero;
	Dimension empleados[cant,2], sueldos[cant,2];
	
	Repetir
		op = menu;
		Segun op Hacer
			1: 
				si datosCargados = Falso 	
					datosEmpleados(empleados, sueldos, cant, datosCargados);
				SiNo
					Escribir "Los datos ya han sido cargados, no se pueden volver a cargar";
					cambiar = leeTexto("Si desea cambiar algo, pulse 1, si no pulse cualquier otra tecla: ");
					si cambiar="1" Entonces
						datosEmpleados(empleados, sueldos, cant, datosCargados);
						cambiar = "";
					FinSi
				FinSi
			2: 
				si datosCargados = Falso
					Escribir "Debe cargar primero los datos de los empleados";
				SiNo
					muestraSueldos(empleados, sueldos, cant);
				FinSi
			3: 
				si datosCargados = Falso
					Escribir "Debe cargar primero los datos de los empleados";
				SiNo
					sorteoNavidad(empleados, sueldos, cant);
				FinSi
		FinSegun
	Hasta Que (op=4)
FinAlgoritmo
