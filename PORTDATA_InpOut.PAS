Program porttest;
Uses inpout;
Var 
   IsInpOutOpen,IsXP64       :boolean;
   portstr                   :String;
   Portnum,code              :Word;
   Port_data,Port_read       :byte;     {Out32, Inp32}
   Port_data_UC,Port_read_UC :char;     {DlPortWritePortUchar, and port_read:=DlPortReadPortUchar}
   Port_data_US,Port_read_US :word;     {DlPortWritePortUshort, and port_read:=DlPortReadPortUshort}
   Port_data_UL,Port_read_UL :Longword; {DlPortWritePortUlong, and port_read:=DlPortReadPortUlong}

Procedure Readport;
begin
   port_read:=inp32(portnum);
   writeln('Byte Read with inp32:');
   writeln('Port ',portstr,'   ',Port_read,'  ',Chr(Port_read));
   Port_read_UC:=DlPortReadPortUchar(portnum);
   writeln('Char Read with DlPortReadPortUchar:');
   writeln('Port ',portstr,'   ',Port_read_UC,'  ',ord(Port_read_UC));
   Port_read_US:=DlPortReadPortUshort(portnum);
   writeln('Word read with DlPortReadPortUshort: ',Port_read_US);
   writeln('Port ',portstr,'   ',Port_read_US AND $FF,'  ',Chr(Port_read_US AND $FF));
   writeln('Port ',portstr,'+1 ',(Port_read_US AND $FF00)SHR 8,'  ',chr((Port_read_US AND $FF00)SHR 8));
   Port_read_UL:=DlPortReadPortUlong(portnum);
   writeln('Longword Read with DlPortReadPortUlong: ',Port_read_UL);
   writeln('Port ',portstr,'   ',Port_read_UL AND $FF,'  ',Chr(Port_read_UL AND $FF));
   writeln('Port ',portstr,'+1 ',(Port_read_UL AND $FF00)SHR 8,'  ',chr((Port_read_UL AND $FF00)SHR 8));
   writeln('Port ',portstr,'+2 ',(Port_read_UL AND $FF0000)SHR 16,'  ',chr((Port_read_UL AND $FF0000)SHR 16));
   writeln('Port ',portstr,'+3 ',(Port_read_UL AND $FF000000)SHR 24,'  ',chr((Port_read_UL AND $FF000000)SHR 24));
   Writeln;
end;

Begin
   IsInpOutOpen:=IsInpOutDriverOpen;
   IsXP64:=IsXP64Bit;
   writeln('Is InpOut Driver Open: ',IsInpOutOpen,'  Is 64Bit: ',IsXP64);
   If not(IsInpOutOpen) then
      Begin
         Writeln('InpOut Driver Is not working,  Try Installing: InpOutDriver.exe');
         Write('Press Enter to Exit');
         Readln;
         Halt;
      End;
   Write('Enter Port Number (prefix with $ for hex): ');
   Readln(portstr);
   val(portstr,portnum,code);
   If code <> 0 then
      Begin
         Writeln('Error at Poistion: ',code);
         Writeln(copy(portstr,1,code-1),' Used');
         Writeln(copy(portstr,code,length(portstr)),' Discarded');
         portstr:=copy(portstr,1,code-1);
         val(portstr,portnum,code);
      End;
   writeln('Port: ',portstr,' = ',portnum);
   Writeln;
   Readport;
   Write('Enter New Data Byte: ');
   readln(port_data);
   writeln('Data = ',port_data);
   out32(portnum,port_data);
   Readport;
   Write('Enter New Data Char: ');
   readln(port_data);
   writeln('Data = ',char(port_data));
   port_data_UC:=char(port_data);
   DlPortWritePortUchar(portnum,port_data_UC);
   Readport;
   Write('Enter New Data Word: ');
   readln(port_data_US);
   writeln('Data = ',port_data_US);
   DlPortWritePortUshort(portnum,port_data_US);
   Readport;
   Write('Enter New Data Longword: ');
   readln(port_data_UL);
   writeln('Data = ',port_data_UL);
   DlPortWritePortUlong(portnum,port_data_UL);
   Readport;
end.

