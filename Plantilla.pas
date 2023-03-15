{Crear un programa que permita imprimir un número ingresado por el usuario en un
color específico}
program Impresion_de_un_numero_divisible;
uses crt;
var n1:Longint;
const
div13 = 13;
div7 = 7;
div5 = 5;
div3 = 3;
div2 = 2;
{Se estan introduciendo las posibles varibales, y las constantes necesarias para el desempeño del programa}
//A continuacion se realizan las funciones
function comprobacion1 (p1:longint):longint;
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

function comprobacion2 (p1:longint):longint;
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

function comprobacion3 (p1:longint):longint;
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

function comprobacion4 (p1:longint):longint;
const
e=3;
d=2;
begin
if (p1 mod e=0) and (p1 mod d=0) then
	begin
		textcolor(LightMagenta); writeln ('el numero: ', n1, ' es divisible entre varios de los parametros:D');
	end;
end;

function comprobacion5 (p1:longint):longint;
const
d=2;
begin
if (p1 mod d=0) then
	begin
		textcolor(yellow); writeln ('es divisible entre [2] el numero: ', n1);
	end;
end;

//Los colores utilizados dada las especificaciones fueron marron [13], verde [7], rojo [5], azul [3], amarillo [2]
// En caso de que el numero imprimido sea divisible entre varios parametros se usa el color Magenta
BEGIN
clrscr();
	{Aca se estan ingresando datos, seria el prototipo base para el programa}
	writeln('ingrese un numero');
	readln (n1);
	repeat
	if n1<=0 then
	begin
	writeln ('eliga un numero distinto de cero y que no sea negativo');
	readln(n1);
	end;
	until n1>0;
	writeln ('Realizando analisis... presione enter para continuar');
	readln();
	
		
	comprobacion1 (n1);                         //primer vistazo a la implementacion de la funcion
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
			end;
	comprobacion5 (n1);
	if (n1 mod div13<> 0) and (n1 mod div7<> 0) and (n1 mod div5 <>0) and (n1 mod div3 <>0) and (n1 mod div2<>0) then
				writeln (n1, ' no es divisible entre algunos de los parametros del programa')
		
End.			
		
			
		{Al ser divisible el numero ingresado por el usuario, el programa realizara una evaluacion de los parametros establecidos y sera indicado de manera efectiva en el color correspondiente, de ser el caso contrario, se mostrara en blanco}
	//nota: Ahora se empieza a optimizar el programa :D

//El desarrollo del programa se torna al rededor de comprobar si el numero que ingrese el usuario es divisible con alguno de los parametros, a lo largo del mismo se comprueba si es divisible entre uno o varios parametros.
//El resultado final de la comprobacion en cada punto es que mostrara un mensaje en un color especifico si se puede dividir entre varios de los parametros, asi mismo mostrata el primer parametro por el que es dividido en su respectivo color

	
	


