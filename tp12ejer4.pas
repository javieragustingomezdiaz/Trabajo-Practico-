program tp12ejer4;
  uses 
    crt;
  type 
    vector=array[1..20]of integer;
  var
    num:vector;
procedure carga(var sen:vector);
  var
    i,n:integer;
  begin
    write('ingrese un nº ');
    read(n);
    for i:=1 to 5 do
      begin
        sen[i]:=n*i;
        write(sen[i],' ');
      end;
  end;

begin
  carga(num);
end.
