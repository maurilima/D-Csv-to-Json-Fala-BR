object FrmViewMain: TFrmViewMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '        CSV para JSON'
  ClientHeight = 659
  ClientWidth = 770
  Color = 5592405
  CustomTitleBar.CaptionAlignment = taCenter
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 384
    Top = 48
    Width = 165
    Height = 17
    Caption = 'Informe Arquivo de Destino '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblTotal: TLabel
    Left = 15
    Top = 194
    Width = 31
    Height = 17
    Margins.Left = 10
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 13
    Top = 53
    Width = 171
    Height = 17
    Caption = 'Selecione Arquivo de Origem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 146
    Width = 138
    Height = 41
    BevelOuter = bvNone
    Color = 8421440
    ParentBackground = False
    TabOrder = 3
    object cvsToJson: TSpeedButton
      Left = 0
      Top = 0
      Width = 138
      Height = 41
      Margins.Left = 5
      Margins.Right = 10
      Align = alClient
      Caption = 'CSV TO JSON'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = csvToJosnClick
      ExplicitTop = 3
      ExplicitWidth = 128
      ExplicitHeight = 35
    end
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 10
    Top = 242
    Width = 750
    Height = 307
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    BevelOuter = bvNone
    Color = 5592405
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 6349819
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    ExplicitTop = 232
    ExplicitWidth = 740
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 562
    Width = 750
    Height = 94
    Margins.Left = 10
    Margins.Right = 10
    Align = alBottom
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = DsDados
    FixedColor = 6447714
    GradientEndColor = 4539717
    GradientStartColor = clBtnShadow
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentColor = True
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object edtNomeCsv: TEdit
    Left = 8
    Top = 72
    Width = 332
    Height = 25
    BevelInner = bvNone
    BevelOuter = bvNone
    Color = 6776679
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnEnter = OpenCsvClick
  end
  object Panel2: TPanel
    Left = 346
    Top = 73
    Width = 29
    Height = 22
    BevelOuter = bvNone
    Color = 14803425
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 4
    object OpenCsv: TSpeedButton
      Left = 0
      Top = 0
      Width = 29
      Height = 22
      Margins.Right = 6
      Align = alClient
      Caption = '...'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = OpenCsvClick
      ExplicitLeft = 32
      ExplicitTop = 11
      ExplicitWidth = 161
    end
  end
  object edtDestionoJson: TEdit
    Left = 385
    Top = 71
    Width = 332
    Height = 25
    BevelInner = bvNone
    BevelOuter = bvNone
    Color = 6776679
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
  end
  object Panel3: TPanel
    Left = 723
    Top = 73
    Width = 29
    Height = 22
    BevelOuter = bvNone
    Color = 14803425
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 6
    object SelectFileJson: TSpeedButton
      Left = 0
      Top = 0
      Width = 29
      Height = 22
      Margins.Right = 6
      Align = alClient
      Caption = '...'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SelectFileJsonClick
      ExplicitLeft = -1
      ExplicitTop = 3
      ExplicitWidth = 20
      ExplicitHeight = 16
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 151
    Top = 146
    Width = 138
    Height = 41
    Margins.Right = 10
    BevelOuter = bvNone
    Color = 8421440
    ParentBackground = False
    TabOrder = 7
    object SaveToFileJson: TSpeedButton
      Left = 0
      Top = 0
      Width = 138
      Height = 41
      Margins.Left = 5
      Margins.Right = 10
      Align = alClient
      Caption = 'Save to JSON'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SaveToFileJsonClick
      ExplicitLeft = 13
      ExplicitTop = 3
      ExplicitWidth = 123
      ExplicitHeight = 35
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 4802889
    ParentBackground = False
    TabOrder = 8
    ExplicitWidth = 760
    object Label3: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 142
      Height = 38
      Margins.Left = 10
      Align = alLeft
      Alignment = taCenter
      Caption = 'COGER-RR  Dados Aberto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 430
      Top = 3
      Width = 330
      Height = 38
      Margins.Right = 10
      Align = alRight
      Alignment = taCenter
      Caption = 'Converter CSV do Fala-BR Dados-Abertos em JSON Gravar em BD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 491
      ExplicitHeight = 13
    end
  end
  object Panel6: TPanel
    Left = 294
    Top = 146
    Width = 138
    Height = 41
    BevelOuter = bvNone
    Color = 8421440
    ParentBackground = False
    TabOrder = 9
    object JsonToDataSet: TSpeedButton
      Left = 0
      Top = 0
      Width = 138
      Height = 41
      Margins.Right = 10
      Align = alClient
      Caption = 'JSON to DataSet'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = jsonToDataSetClick
      ExplicitLeft = 6
      ExplicitTop = 3
      ExplicitWidth = 125
      ExplicitHeight = 35
    end
  end
  object Panel7: TPanel
    AlignWithMargins = True
    Left = 437
    Top = 146
    Width = 138
    Height = 41
    BevelOuter = bvNone
    Color = 8421440
    ParentBackground = False
    TabOrder = 10
    object spbUpdateDB: TSpeedButton
      Left = 0
      Top = 0
      Width = 138
      Height = 41
      Margins.Right = 10
      Align = alClient
      Caption = 'DataSet to BD'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = spbUpdateDBClick
      ExplicitTop = 3
      ExplicitWidth = 125
      ExplicitHeight = 35
    end
  end
  object DsDados: TDataSource
    DataSet = Dm.FmPedidos
    Left = 656
    Top = 104
  end
  object OpenFileCsv: TOpenTextFileDialog
    Ctl3D = False
    DefaultExt = '*.csv'
    Filter = 'Arquivo CSV|*.csv'
    Title = 'Abri CSV'
    Left = 616
    Top = 120
  end
  object FileToSave: TSaveTextFileDialog
    Left = 656
    Top = 152
  end
end
