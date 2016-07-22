Program porttest;
Uses inpout32;
Var IsInpOutOpen,IsXP64:boolean;
    Portnum:smallInt;
    Port_data:byte;

Procedure Readloop;
var
 loop_count:integer;
 port_read:byte;
Begin
  for loop_count:=1 to 2 do
    begin
      port_read:=0;
      port_read:=inp32(portnum);
 {     port_read:=DlPortReadPortUchar(portnum);}
      writeln('Port ',portnum,': ',Port_read);
    end;
end;

Begin
IsInpOutOpen:=IsInpOutDriverOpen;
IsXP64:=IsXP64Bit;
writeln('Is InpOut Driver Open: ',IsInpOutOpen,'  Is 64Bit: ',IsXP64);
Write('Enter Port Number: ');
Readln(portnum);
Readloop;

repeat
Begin
Write('Enter New Data: ');
readln(port_data);

{DlPortWritePortUchar(portnum,port_data); }
out32(portnum,port_data);

readloop;
end
Until
Port_data=$0;
end.

