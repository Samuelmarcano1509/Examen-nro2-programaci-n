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
				textcolor(brown); writeln ('Es divisible entre [13] el numero: ',n1);	
			end
		else if n1 mod div7=0 then
			begin
			textcolor(green); writeln ('es divisible entre [7] el numero: ',n1);	
			end
		else if n1 mod div5=0 then
		begin
		textcolor (red); writeln ('es divisible entre [5] el numero: ',n1);
		end
		else if n1 mod div3=0 then
		begin
		textcolor (blue); writeln ('es divisible entre [3] el numero: ',n1);
		end
	
		else
			writeln (n1, ' no es divisible entre algunos de los parametros del programa');
			
		{Al ser divisible el numero ingresado por el usuario, el programa realizara una evaluacion de los parametros establecidos y sera indicado de manera efectiva en el color correspondiente, de ser el caso contrario, se mostrara en blanco}
	
	
	
END.

