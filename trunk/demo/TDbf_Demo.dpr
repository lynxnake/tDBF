program tdbf_demo;

uses
  Forms,
  EditTopics in 'EditTopics.pas' {EditTopicsForm},
  Filter in 'Filter.pas' {FilterForm},
  Index in 'Index.pas' {IndexForm},
  Main in 'Main.pas' {MainForm},
  Schema in 'schema.pas' {Schema1Form},
  Schema2 in 'schema2.pas' {Schema2Form},
  Search in 'search.pas' {SearchForm},
  Simple in 'simple.pas' {SimpleForm},
  Pack in 'Pack.pas' {PackTableForm},
  CopyTable in 'CopyTable.pas' {CopyTableForm},
  CreateTable in 'CreateTable.pas' {CreateTableForm},
  multipleuse in 'multipleuse.pas' {MultipleUseForm},
  Compatibility in 'Compatibility.pas' {CompatibilityForm},
  Calc in 'Calc.pas' {CalcForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TEditTopicsForm, EditTopicsForm);
  Application.CreateForm(TFilterForm, FilterForm);
  Application.CreateForm(TIndexForm, IndexForm);
  Application.CreateForm(TSchema1Form, Schema1Form);
  Application.CreateForm(TSchema2Form, Schema2Form);
  Application.CreateForm(TSearchForm, SearchForm);
  Application.CreateForm(TSimpleForm, SimpleForm);
  Application.CreateForm(TPackTableForm, PackTableForm);
  Application.CreateForm(TCopyTableForm, CopyTableForm);
  Application.CreateForm(TCreateTableForm, CreateTableForm);
  Application.CreateForm(TMultipleUseForm, MultipleUseForm);
  Application.CreateForm(TCompatibilityForm, CompatibilityForm);
  Application.CreateForm(TCalcForm, CalcForm);
  Application.Run;
end.

