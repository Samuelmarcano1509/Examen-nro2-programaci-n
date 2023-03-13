{Crear un programa que permita imprimir un número ingresado por el usuario en un
color específico}
program Impresion_de_un_numero_divisible;
uses crt;
var n1,n2,n3:Integer;
const
div13 = 13;
div7 = 7;
div5 = 5;
div3 = 3;
div2 = 2;
{Se estan introduciendo las posibles varibales, y las constantes necesarias para el desempeño del programa}

BEGIN
clrscr();
	{Aca se estan ingresando datos, seria el prototipo base para el programa}
	writeln('ingrese un numero');
	readln (n1);
	writeln ('Realizando analisis... presione enter para continuar');
	readln();
		if n1 mod div13=0 then
			begin
				writeln ('Es divisible entre [13] el numero:');
				textcolor(brown); write (n1);
			end
		else
			writeln(n1 ,' no es divisible entre 13');
		{Al ser divisible el numero ingresado por el usuario, lo indicara como divisible en color marron, de ser el caso contrario, se mostrara en blanco}
	
	
	
END.

