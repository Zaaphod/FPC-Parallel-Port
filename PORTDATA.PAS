Program porttest;
{This is my original Turbo Pascal port test program}
Var Portnum:integer;
    Portdata,portdata2,portdata3:byte;
    keyin:char;
Begin
Write('Enter Port Number: ');
Readln(portnum);
portdata:=port[portnum];
writeln('Port ',portnum,': ',Portdata);

Write('Enter New Data: ');
readln(portdata);
port[portnum]:=portdata;
portdata:=port[portnum];
portdata2:=port[portnum+1];
portdata3:=port[portnum+2];
writeln(Portdata,'     ',Portdata2,'     ',Portdata3);
end.