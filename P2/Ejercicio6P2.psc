Algoritmo Ejercicio6P2
	// Autor Juan Nieto Acosta
	
	Escribir "-----SUELDOS-----";
	Definir sueldo, años Como real;
	Escribir "Introduzca su sueldo: " Sin Saltar;
	Leer sueldo;
	Escribir "Introduzca su antigüedad en la empresa: " Sin Saltar;
	Leer años;
	
	si sueldo<1000 y años>10 Entonces
		Escribir "Su nuevo sueldo es: " sueldo+sueldo*0.20 " euros";
	FinSi
	si sueldo<1000 y años<10 Entonces
		Escribir "Su nuevo sueldo es: " sueldo+sueldo*0.05 " euros";
	FinSi
	si sueldo>=1000 Entonces
		Escribir "Su sueldo es: " sueldo;
	FinSi
FinAlgoritmo
