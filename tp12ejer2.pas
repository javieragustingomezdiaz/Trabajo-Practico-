program tp12ejer2;                       'programa que devuelve el inverso de un vector de numeros'
uses 
  crt;
type 
  vector=array[1..25]of integer;
var
  carga:vector;
procedure nuevo(var sen:vector);          'permite ingresar numeros a un vector'
  var
    i:integer;
  begin
    writeln('ingrese numeros enteros: ');
    for i:=1 to 15 do
      readln(sen[i]);
  end;
  
procedure inverso(var sen:vector);        'muestra los elementos de un vector de manera inversa'
  var
    i:Integer;
  begin
    for i:=15 downto 1 do
      write(sen[i],' '); 
  end;
  
begin
  nuevo(carga);
  inverso(carga);
end.
