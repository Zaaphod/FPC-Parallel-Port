unit inpout32;

interface
   Function IsInpOutDriverOpen:boolean;{$ifndef Win32} cdecl {$else} stdcall {$endif};
   Function IsXP64Bit:boolean;{$ifndef Win32} cdecl {$else} stdcall {$endif};
   Function  Inp32(Port:longint):Byte;{$ifndef Win32} cdecl {$else} stdcall {$endif};
   Procedure Out32(Port:longint; Value:Byte);{$ifndef Win32} cdecl {$else} stdcall {$endif};
   Function DlPortReadPortUchar(Port:longInt):Char;{$ifndef Win32} cdecl {$else} stdcall {$endif};
   Procedure DlPortWritePortUchar(Port:longInt; Value:Char);{$ifndef Win32} cdecl {$else} stdcall {$endif};
   Function DlPortReadPortUshort(Port:longInt):word;{$ifndef Win32} cdecl {$else} stdcall {$endif};
   Procedure DlPortWritePortUshort(Port:longInt; Value:word);{$ifndef Win32} cdecl {$else} stdcall {$endif};

implementation
   Function IsInpOutDriverOpen; {$ifndef Win32} cdecl {$else} stdcall {$endif}; external 'inpout32.DLL';
   Function IsXP64Bit; {$ifndef Win32} cdecl {$else} stdcall {$endif}; external 'inpout32.DLL';
   Function Inp32; {$ifndef Win32} cdecl {$else} stdcall {$endif}; external 'inpout32.DLL';
   Procedure Out32; {$ifndef Win32} cdecl {$else} stdcall {$endif}; external 'inpout32.DLL';
   Function DlPortReadPortUchar; {$ifndef Win32} cdecl {$else} stdcall {$endif}; external 'inpout32.DLL';
   Procedure DlPortWritePortUchar; {$ifndef Win32} cdecl {$else} stdcall {$endif}; external 'inpout32.DLL';
   Function DlPortReadPortUshort; {$ifndef Win32} cdecl {$else} stdcall {$endif}; external 'inpout32.DLL';
   Procedure DlPortWritePortUshort; {$ifndef Win32} cdecl {$else} stdcall {$endif}; external 'inpout32.DLL';

end.

