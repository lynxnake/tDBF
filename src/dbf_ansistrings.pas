unit dbf_AnsiStrings;

{$I dbf_common.inc}

interface

uses
  SysUtils;

type
  TdbfStrLen = function(const Str: PAnsiChar): Cardinal;
  TdbfStrCopy = function(Dest: PAnsiChar; const Source: PAnsiChar): PAnsiChar;
  TdbfStrLCopy = function(Dest: PAnsiChar; const Source: PAnsiChar; MaxLen: Cardinal): PAnsiChar;
  TdbfFloatToText = function(BufferArg: PAnsiChar; const Value; {$ifndef FPC_VERSION}ValueType: TFloatValue;{$endif}
    Format: TFloatFormat; Precision, Digits: Integer): Integer;
  TdbfFloatToTextFmt = function(BufferArg: PAnsiChar; const Value; ValueType: TFloatValue;
    Format: TFloatFormat; Precision, Digits: Integer; const FormatSettings: TFormatSettings): Integer;
  TdbfStrUpper = function(Str: PAnsiChar): PAnsiChar;
  TdbfStrLower = function(Str: PAnsiChar): PAnsiChar;
  TdbfStrIComp = function(const S1, S2: PAnsiChar): Integer;
  TdbfStrLIComp = function(const S1, S2: PAnsiChar; MaxLen: Cardinal): Integer;
  TdbfStrPos = function(const Str, SubStr: PAnsiChar): PAnsiChar;
  TdbfStrLComp = function(const S1, S2: PAnsiChar; MaxLen: Cardinal): Integer;
  TdbfStrComp = function(const S1, S2: PAnsiChar): Integer;
  TdbfStrScan = function(const Str: PAnsiChar; Chr: AnsiChar): PAnsiChar;
  TdbfTextToFloat = function(Buffer: PAnsiChar; var Value; ValueType: TFloatValue): Boolean;
  TdbfTextToFloatFmt = function(Buffer: PAnsiChar; var Value; ValueType: TFloatValue; const FormatSettings: TFormatSettings): Boolean;
  TdbfStrPLCopy = function(Dest: PAnsiChar; const Source: AnsiString; MaxLen: Cardinal): PAnsiChar;
  TdbfTrimLeft = function(const S: AnsiString): AnsiString;
  TdbfTrimRight = function(const S: AnsiString): AnsiString;

var
  dbfStrLen: TdbfStrLen = nil;
  dbfStrCopy: TdbfStrCopy = nil;
  dbfStrLCopy: TdbfStrLCopy = nil;
  dbfFloatToText: TdbfFloatToText = nil;
  dbfFloatToTextFmt: TdbfFloatToTextFmt = nil;
  dbfStrUpper: TdbfStrUpper = nil;
  dbfStrLower: TdbfStrLower = nil;
  dbfStrIComp: TdbfStrIComp = nil;
  dbfStrLIComp: TdbfStrLIComp = nil;
  dbfStrPos: TdbfStrPos = nil;
  dbfStrLComp: TdbfStrLComp = nil;
  dbfStrComp: TdbfStrComp = nil;
  dbfStrScan: TdbfStrScan = nil;
  dbfTextToFloatFmt: TdbfTextToFloatFmt = nil;
  dbfTextToFloat: TdbfTextToFloat = nil;
  dbfStrPLCopy: TdbfStrPLCopy = nil;
  dbfTrimLeft: TdbfTrimLeft = nil;
  dbfTrimRight: TdbfTrimRight = nil;

implementation

{$IFDEF SUPPORT_ANSISTRINGS_UNIT}
uses
  AnsiStrings;
{$ENDIF}

{$IFDEF SUPPORT_ANSISTRINGS_UNIT}

procedure Init;
begin
  dbfStrLen := AnsiStrings.StrLen;
  dbfStrCopy := AnsiStrings.StrCopy;
  dbfStrLCopy := AnsiStrings.StrLCopy;
  dbfFloatToText := AnsiStrings.FloatToText;
  dbfFloatToTextFmt := AnsiStrings.FloatToText;
  dbfStrUpper := AnsiStrings.StrUpper;
  dbfStrLower := AnsiStrings.StrLower;
  dbfStrIComp := AnsiStrings.StrIComp;
  dbfStrLIComp := AnsiStrings.StrLIComp;
  dbfStrPos := AnsiStrings.StrPos;
  dbfStrLComp := AnsiStrings.StrLComp;
  dbfStrComp := AnsiStrings.StrComp;
  dbfStrScan := AnsiStrings.StrScan;
  dbfTextToFloatFmt := AnsiStrings.TextToFloat;
  dbfTextToFloat := AnsiStrings.TextToFloat;
  dbfStrPLCopy := AnsiStrings.StrPLCopy;
  dbfTrimLeft := AnsiStrings.TrimLeft;
  dbfTrimRight := AnsiStrings.TrimRight;
end;
{$ELSE}

{$ifdef FPC_VERSION}
procedure Init;
begin
  dbfStrLen := @SysUtils.StrLen;
  dbfStrCopy := @SysUtils.StrCopy;
  dbfStrLCopy := @SysUtils.StrLCopy;
  dbfFloatToText := @SysUtils.FloatToText;
  dbfFloatToTextFmt := @SysUtils.FloatToText;
  dbfStrUpper := @SysUtils.StrUpper;
  dbfStrLower := @SysUtils.StrLower;
  dbfStrIComp := @SysUtils.StrIComp;
  dbfStrLIComp := @SysUtils.StrLIComp;
  dbfStrPos := @SysUtils.StrPos;
  dbfStrLComp := @SysUtils.StrLComp;
  dbfStrComp := @SysUtils.StrComp;
  dbfStrScan := @SysUtils.StrScan;
  dbfTextToFloatFmt := @SysUtils.TextToFloat;
  dbfTextToFloat := @SysUtils.TextToFloat;
  dbfStrPLCopy := @SysUtils.StrPLCopy;
  dbfTrimLeft := @SysUtils.TrimLeft;
  dbfTrimRight := @SysUtils.TrimRight;
end;
{$else}
procedure Init;
begin
  dbfStrLen := SysUtils.StrLen;
  dbfStrCopy := SysUtils.StrCopy;
  dbfStrLCopy := SysUtils.StrLCopy;
  dbfFloatToText := SysUtils.FloatToText;
  dbfFloatToTextFmt := SysUtils.FloatToText;
  dbfStrUpper := SysUtils.StrUpper;
  dbfStrLower := SysUtils.StrLower;
  dbfStrIComp := SysUtils.StrIComp;
  dbfStrLIComp := SysUtils.StrLIComp;
  dbfStrPos := SysUtils.StrPos;
  dbfStrLComp := SysUtils.StrLComp;
  dbfStrComp := SysUtils.StrComp;
  dbfStrScan := SysUtils.StrScan;
  dbfTextToFloatFmt := SysUtils.TextToFloat;
  dbfTextToFloat := SysUtils.TextToFloat;
  dbfStrPLCopy := SysUtils.StrPLCopy;
  dbfTrimLeft := SysUtils.TrimLeft;
  dbfTrimRight := SysUtils.TrimRight;
end;
{$endif}

{$ENDIF}

initialization
  Init;
end.

