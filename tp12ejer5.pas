program tp12ejer5;
uses 
  crt;
type
  vector=array[1..100]of integer;
var
  vec:vector;
  u:integer;

procedure carga(n:integer; x:integer; sen:vector);
  var
    i:Integer;
  begin
    for i:=1 to x do
      sen[i]:=n*i;
    for i:=1 to x do
      write(sen[i],' ');
  end;
  
procedure llamar(sen:vector);
  var
    x,n:integer;
  begin
    x:=1;
    while(x<>0)do
      begin
        writeln('ingrese la cantidad de multiplos que desea obtener, el valor maximo permitido es 100, para terminar ingrese cero ');
        read(x);
        if(x<>0)then
          begin
            writeln('ingrese el valor del que desea obtener los multiplos ');
            read(n);
            carga(n,x,sen);
          end;
      end;
  end;
  
begin
  for u:=1 to 100 do 
    vec[u]:=0;
  llamar(vec);
end.
