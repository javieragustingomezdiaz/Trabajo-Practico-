program tp12ejer3;
uses 
  crt;
type
  vector=array[1..30]of real;
var
  vec:vector;
procedure carga(var sen:vector);
  var
    i:integer;
  begin
    writeln('ingrese un nº en grados');
    for i:=1 to 5 do
      readln(sen[i]);
  end;
  
procedure temperatura(sen:vector);
  var
    i,diaa,diab:integer;
    baja,alta:real;
  begin
    baja:=sen[1];
    alta:=sen[1];
    diaa:=1;
    diab:=1;
    for i:=1 to 5 do
      begin
        if(sen[i]<baja)then
          begin
            baja:=sen[i];
            diab:=i;
          end;
        if (sen[i]>alta)then
          begin
            alta:=sen[i];
            diaa:=i;
          end;
      end;
    writeln('la temperatura mas baja fue de ',baja:3:3,' el dia ',diab);
    writeln('la temperatura mas alta fue de ',alta:3:3,' el dia ',diaa);
  end;

begin
  carga(vec);
  temperatura(vec);
end.
