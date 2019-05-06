program tp12ejer10;
uses 
  crt;
type
  veccliente=array[1..100]of string[50];
  veccuenta=array[1..100]of integer;

procedure carga(var vecclien:veccliente; var veccuen:veccuenta);
  var
    i:integer;
  begin
    writeln('ingrese el nombre del cliente ');
    for i:=1 to 4 do
      readln(vecclien[i]);
    writeln('ingrese la cuenta pendiente del cliente ');
    for i:=1 to 4 do
      readln(veccuen[i]);
  end;
  
procedure deuda(vectorcli:veccliente; vectorcu:veccuenta);
  var
    j:integer;
  begin
    writeln('clientes con deudas pendientes ');
    for j:=1 to 4 do
      if(vectorcu[j]>0)then
        writeln(vectorcli[j],' adeuda ',vectorcu[j]);
  end;
  
procedure corriente(veccli:veccliente;veccu:veccuenta);
  var
    x:integer;
  begin
    writeln('clientes al corriente de pago');
    for x:=1 to 4 do
      if(veccu[x]=0)then
        writeln(veccli[x]);
  end;
  
var
  vcl:veccliente;
  vcu:veccuenta;
begin
  carga(vcl,vcu);
  deuda(vcl,vcu);
  corriente(vcl,vcu);
end.
