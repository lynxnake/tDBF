unit CreateTable;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, Dbf, StdCtrls, Dbf_Fields, Dbf_Common;

type
  TCreateTableForm = class(TForm)
    CreateMethod1: TButton;
    Dbf1: TDbf;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Populate: TButton;
    CreateMethod2: TButton;
    procedure CreateMethod1Click(Sender: TObject);
    procedure PopulateClick(Sender: TObject);
    procedure CreateMethod2Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  CreateTableForm: TCreateTableForm;

implementation

{$R *.DFM}

procedure TCreateTableForm.CreateMethod1Click(Sender: TObject);
begin
  With Dbf1 do begin
    Close;
    TableName := 'table1.dbf';
// Method 1
    with FieldDefs do begin
      Clear;
      Add('Field1',ftString,10,False);
      Add('Field2',ftInteger,0,False);
      Add('Address',ftMemo,0,False);
      Add('Date',ftDate,0,False);
    end;
    CreateTable;
    Open;
  end;
end;

procedure TCreateTableForm.PopulateClick(Sender: TObject);
var
  i:integer;
  f1,f2:TField;
begin
  f1:=Dbf1.FieldByName('Field1');
  f2:=Dbf1.FieldByName('Field2');
  for i:=0 to 100 do begin
    Dbf1.Append;
    f1.AsString:=
      chr((i * 1 + 4)  mod 26 + 65)+
      chr((i * 2 + 5)  mod 26 + 65)+
      chr((i * 3 + 6)  mod 26 + 65);
    f2.AsInteger:=i;
    Dbf1.Post;
  end;
end;


procedure TCreateTableForm.CreateMethod2Click(Sender: TObject);
var
  TempFieldDefs: TDbfFieldDefs;
begin
  with Dbf1 do begin
    Close;
    TableLevel := 7; // required for AutoInc field
    TableName := 'table1.dbf';
// Method 2
    TempFieldDefs := TDbfFieldDefs.Create(Self);
    try
      with TempFieldDefs.AddFieldDef do begin
        FieldName := 'Field1';
        NativeFieldType := 'C';
        Size := 10;
      end;
      with TempFieldDefs.AddFieldDef do begin
        FieldName := 'Field2';
        NativeFieldType := 'I';
        Size := 10;
        Precision := 3;
      end;
      with TempFieldDefs.AddFieldDef do begin
        FieldName := 'fAutoInc';
        NativeFieldType := '+';
      end;
      with TempFieldDefs.AddFieldDef do begin
        FieldName := 'f_I';
        NativeFieldType := 'I';
      end;
      with TempFieldDefs.AddFieldDef do begin
        FieldName := 'f_O';
        NativeFieldType := 'O';
      end;
      with TempFieldDefs.AddFieldDef do begin
        FieldName := 'f_@';
        NativeFieldType := 'I'; //'@';
      end;
      Dbf1.CreateTableEx(TempFieldDefs);
    finally
      FreeAndNil(TempFieldDefs);
    end;
    Open;
  end;
end;

end.

