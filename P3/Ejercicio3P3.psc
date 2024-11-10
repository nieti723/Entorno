Algoritmo Ejercicio3P3
	// Autor Juan Nieto Acosta
	
	Escribir "---ORGANIZAR NOTAS---";
	Definir menor7,mayor7,nota, i Como Entero;;
	mayor7=0;
	menor7=0;
	Para i=1 Hasta 10 Con Paso 1
		Escribir "Introduzca la nota nº " i;
		Leer nota;
		si nota>7 Entonces
			mayor7=mayor7+1;
		SiNo
			menor7=menor7+1;
		FinSi
	FinPara
	Escribir "Notas menores que 7: " menor7;
	Escribir "Notas mayores que 7: " mayor7;
FinAlgoritmo
