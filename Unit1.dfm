object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 410
  ClientWidth = 1112
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 88
    Top = 8
    Width = 81
    Height = 33
    Caption = 'Vai '
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel
    Left = 608
    Top = 24
    Width = 42
    Height = 16
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 0
    Top = 80
    Width = 1112
    Height = 330
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Para Memo'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 328
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Open Txt'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 424
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Text File'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object fmc1: TFormatConverter
    Left = 16
    Top = 8
  end
end
