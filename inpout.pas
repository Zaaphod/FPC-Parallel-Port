Unit inpout;

Interface
   Function  IsInpOutDriverOpen                        :Boolean;     {$ifdef Windows} stdcall {$else} cdecl {$endif};
   Function  IsXP64Bit                                 :Boolean;     {$ifdef Windows} stdcall {$else} cdecl {$endif};
   Function  Inp32                 (Port:Longint)      :Byte;        {$ifdef Windows} stdcall {$else} cdecl {$endif};
   Procedure Out32                 (Port:Longint; Value:Byte);       {$ifdef Windows} stdcall {$else} cdecl {$endif};
   Function  DlPortReadPortUchar   (Port:LongInt)      :Char;        {$ifdef Windows} stdcall {$else} cdecl {$endif};
   Procedure DlPortWritePortUchar  (Port:LongInt; Value:Char);       {$ifdef Windows} stdcall {$else} cdecl {$endif};
   Function  DlPortReadPortUshort  (Port:LongInt)      :Word;        {$ifdef Windows} stdcall {$else} cdecl {$endif};
   Procedure DlPortWritePortUshort (Port:LongInt; Value:Word);       {$ifdef Windows} stdcall {$else} cdecl {$endif};
   Function  DlPortReadPortUlong   (Port:LongInt)      :Longword;    {$ifdef Windows} stdcall {$else} cdecl {$endif};
   Procedure DlPortWritePortUlong  (Port:LongInt; Value:Longword);   {$ifdef Windows} stdcall {$else} cdecl {$endif};

Implementation
   Function  IsInpOutDriverOpen                        :Boolean;     {$ifdef Windows} stdcall {$else} cdecl {$endif}; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Function  IsXP64Bit                                 :Boolean;     {$ifdef Windows} stdcall {$else} cdecl {$endif}; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Function  Inp32                 (Port:Longint)      :Byte;        {$ifdef Windows} stdcall {$else} cdecl {$endif}; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Procedure Out32                 (Port:Longint; Value:Byte);       {$ifdef Windows} stdcall {$else} cdecl {$endif}; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Function  DlPortReadPortUchar   (Port:LongInt)      :Char;        {$ifdef Windows} stdcall {$else} cdecl {$endif}; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Procedure DlPortWritePortUchar  (Port:LongInt; Value:Char);       {$ifdef Windows} stdcall {$else} cdecl {$endif}; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Function  DlPortReadPortUshort  (Port:LongInt)      :Word;        {$ifdef Windows} stdcall {$else} cdecl {$endif}; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Procedure DlPortWritePortUshort (Port:LongInt; Value:Word);       {$ifdef Windows} stdcall {$else} cdecl {$endif}; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Function  DlPortReadPortUlong   (Port:LongInt)      :Longword;    {$ifdef Windows} stdcall {$else} cdecl {$endif}; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
   Procedure DlPortWritePortUlong  (Port:LongInt; Value:Longword);   {$ifdef Windows} stdcall {$else} cdecl {$endif}; external {$ifdef CPU32} 'inpout32.dll' {$else} 'inpoutx64.dll' {$endif};
End.