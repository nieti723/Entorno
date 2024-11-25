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
	Escribir "1.Cargar coches";
	Escribir "2.Mostrar todos los coches disponibles";
	Escribir "3.Mostrar coches en oferta";
	Escribir "4.Mostrar coches por tipo motor";
	Escribir "5.Mostrar coches de Km 0 (menos de 5000 Km)";
	Escribir "6.Realizar sorteo de coche para donación ONG";
	Escribir "7.Salir";
	op = leeEntero("Elija una opción: ");
	Limpiar Pantalla;
FinFuncion

Funcion presentacion
	Escribir "------------------------------------GESTIÓN DE CONCESIONARIO-----------------------------------";
	Escribir "Esta aplicación permite gestionar los vehículos de un concesionario";
	Escribir "Debes cargar los vehículos disponibles";
	Escribir "La aplicación le dejará seleccionar diferentes opciones para mostrar los vehículos";
	Escribir "-----------------------------------------------------------------------------------------------";
	Escribir "Pulse una tecla para comenzar";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Funcion cargaDatos(datosTexto Por Referencia, datosNumero Por Referencia, cant)
	Definir i, motor Como Entero;
	para i=0 Hasta cant-1
		Escribir "CARGA DE DATOS DE VEHÍCULOS DISPONIBLES EN EL CONCESIONARIO";
		Escribir "-----------------------------------------------------------";
		Escribir "DATOS DEL " (i+1) "º COCHE:";
		datosTexto[i,0] = leeTexto("Matrícula: ");
		datosTexto[i,1] = leeTexto("Marca: ");
		datosTexto[i,2] = leeTexto("Modelo: ");
		datosTexto[i,3] = leeTexto("Color: ");
		Repetir
			datosNumero[i,0] = leeEntero("Año de matriculación: ");
			si datosNumero[i,0]>2024 Entonces
				Escribir "El valor introducido no es válido";
				Escribir "Introdúzcalo de nuevo";
				Escribir "Pulse una tecla para continuar";
				Esperar Tecla;
			FinSi
		Mientras Que datosNumero[i,0]>2024
		Repetir
			Escribir "Tipos de motor";
			Escribir "1. Diesel";
			Escribir "2. Gasolina";
			Escribir "3. Eléctrico";
			motor = leeEntero("Selecciona un tipo de motor: ");
			si motor>3 o motor<1 Entonces
				Escribir "El valor introducido no es válido";
				Escribir "Introdúzcalo de nuevo";
				Escribir "Pulse una tecla para continuar";
				Esperar Tecla;
			FinSi
		Mientras Que motor>3 o motor<1
		Segun motor Hacer
			1:
				datosTexto[i,4] = "Diesel";
			2:
				datosTexto[i,4] = "Gasolina";
			3:
				datosTexto[i,4] = "Eléctrico";
		Fin Segun
		datosNumero[i,1] = leeEntero("Kilómetros: ");
		datosNumero[i,2] = leeEntero("Precio de compra: ");
		Repetir
			datosNumero[i,3] = leeEntero("Descuento por oferta, si el coche está en oferta (5%-10%), en caso de que no esté 0: ");
			si datosNumero[i,3]>10 Entonces
				Escribir "El valor introducido no es válido";
				Escribir "Introdúzcalo de nuevo";
				Escribir "Pulse una tecla para continuar";
				Esperar Tecla;
			FinSi
		Mientras Que datosNumero[i,3]>10
		Escribir "------------------------------------------------------------";
	FinPara
	Escribir "Coches cargados, pulse una tecla para volver al menú principal";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Funcion muestraDatos(datosTexto Por Referencia, datosNumero Por Referencia, cant)
	Definir i Como Entero;
	Escribir "-          LISTADO DE COCHES DISPONIBLES          -";
	Escribir "---------------------------------------------------";
	para i = 0 Hasta cant-1
		Escribir "**************************************************************************************************************";
		Escribir "Matrícula: " datosTexto[i,0] " | Marca: " datosTexto[i,1] " | Modelo: " datosTexto[i,2] " | Color: " datosTexto[i,3];
		Escribir "Año: " datosNumero[i,0] " | Tipo motor: " datosTexto[i,4] " | Kilómetros: " datosNumero[i,1] " | Precio venta: " (datosNumero[i,3]*1.15) " euros | Descuento oferta: " datosNumero[i,3] "%";
		Escribir "**************************************************************************************************************";
	FinPara
	Escribir "--------------------------------------------------------------------------------------------------------------";
	Escribir "Coches en stock listados";
	Escribir "Pulse una tecla para volver al menú";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Funcion muestraOferta(datosTexto Por Referencia, datosNumero Por Referencia, cant)
	Definir i Como Entero;
	Escribir "-          LISTADO DE COCHES EN OFERTA          -";
	Escribir "---------------------------------------------------";
	para i = 0 Hasta cant-1
		si datosNumero[i,3] >= 5 Entonces
			Escribir "**************************************************************************************************************";
			Escribir "Matrícula: " datosTexto[i,0] " | Marca: " datosTexto[i,1] " | Modelo: " datosTexto[i,2] " | Color: " datosTexto[i,3];
			Escribir "Año: " datosNumero[i,0] " | Tipo motor: " datosTexto[i,4] " | Kilómetros: " datosNumero[i,1] " | Precio venta: " (datosNumero[i,3]*1.15) " euros | Descuento oferta: " datosNumero[i,3] "%";
			Escribir "**************************************************************************************************************";
		FinSi
	FinPara
	Escribir "--------------------------------------------------------------------------------------------------------------";
	Escribir "Coches en stock listados";
	Escribir "Pulse una tecla para volver al menú";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Funcion muestraMotor(datosTexto Por Referencia, datosNumero Por Referencia, cant)
	Definir i, motor Como Entero;
	Definir tipoMotor, textoMotor, op Como Caracter;
	Definir continuar Como Logico;
	continuar = falso;
	Repetir
		Escribir "-          LISTADO DE COCHES POR TIPO DE MOTOR         -";
		Escribir "--------------------------------------------------------";
		Escribir "Seleccione el tipo de motor a mostrar";
		Escribir "Tipos de motor";
		Escribir "1. Diesel";
		Escribir "2. Gasolina";
		Escribir "3. Eléctrico";
		motor = leeEntero("Selecciona un tipo de motor: ");
		Segun motor Hacer
			1:
				tipoMotor = "diesel";
				textoMotor = "Diesel";
			2:
				tipoMotor = "de gasolina";
				textoMotor = "Gasolina";
			3:
				tipoMotor = "eléctricos";
				textoMotor = "Eléctrico";
		Fin Segun
		Escribir "Listado de coches " tipoMotor;
		para i = 0 Hasta cant-1
			si datosTexto[i,4] == textoMotor Entonces
				Escribir "**************************************************************************************************************";
				Escribir "Matrícula: " datosTexto[i,0] " | Marca: " datosTexto[i,1] " | Modelo: " datosTexto[i,2] " | Color: " datosTexto[i,3];
				Escribir "Año: " datosNumero[i,0] " | Tipo motor: " datosTexto[i,4] " | Kilómetros: " datosNumero[i,1] " | Precio venta: " (datosNumero[i,3]*1.15) " euros | Descuento oferta: " datosNumero[i,3] "%";
				Escribir "**************************************************************************************************************";
			FinSi
		FinPara
		Escribir "Coches listados por tipo de motor";
		Escribir "¿Listar por otro tipo de motor? s/n";
		Leer op;
		si op == "s" o op=="S" Entonces
			continuar = Verdadero;
		SiNo
			continuar = falso;
		FinSi
		Limpiar Pantalla;
	Mientras Que continuar
	Escribir "Pulse una tecla para volver al menú";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Funcion muestraKm0(datosTexto Por Referencia, datosNumero Por Referencia, cant)
	Definir i Como Entero;
	Escribir "-          LISTADO DE COCHES KM 0 CON MENOS DE 5000KM          -";
	Escribir "----------------------------------------------------------------";
	para i = 0 Hasta cant-1
		si datosNumero[i,1] < 5000 Entonces
			Escribir "**************************************************************************************************************";
			Escribir "Matrícula: " datosTexto[i,0] " | Marca: " datosTexto[i,1] " | Modelo: " datosTexto[i,2] " | Color: " datosTexto[i,3];
			Escribir "Año: " datosNumero[i,0] " | Tipo motor: " datosTexto[i,4] " | Kilómetros: " datosNumero[i,1] " | Precio venta: " (datosNumero[i,3]*1.15) " euros | Descuento oferta: " datosNumero[i,3] "%";
			Escribir "**************************************************************************************************************";
		FinSi
	FinPara
	Escribir "--------------------------------------------------------------------------------------------------------------";
	Escribir "Coches en stock listados";
	Escribir "Pulse una tecla para volver al menú";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Funcion sorteoONG(datosTexto Por Referencia, datosNumero Por Referencia, cant)
	Definir n Como Entero;
	Definir valido Como Logico;
	valido = falso;
	Escribir "-          SORTEO DE COCHE PARA DONACIÓN ONG         -";
	Escribir "------------------------------------------------------";
	Repetir
		n = azar(cant);
		// Comprobar si el coche al azar tiene oferta o no
		si	datosNumero[n,3] <> 0
			Escribir "El coche elegido para la donación es: ";
			Escribir "Matrícula: " datosTexto[n,0] " | Marca: " datosTexto[n,1] " | Modelo: " datosTexto[n,2] " | Color: " datosTexto[n,3];
			Escribir "Año: " datosNumero[n,0] " | Tipo motor: " datosTexto[n,4] " | Kilómetros: " datosNumero[n,1] " | Valorado en: " (datosNumero[n,3]*1.15) " euros";
			valido = Verdadero;
		FinSi
	Mientras Que valido = falso
	Escribir "Pulse una tecla para volver al menú";
	Esperar Tecla;
	Limpiar Pantalla;
