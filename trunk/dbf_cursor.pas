unit dbf_cursor;

interface

{$I Dbf_Common.inc}

uses
  SysUtils,
  Classes,
  Dbf_PgFile,
  Dbf_Common;

type

//====================================================================
  TVirtualCursor = class(TObject)
  private
    FFile: TPagedFile;

  protected
    function GetPhysicalRecno: Integer; virtual; abstract;
    function GetSequentialRecno: Integer; virtual; abstract;
    function GetSequentialRecordCount: Integer; virtual; abstract;
    procedure SetPhysicalRecno(Recno: Integer); virtual; abstract;
    procedure SetSequentialRecno(Recno: Integer); virtual; abstract;

  public
    constructor Create(pFile: TPagedFile);
    destructor Destroy; override;

    function  RecordSize: Integer;

    function  Next: Boolean; virtual; abstract;
    function  Prev: Boolean; virtual; abstract;
    procedure First; virtual; abstract;
    procedure Last; virtual; abstract;

    function  GetBookMark: rBookmarkData; virtual; abstract;
    procedure GotoBookmark(Bookmark: rBookmarkData); virtual; abstract;

    property PagedFile: TPagedFile read FFile;
    property PhysicalRecNo: Integer read GetPhysicalRecNo write SetPhysicalRecNo;
    property SequentialRecNo: Integer read GetSequentialRecNo write SetSequentialRecNo;
    property SequentialRecordCount: Integer read GetSequentialRecordCount;
  end;

implementation

constructor TVirtualCursor.Create(pFile: TPagedFile);
begin
  FFile := pFile;
end;

destructor TVirtualCursor.Destroy; {override;}
begin
end;

function TVirtualCursor.RecordSize : Integer;
begin
  if FFile = nil then
    Result := 0
  else
    Result := FFile.RecordSize;
end;

end.

