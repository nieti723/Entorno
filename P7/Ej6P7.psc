//Autor Juan Nieto Acosta

Funcion sueldo<-sueldoEmpresa(sueldoBase, hExtra, importehExtra, retencion)
	Definir sueldo,horasExtra, irpf Como Real;
	horasExtra = hExtra*importehExtra;
	irpf = sueldoBase * (retencion/100);
	sueldo=sueldoBase+horasExtra-irpf;
FinFuncion


Algoritmo Ej6P7
	Escribir "---CALCULADORA DE SUELDOS---";
	Definir sueldoBase, importehExtra, retencion, sueldo Como Real;
	Definir hExtra Como Entero;
	Escribir "Introduzca su sueldo base: " Sin Saltar;
	Leer sueldoBase;
	Escribir "¿Cuántas horas extra ha trabajado?: " Sin Saltar;
	Leer hExtra;
	sueldo = sueldoEmpresa(sueldoBase,hExtra,9.5,15);
	Escribir "SUELDO FINAL: " sueldo;
	
FinAlgoritmo
