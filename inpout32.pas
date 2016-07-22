unit inpout32;

interface
Function IsInpOutDriverOpen:boolean;
Function IsXP64Bit:boolean;

Function  Inp32(Port:SmallInt):Byte;
Procedure Out32(Port:SmallInt; Value:Byte);

Function DlPortReadPortUchar(Port:SmallInt):Byte;
Function DlPortReadPortUshort(Port:SmallInt):Word;
Function DlPortReadPortUlong(Port:SmallInt):Cardinal;

Procedure DlPortWritePortUchar(Port:SmallInt; Value:Byte);
Procedure DlPortWritePortUshort(Port:SmallInt; Value:Word);
Procedure DlPortWritePortUlong(Port:SmallInt; Value:Cardinal);

implementation
Function IsInpOutDriverOpen; external 'inpout32.DLL';
Function IsXP64Bit; external 'inpout32.DLL';

Function Inp32; external 'inpout32.DLL';
Procedure Out32; external 'inpout32.DLL';

Function DlPortReadPortUchar; external 'inpout32.DLL';
Function DlPortReadPortUshort; external 'inpout32.DLL';
Function DlPortReadPortUlong; external 'inpout32.DLL';

Procedure DlPortWritePortUchar; external 'inpout32.DLL';
Procedure DlPortWritePortUshort; external 'inpout32.DLL';
Procedure DlPortWritePortUlong; external 'inpout32.DLL';
end.

