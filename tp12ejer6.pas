program tp12ejer6;
  uses
    crt;
  type 
    vector=array[1..20]of integer;
  var
    num:vector;
procedure carga(var vec:vector);
  var
    i:integer;
  begin
    writeln('ingrese 5 nº enteros: ');
    for i:=1 to 5 do
      readln(vec[i]);
  end;
  
  
procedure posicion(vec:vector);
  var
    i:integer;
  begin
    for i:=1 to 5 do
      if(vec[i] mod 3 = 0)then
        writeln('valor en la posisicion ',i,' es multiplo de 3 ');
  end;
  
begin
  carga(num);
  posicion(num);
end.
