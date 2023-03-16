{Desarrolle un programa en Pascal que permita al usuario ingresar una frase y a su 
vez tenga las opciones de convertir esa frase ingresada en números Binarios, 
Hexadecimal, Octal y Romano.}
program Traductor;
uses crt;
var n1: string;
var n2,n3: integer;
//Primera funcion para la transformacion de una palabra en un codigo binario.
function traductorbinario (b:string):string;

var i,p:longInt;

const
valor2ala7 = 128;
valor2ala6 = 64;
valor2ala5 = 32;
valor2ala4 = 16;
valor2ala3 = 8;
valor2ala2 = 4;
valor2ala1 = 2;
valor2ala0 = 1;

begin
	for i:= 1 to length(b) do
		begin
		p:= ord(b[i]);
			begin
				if p >= valor2ala7 then
					begin
						write ('1');
						p:= p-valor2ala7;
					end
				else write ('0');
				
				if p>= valor2ala6 then
					begin
						write ('1');
						p:= p-valor2ala6;
					end
				else write ('0');
				
				if p>=valor2ala5 then
					begin
						write ('1');
						p:= p-valor2ala5;
					end
				else write ('0');
				
				if p>=valor2ala4 then
					begin
						write ('1');
						p:=p-valor2ala4;
					end
				else write ('0');
				
				if p>=valor2ala3 then
					begin
						write ('1');
						p:=p-valor2ala3;
					end
				else write ('0');
				
				if p>=valor2ala2 then
					begin
						write ('1');
						p:=p-valor2ala2;
					end
				else write ('0');
				
				if p>=valor2ala2 then
					begin
						write('1');
						p:=p-valor2ala2;
					end
				else write ('0');
				
				if p>=valor2ala1 then
					begin
						write ('1');
						p:= p-valor2ala1;
					end
				else write ('0');
				
				if p>=valor2ala0 then
					begin
						write ('1');
						p:=p-valor2ala0;
					end
				else write ('0');
			end;
				write (' ');
		end;
end;


begin
	write ('======================================================================');
	writeln('');
	write('[Bienvenido al sistema de traduccion para letras, frases u oraciones]');
	writeln('');
	write ('======================================================================');
	writeln ('');
	writeln('¿Desea realizar una conversion?');
	writeln ('1-[SI]');
	writeln ('2-[NO]');
	readln (n2);
		case n2 of
			1: begin
				Writeln ('Escoga una de las opciones dispoibles');
				writeln ('1-[BINARIO]');
				writeln ('2-[OCTAL]');
				writeln ('3-[HEXADECIMAL]');
				writeln ('4-[ROMANO]');
				readln (n3);
				case n3 of
					1:begin
					writeln ('Ha escogido la conversion a binario');
					writeln ('Por favor ingrese una palabra u oracion');
					readln(n1);
					traductorbinario(n1);
					end;
				end;
			end;
		2: writeln ('[Hasta Luego, tenga feliz dia]');
		end;
		
	readln;

end.
