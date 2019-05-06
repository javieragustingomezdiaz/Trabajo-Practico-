program tp12ejer8;
uses
  crt;
type
  vector=array[1..31]of integer;
var
  quincena:vector;
  
procedure carga(var v:vector);
var
  i:integer;
begin
  writeln('ingrese la cantidad de personas: ');
  for i:=1 to 31 do
    begin
      writeln('el dia ',i,' ingresaron ');
      readln(v[i]);
    end;
end;

procedure promedio(v:vector);
var
  i:integer;
  suma:integer;
  prom:integer;
begin
  prom:=0;
  suma:=0;
  for i:=1 to 15 do
    suma:=suma+v[i];
  prom:=suma div 15;
  writeln('promedio de la quincena es ',prom);
  for i:=1 to 15 do
    if(v[i]<prom)then
      writeln('el dia ',i,' ingresaron ',v[i]);
  prom:=0;
  suma:=0;
  for i:=16 to 31 do
    suma:=suma+v[i];
  prom:= suma div 15;
  writeln('promedio de la segunda quincena es ',prom);
  for i:=16 to 31 do
    if(v[i]<prom)then
      writeln('el dia ',i,' ingresaron ',v[i]);
end;

begin
  carga(quincena);
  promedio(quincena);
end.
