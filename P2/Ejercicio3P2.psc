Algoritmo Ejercicio3P2
	// Autor Juan Nieto Acosta
	// Crea un programa que pida al usuario dos n�meros y muestre su divisi�n si el segundo no es cero, o un mensaje de aviso en caso contrario.
	
	Escribir "---DIVISI�N---";
	Definir n1,n2 Como Real;
	Escribir "Introduce dos n�meros";
	Leer n1,n2;
	si n2<>0 Entonces
		Escribir n1 "�" n2 "=" n1/n2;
	SiNo
		Escribir "ERROR: el divisor no puede ser igual a 0";
	FinSi
FinAlgoritmo
