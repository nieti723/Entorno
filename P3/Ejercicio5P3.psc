Algoritmo Ejercicio5P3
	//Autor Juan Nieto Acosta
	
	Escribir "---PARES E IMPARES---";
	Definir n, pares,impares,i Como Real;
	pares = 0;
	impares = 0;
	para i=1 hasta 5 Con Paso 1
		Escribir "Introduce el valor n� " i;
		Leer n;
		si n%2=0 Entonces
			pares = pares + 1;
		SiNo
			impares = impares + 1;
		FinSi
	FinPara
	
	Escribir "N�meros pares: " pares;
	Escribir "N�meros impares: " impares;
FinAlgoritmo
