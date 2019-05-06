program tp12ejer9;
uses 
  crt;
type
  vector=array[1..100]of integer;

procedure carga(var vec:vector);
var
  i:integer;
begin
  writeln('ingrese un numero que sea mayor a 1 y menor a 100');
  for i:=1 to 4 do
    begin
      readln(vec[i]);
    end;
end;
  
procedure itema(var vecc:vector;veca,vecb:vector);
var
  i:integer;
begin
  for i:=1 to 4 do
    if(veca[i]>=vecb[i])then
      vecc[i]:=veca[i]
    else
      vecc[i]:=vecb[i];
  writeln('los elementos de los vectores ');
  for i:=1 to 4 do
    writeln(veca[i],' ',vecb[i],' ',vecc[i]);
end;

procedure itemb(vc ,va,vb:vector);
var
  x:integer;
begin
  for x:=1 to 4 do 
    vc[x]:=va[vb[x]];
  writeln('los elementos de los vectores ');
  for x:=1 to 4 do
    writeln(va[x],' ',vb[x],' ',vc[x]);
end;

var
  a,b,c:vector;
begin
  writeln('ingrese los valores del rpimer vector ');
  carga(a);
  writeln('ingrese los valores del segundo vector que no sea menora 1 y mayor a 100 ');
  carga(b);
  itema(a,b,c);
  itemb(a,b,c);
end.
