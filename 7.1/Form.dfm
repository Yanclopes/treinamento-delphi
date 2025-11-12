object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 7.1'
  ClientHeight = 178
  ClientWidth = 189
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblA: TLabel
    Left = 24
    Top = 24
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object lblB: TLabel
    Left = 25
    Top = 53
    Width = 6
    Height = 13
    Caption = 'B'
  end
  object lblC: TLabel
    Left = 24
    Top = 80
    Width = 7
    Height = 13
    Caption = 'C'
  end
  object edtA: TEdit
    Left = 48
    Top = 23
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtC: TEdit
    Left = 48
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtB: TEdit
    Left = 48
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn: TButton
    Left = 48
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnClick
  end
end
