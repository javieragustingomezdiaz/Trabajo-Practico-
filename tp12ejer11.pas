program tp12ejer11;
uses
  crt;
type
  vectorcab=array[1..100]of string[60];
  vectorpre=array[1..100]of integer;

procedure carga(var cab:vectorcab; var prem:vectorpre;m:integer);
  var
    i:integer;
  begin
    writeln('ingrese los nombres de los caballos ');
    for i:=1 to m do
      readln(cab[i]);
    writeln('ingrese la cantidad de premios ganados por cada caballo ');
    for i:=1 to m do
      read(prem[i]);
  end;
  
procedure mayorpremios(ca:vectorcab; pr:vectorpre; o:integer);
var
  x,num:integer;
  cab:string[60];
begin
  cab:='';
  num:=0;
  for x:=1 to o do
    if(pr[x] > num)then
      begin
        num:=pr[x];
        cab:=ca[x];
      end;
  writeln('el caballo con mas premios ganados es ',cab,' con ',num,' premios');
end;

var
  caballo:vectorcab;
  premios:vectorpre;
  n:integer;
begin
  writeln('ingrese el numero del ultimo caballo');
  read(n);
  carga(caballo,premios,n);
  mayorpremios(caballo,premios,n);
end.
