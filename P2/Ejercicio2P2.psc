Algoritmo Ejercicio2P2
	// Autor Juan Nieto Acosta
	//  Haz un programa que pida al usuario dos n�meros y diga cu�ntos de ellos son positivos.
	Escribir "�Cu�ntos n�meros son negativos";
	Definir n1,n2 Como Real;
	Escribir "Introduce dos n�meros";
	Leer n1,n2;
	
	si n1<0 y n2<0 Entonces
		Escribir "Ambos n�meros son negativos";
	FinSi
	si n1<0 y n2>0 Entonces
		Escribir "Solo uno es negativo (" n1 ")";
	FinSi
	si n2<0 y n1>0 Entonces
		Escribir "Solo uno es negativo (" n2 ")";
	FinSi
	si n1>0 y n2>0 Entonces
		Escribir "Ambos n�meros son positivos";
	FinSi
	
FinAlgoritmo
