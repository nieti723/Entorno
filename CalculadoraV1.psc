Algoritmo CalculadoraV1
	//Calculadora aritmètica V1
	
	Escribir "----CALCULADORA V1----";
	Definir n1,n2,op Como Real;
	Definir volver Como Logico;
	Definir s Como Caracter;
	volver<-Verdadero;
	repetir 
		Escribir "Introduce dos números";
		Leer n1,n2;
		Escribir "Introduce la operación a realizar";
		Escribir "1.Suma | 2.Resta | 3.Multiplicación | 4.División | 5.Módulo";
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
					Escribir "La división no se puede realizar, ya que el divisor es 0";
				SiNo
					Escribir "La división es: " n1/n2;
				FinSi
			5:
				Escribir "El módulo es: " n1%n2;
			De Otro Modo:
				Escribir "El número  introducido no es válido";
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
