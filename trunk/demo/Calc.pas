unit Calc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, ExtCtrls, DBCtrls, DBGrids;

type
  TCalcForm = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  CalcForm: TCalcForm;

implementation

uses Main;

{$R *.DFM}

end.


