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
function traducirromano(r:string):string;
var A,B:longint;
begin
	for A:= 1 to length (r) do
		begin
			B:= ord(r[A]);
				if B>=100 then
					begin
						write('C');
						B:= B-100;
							if B>=100 then
								begin
									write('C');
									B:= B-100;
										if B>=100 then
											begin
												write('C');
												B:= B-100;
											end;
								end;
					end;
		
			if B>=90 then
				begin
					write('XC');
					B:= B-90;
				end;
				
			if B>=50 then
				begin
					write('L');
					B:=B-50;
				end;
			if B>=40 then
						begin
							write('XL');
							B:=B-40;
						end;
		
			if B>=10 then
				    begin
						write('X');
						B:=B-10;
							if B>=10 then
								begin
									write('X');
									B:=B-10;
										if B>=10 then
											begin
												write('X');
												B:=B-10;
											end;
								end;
					end;
					
						if B>=9 then
							begin
								write('IX');
								B:=B-9;
							end;
					
						if B>=5 then
							begin
								write ('V');
								B:=B-5;
							end;
					
						if B>=4 then
							begin
								write('IV');
								B:=B-4;
					
						if B>=1 then
								begin
									write('I');
									B:=B-1;
										if B>=1 then
										begin
											write('I');
											B:=B-1;
												if B>=1 then
													begin
														write('I');
														B:=B-1;
													end;
										end;
								end;

	write ('');
end;
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
				writeln ('2-[ROMANO]');
				writeln ('3-[HEXADECIMAL]');
				writeln ('4-[OCTAL]');
				readln (n3);
				case n3 of
					1:begin
					writeln ('Ha escogido la conversion a binario');
					writeln ('Por favor ingrese una palabra u oracion');
					readln(n1);
					traductorbinario(n1);
					end;
					2: begin
					writeln ('Ha escogido la conversion a Romano');
					Writeln ('por favor ingrese una palabra u oracion');
					readln (n1);
					traducirromano(n1);
					end;
				end;
			end;
		2: writeln ('[Hasta Luego, tenga feliz dia]');
		end;
		
	readln;

end.