FinFuncion

Algoritmo Examen
	Definir cant, op Como Entero;
	Definir cochesCargados, continuar, sorteo Como Logico;
	cochesCargados = Falso;
	continuar = Verdadero;
	sorteo = falso;
	presentacion;
	Definir datosTexto Como Caracter;
	Definir datosNumero Como Entero;
	
	
	Repetir
		op = menu;
		Segun op Hacer
			1: 
				si cochesCargados = Falso 
					cant = leeEntero("Introduzca la cantidad de coches a gestionar: ");
					// datosTexto: 0->Matrícula, 1-> Marca, 2-> Modelo, 3-> Color, 4-> Motor
					// datosNumero: 0-> Año de matriculación, 1-> Kilómetros, 2-> Precio Compra, 3-> Descuento
					Dimension datosTexto[cant,5], datosNumero[cant,4];
					cargaDatos(datosTexto, datosNumero, cant);
					cochesCargados = Verdadero;
				SiNo
					Escribir "Los datos ya han sido cargados, no se pueden volver a cargar";
					Escribir "Pulse una tecla para volver al menú";
					Esperar Tecla;
					Limpiar Pantalla;
				FinSi
			2: 
				si cochesCargados = Falso
					Escribir "Debe cargar primero los datos de los coches";
					Escribir "Pulse una tecla para volver al menú";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					muestraDatos(datosTexto, datosNumero, cant);
				FinSi
			3: 
				si cochesCargados = Falso
					Escribir "Debe cargar primero los datos de los coches";
					Escribir "Pulse una tecla para volver al menú";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					muestraOferta(datosTexto, datosNumero, cant);
				FinSi
			4:
				si cochesCargados = Falso
					Escribir "Debe cargar primero los datos de los coches";
					Escribir "Pulse una tecla para volver al menú";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					muestraMotor(datosTexto, datosNumero, cant);
				FinSi
			5:
				si cochesCargados = Falso
					Escribir "Debe cargar primero los datos de los coches";
					Escribir "Pulse una tecla para volver al menú";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					muestraKm0(datosTexto, datosNumero, cant);
				FinSi
			6: 
				si sorteo = Verdadero
					Escribir "El sorteo ya se ha hecho, no puede realizarlo de nuevo";
					Escribir "Pulse una tecla para volver al menú";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					si cochesCargados = Falso
						Escribir "Debe cargar primero los datos de los coches";
						Escribir "Pulse una tecla para volver al menú";
						Esperar Tecla;
						Limpiar Pantalla;
					SiNo
						sorteoONG(datosTexto, datosNumero, cant);
						sorteo = Verdadero;
					FinSi
				FinSi
			De Otro Modo:
				Escribir "Gracias por usar nuestro programa, vuelva pronto";
				continuar = Falso;
		FinSegun
	Mientras Que continuar
FinAlgoritmo
