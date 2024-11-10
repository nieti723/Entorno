Algoritmo Ejercicio2P2
	// Autor Juan Nieto Acosta
	//  Haz un programa que pida al usuario dos números y diga cuántos de ellos son positivos.
	Escribir "¿Cuántos números son negativos";
	Definir n1,n2 Como Real;
	Escribir "Introduce dos números";
	Leer n1,n2;
	
	si n1<0 y n2<0 Entonces
		Escribir "Ambos números son negativos";
	FinSi
	si n1<0 y n2>0 Entonces
		Escribir "Solo uno es negativo (" n1 ")";
	FinSi
	si n2<0 y n1>0 Entonces
		Escribir "Solo uno es negativo (" n2 ")";
	FinSi
	si n1>0 y n2>0 Entonces
		Escribir "Ambos números son positivos";
	FinSi
	
FinAlgoritmo
