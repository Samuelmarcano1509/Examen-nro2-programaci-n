{Crear un programa que permita imprimir un número ingresado por el usuario en un
color específico}
program Impresion_de_un_numero_divisible;
uses crt;
var n1,n2,n3:Integer;
i: integer;
const
div13 = 13;
div7 = 7;
div5 = 5;
div3 = 3;
div2 = 2;
{Se estan introduciendo las posibles varibales, y las constantes necesarias para el desempeño del programa}
//A continuacion se realizan las funciones
function comprobacion1 (p1:integer):integer;
const
x=13;
y=7;
z=5;
e=3;
d=2;
begin
if (p1 mod x=0) and ((p1 mod y=0) or (p1 mod z=0) or (p1 mod e=0) or (p1 mod d=0)) then
	begin
		textcolor(LightMagenta); writeln ('el numero: ', n1, ' es divisible entre varios de los parametros:D');
	end;
end;

function comprobacion2 (p1:integer):integer;
const
y=7;
z=5;
e=3;
d=2;
begin
if (p1 mod y=0) and ((p1 mod z=0) or (p1 mod e=0) or (p1 mod d=0)) then
	begin
		textcolor(LightMagenta); writeln ('el numero: ', n1, ' es divisible entre varios de los parametros:D');
	end;
end;

function comprobacion3 (p1:integer):integer;
const
z=5;
e=3;
d=2;
begin
if (p1 mod z=0) and ((p1 mod e=0) or (p1 mod d=0)) then
	begin
		textcolor(LightMagenta); writeln ('el numero: ', n1, ' es divisible entre varios de los parametros:D');
	end;
end;

function comprobacion4 (p1:integer):integer;
const
e=3;
d=2;
begin
if (p1 mod e=0) and (p1 mod d=0) then
	begin
		textcolor(LightMagenta); writeln ('el numero: ', n1, ' es divisible entre varios de los parametros:D');
	end;
end;

BEGIN
clrscr();
	{Aca se estan ingresando datos, seria el prototipo base para el programa}
	writeln('ingrese un numero');
	readln (n1);
	writeln ('Realizando analisis... presione enter para continuar');
	readln();
	comprobacion1 (n1);                        //primer vistazo a la implementacion de la funcion
		if n1 mod div13=0 then
			begin
				textcolor(brown); writeln ('Es divisible entre [13] el numero: ',n1);	
			end;
	comprobacion2(n1);
		if n1 mod div7=0 then
			begin
				textcolor(green); writeln ('es divisible entre [7] el numero: ',n1);	
			end;
	comprobacion3 (n1);
		if n1 mod div5=0 then
			begin
				textcolor (red); writeln ('es divisible entre [5] el numero: ',n1);
			end;
	comprobacion4 (n1);
		if n1 mod div3=0 then
			begin
				textcolor (blue); writeln ('es divisible entre [3] el numero: ',n1);
			end
		else if n1 mod div2=0 then
			begin
				textcolor(yellow); writeln ('es divisible entre [2] el numero: ', n1);
			end
		else
			writeln (n1, ' no es divisible entre algunos de los parametros del programa');
			
		{Al ser divisible el numero ingresado por el usuario, el programa realizara una evaluacion de los parametros establecidos y sera indicado de manera efectiva en el color correspondiente, de ser el caso contrario, se mostrara en blanco}
	//nota: Ahora se empieza a optimizar el programa :D
	
	
	
END.

