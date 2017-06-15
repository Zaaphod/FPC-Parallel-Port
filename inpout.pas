Unit inpout;

Interface
   Function  IsInpOutDriverOpen                        :Boolean;    stdcall;
   Function  IsXP64Bit                                 :Boolean;    stdcall;
   Function  Inp32                 (Port:Longint)      :Byte;       stdcall;
   Procedure Out32                 (Port:Longint; Value:Byte);      stdcall;
   Function  DlPortReadPortUchar   (Port:LongInt)      :Char;       stdcall;
   Procedure DlPortWritePortUchar  (Port:LongInt; Value:Char);      stdcall;
   Function  DlPortReadPortUshort  (Port:LongInt)      :Word;       stdcall;
   Procedure DlPortWritePortUshort (Port:LongInt; Value:Word);      stdcall;
   Function  DlPortReadPortUlong   (Port:LongInt)      :Longword;   stdcall;
   Procedure DlPortWritePortUlong  (Port:LongInt; Value:Longword);  stdcall;

Implementation
   Function  IsInpOutDriverOpen                        :Boolean;    stdcall; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Function  IsXP64Bit                                 :Boolean;    stdcall; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Function  Inp32                 (Port:Longint)      :Byte;       stdcall; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Procedure Out32                 (Port:Longint; Value:Byte);      stdcall; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Function  DlPortReadPortUchar   (Port:LongInt)      :Char;       stdcall; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Procedure DlPortWritePortUchar  (Port:LongInt; Value:Char);      stdcall; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Function  DlPortReadPortUshort  (Port:LongInt)      :Word;       stdcall; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Procedure DlPortWritePortUshort (Port:LongInt; Value:Word);      stdcall; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Function  DlPortReadPortUlong   (Port:LongInt)      :Longword;   stdcall; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Procedure DlPortWritePortUlong  (Port:LongInt; Value:Longword);  stdcall; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
End.