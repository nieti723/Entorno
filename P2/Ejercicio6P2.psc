Algoritmo Ejercicio6P2
	// Autor Juan Nieto Acosta
	
	Escribir "-----SUELDOS-----";
	Definir sueldo, a�os Como real;
	Escribir "Introduzca su sueldo: " Sin Saltar;
	Leer sueldo;
	Escribir "Introduzca su antig�edad en la empresa: " Sin Saltar;
	Leer a�os;
	
	si sueldo<1000 y a�os>10 Entonces
		Escribir "Su nuevo sueldo es: " sueldo+sueldo*0.20 " euros";
	FinSi
	si sueldo<1000 y a�os<10 Entonces
		Escribir "Su nuevo sueldo es: " sueldo+sueldo*0.05 " euros";
	FinSi
	si sueldo>=1000 Entonces
		Escribir "Su sueldo es: " sueldo;
	FinSi
FinAlgoritmo
