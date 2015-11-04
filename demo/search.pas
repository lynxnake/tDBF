unit Search;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, ComCtrls,db;

type
  TSearchForm = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    title_edit: TEdit;
    author_edit: TEdit;
    ignore_case_checkbox: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure title_editChange(Sender: TObject);
    procedure author_editChange(Sender: TObject);
    procedure title_editEnter(Sender: TObject);
    procedure author_editEnter(Sender: TObject);
    procedure ignore_case_checkboxClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure SearchAuthor;
    procedure SearchTitle;
  end;

var
  SearchForm: TSearchForm;

implementation

uses Main;

{$R *.DFM}

procedure TSearchForm.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TSearchForm.SearchTitle;
var
  Options: TLocateOptions;
begin
  Options := [loPartialKey];
  if ignore_case_checkbox.Checked then
    Include(Options, loCaseInsensitive);
  MainForm.DbfDisco.Locate('TITLE', title_Edit.text, Options);
end;

procedure TSearchForm.title_editChange(Sender: TObject);
begin
  SearchTitle;
end;

procedure TSearchForm.SearchAuthor;
var
  Options: TLocateOptions;
begin
  Options := [loPartialKey];
  if ignore_case_checkbox.Checked then
    Include(Options, loCaseInsensitive);
  MainForm.DbfDisco.Locate('AUTHOR', author_Edit.text, Options);
end;

procedure TSearchForm.author_editChange(Sender: TObject);
begin
  SearchAuthor;
end;

procedure TSearchForm.title_editEnter(Sender: TObject);
begin
  author_Edit.text:='';
end;

procedure TSearchForm.author_editEnter(Sender: TObject);
begin
  title_Edit.text:='';
end;

procedure TSearchForm.ignore_case_checkboxClick(Sender: TObject);
begin
  if author_Edit.text<>'' then
    SearchAuthor
  else if title_Edit.text<>'' then
    SearchTitle
end;

end.

