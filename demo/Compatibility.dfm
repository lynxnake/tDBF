object CompatibilityForm: TCompatibilityForm
  Left = 245
  Top = 135
  Width = 405
  Height = 392
  Caption = 'CompatibilityForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 256
    Width = 29
    Height = 13
    Caption = 'Memo'
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 104
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 136
    Width = 377
    Height = 113
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 8
    Width = 185
    Height = 89
    Caption = 'Table'
    Items.Strings = (
      'dBase III + '
      'dBase IV'
      'dBase for Windows'
      'Visual dBase')
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object DBMemo1: TDBMemo
    Left = 40
    Top = 256
    Width = 345
    Height = 97
    DataField = 'MEMO'
    DataSource = DataSource1
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Dbf1: TDbf
    FilePath = 'data\'
    IndexDefs = <>
    OpenMode = omAutoCreate
    TableLevel = 5
    Left = 264
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Dbf1
    Left = 296
    Top = 8
  end
end
