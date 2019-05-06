program tp12ejer7;
  uses 
    crt;
  type
    vector=array[1..30]of real;
  var
    num:vector;
    
procedure ingresar_datos(var vec:vector);
  var
    i:integer;
  begin
    writeln('ingrese 5 notas ');
    for i:=1 to 5 do
      readln(vec[i]);
  end;
  
procedure procesar_notas(var vec:vector);
  var
    i,aprob,desaprob:integer;
    suma, notab,notaa,promedio:real;
  begin
    i:=1;
    suma:=0;
    notab:=vec[i];
    notaa:=vec[i];
    promedio:=0;
    aprob:=0;
    desaprob:=0;
    for i:=1 to 5 do
      begin
        suma:=suma+vec[i];
        if(vec[i]>notaa)then
          notaa:=vec[i];
        if(vec[i]<notab)then
          notab:=vec[i];
        if(vec[i]>=6)then
          aprob:=aprob+1
        else
          desaprob:=desaprob+1;
      end;
    promedio:= suma / 5;
    writeln('nota mas alta ',notaa:2:2);
    writeln('nota mas baja ',notab:2:2);
    writeln('cantidad de aprobados ',aprob);
    writeln('cantidad de desaprobados ',desaprob);
    writeln('promedio ',promedio:3:2);
  end;
  
begin
  ingresar_datos(num);
  procesar_notas(num);
end.
