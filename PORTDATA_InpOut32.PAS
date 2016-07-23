Program porttest;
Uses inpout32;
Var IsInpOutOpen,IsXP64:boolean;
    Portnum:word;
    Port_data,Port_read:byte; {Out32, Inp32}
    Port_data_UC,Port_read_UC:char; {DlPortWritePortUchar, and port_read:=DlPortReadPortUchar}
    Port_data_US,Port_read_US:word; {DlPortWritePortUshort, and port_read:=DlPortReadPortUshort}

Procedure Readport;
begin
   port_read:=inp32(portnum);
   writeln('Port ',portnum,'                Read with inp32: ',Port_read);
   Port_read_UC:=DlPortReadPortUchar(portnum);
   writeln('Port ',portnum,'  Read with DlPortReadPortUchar: ',Port_read);
   Port_read_UC:=DlPortReadPortUchar(portnum);
   writeln('Port ',portnum,' Read with DlPortReadPortUshort: ',Port_read);
end;

Begin
   IsInpOutOpen:=IsInpOutDriverOpen;
   IsXP64:=IsXP64Bit;
   writeln('Is InpOut Driver Open: ',IsInpOutOpen,'  Is 64Bit: ',IsXP64);
   Write('Enter Port Number (prefix with $ for hex): ');
   Readln(portnum);
   Readport;
   Repeat
      Begin
         Write('Enter New Data Byte: ');
         readln(port_data);
         out32(portnum,port_data);
         Readport;
         Write('Enter New Data Char: ');
         readln(port_data);
         port_data_UC:=char(port_data);
         DlPortWritePortUchar(portnum,port_data_UC);
         Readport;
         Write('Enter New Data Word: ');
         readln(port_data_US);
         DlPortWritePortUshort(portnum,port_data_US);
         Readport;
      end
   Until
      Port_data=$0;
end.

