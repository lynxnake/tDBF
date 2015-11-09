object IndexForm: TIndexForm
  Left = 212
  Top = 131
  Width = 473
  Height = 454
  Caption = 'Index Demo'
  Color = clBtnFace
  Constraints.MinHeight = 295
  Constraints.MinWidth = 445
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 391
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 452
    Height = 212
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = MainForm.DatasourceDisco
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 8
    Top = 8
    Width = 115
    Height = 25
    Caption = 'Sort by author (MDX)'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 123
    Top = 8
    Width = 115
    Height = 25
    Caption = 'Sort by title (NDX)'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 353
    Top = 8
    Width = 75
    Height = 25
    Caption = 'No Sort'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 238
    Top = 8
    Width = 115
    Height = 25
    Caption = 'Sort by price (NDX)'
    TabOrder = 5
    OnClick = Button5Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 257
    Width = 452
    Height = 73
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Index Bracketing && Searching'
    TabOrder = 6
    object Label1: TLabel
      Left = 18
      Top = 21
      Width = 20
      Height = 13
      Caption = 'Low'
    end
    object Label2: TLabel
      Left = 173
      Top = 20
      Width = 22
      Height = 13
      Caption = 'High'
    end
    object SearchLabel: TLabel
      Left = 18
      Top = 48
      Width = 166
      Height = 13
      Caption = 'Search using index (try uppercase):'
    end
    object SearchResultLabel: TLabel
      Left = 315
      Top = 45
      Width = 96
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Search Result'
      Color = clRed
      ParentColor = False
    end
    object SearchEdit: TEdit
      Left = 190
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = SearchEditChange
    end
    object ApplyButton: TButton
      Left = 320
      Top = 16
      Width = 91
      Height = 25
      Caption = 'Apply'
      TabOrder = 2
      OnClick = ApplyButtonClick
    end
    object Edit1: TEdit
      Left = 50
      Top = 18
      Width = 106
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 205
      Top = 17
      Width = 106
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 10
    Top = 331
    Width = 449
    Height = 51
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Index Create'
    TabOrder = 7
    object ExpressionCheckBox: TCheckBox
      Left = 25
      Top = 20
      Width = 211
      Height = 17
      Caption = 'Use expression to sort on price and title'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object RebuildButton: TButton
      Left = 270
      Top = 15
      Width = 101
      Height = 25
      Caption = 'Rebuild indexes'
      TabOrder = 0
      OnClick = RebuildButtonClick
    end
  end
end
