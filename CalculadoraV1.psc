Algoritmo CalculadoraV1
	//Calculadora aritm�tica V1
	
	Escribir "----CALCULADORA V1----";
	Definir n1,n2,op Como Real;
	Definir volver Como Logico;
	Definir s Como Caracter;
	volver<-Verdadero;
	repetir 
		Escribir "Introduce dos n�meros";
		Leer n1,n2;
		Escribir "Introduce la operaci�n a realizar";
		Escribir "1.Suma | 2.Resta | 3.Multiplicaci�n | 4.Divisi�n | 5.M�dulo";
		Leer op;
		
		Segun op Hacer
			1:
				Escribir "La suma es: " n1+n2;
			2:
				Escribir "La resta es: " n1-n2;
			3:
				Escribir "El producto es: " n1*n2;
			4:
				si n2==0 Entonces
					Escribir "La divisi�n no se puede realizar, ya que el divisor es 0";
				SiNo
					Escribir "La divisi�n es: " n1/n2;
				FinSi
			5:
				Escribir "El m�dulo es: " n1%n2;
			De Otro Modo:
				Escribir "El n�mero  introducido no es v�lido";
		FinSegun
		Escribir "Pulse s para salir o cualquier tecla para volver a calcular";
		Leer s;
		si s="s" o s="S" Entonces
			volver<-Falso;
		FinSi
		Limpiar Pantalla;
	Mientras Que  volver
Escribir "Gracias por usar nuestra calculadora y hasta pronto";
FinAlgoritmo
