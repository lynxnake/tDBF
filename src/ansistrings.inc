// These are inlined recirections to functions that were
// moved to the AnsiStrings unit to prevent ambiguous overloaded errors
// in Delphi XE4 and up.

function StrLen(Str: PAnsiChar): integer; inline;
begin
  Result := AnsiStrings.StrLen(Str);
end;

function StrCopy(Dest, Source: PAnsiChar): PAnsiChar; inline;
begin
  Result := AnsiStrings.StrCopy(Dest, Source)
end;

function FloatToText(BufferArg: PAnsiChar; const Value; ValueType: TFloatValue;
  Format: TFloatFormat; Precision, Digits: Integer): Integer; inline;
begin
  Result := AnsiStrings.FloatToText(BufferArg, Value, ValueType, Format, Precision, Digits);
end;

function AnsiStrUpper(Str: PAnsiChar): PAnsiChar; inline;
begin
  Result := AnsiStrings.AnsiStrUpper(Str)
end;

function AnsiStrLower(Str: PAnsiChar): PAnsiChar; inline;
begin
  Result := AnsiStrings.AnsiStrLower(Str)
end;

function AnsiStrIComp(S1, S2: PAnsiChar): Integer; inline;
begin
  Result := AnsiStrings.AnsiStrIComp(S1, S2);
end;

function AnsiStrLIComp(S1, S2: PAnsiChar; MaxLen: Cardinal): Integer; inline;
begin
  Result := AnsiStrings.AnsiStrLIComp(S1, S2, MaxLen);
end;

function AnsiStrPos(Str, SubStr: PAnsiChar): PAnsiChar; inline;
begin
  Result := AnsiStrings.AnsiStrPos(Str, Substr);
end;

function AnsiStrLComp(S1, S2: PAnsiChar; MaxLen: Cardinal): Integer; inline;
begin
  Result := AnsiStrings.AnsiStrLComp(S1, S2, MaxLen);
end;

function AnsiStrComp(S1, S2: PAnsiChar): Integer; inline;
begin
  Result := AnsiStrings.AnsiStrComp(S1, S2);
end;

function StrScan(const Str: PAnsiChar; Chr: AnsiChar): PAnsiChar; inline;
begin
  Result := AnsiStrings.StrScan(Str, Chr);
end;

function TextToFloat(Buffer: PAnsiChar; var Value; ValueType: TFloatValue): Boolean; inline;
begin
  Result := AnsiStrings.TextToFloat(Buffer, Value, ValueType);
end;

function StrLComp(const Str1, Str2: PAnsiChar; MaxLen: Cardinal): Integer; inline;
begin
  Result := AnsiStrings.StrLComp(Str1, Str2, MaxLen);
end;

function StrPLCopy(Dest: PAnsiChar; const Source: AnsiString; MaxLen: Cardinal): PAnsiChar; inline;
begin
  Result := AnsiStrings.StrPLCopy(Dest, Source, MaxLen);
end;

function StrLCopy(Dest: PAnsiChar; const Source: PAnsiChar; MaxLen: Cardinal): PAnsiChar; inline;
begin
  Result := AnsiStrings.StrLCopy(Dest, Source, MaxLen);
end;

