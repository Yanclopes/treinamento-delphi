object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 4.5'
  ClientHeight = 110
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl: TLabel
    Left = 16
    Top = 13
    Width = 43
    Height = 13
    Caption = 'Distancia'
  end
  object lblAngle: TLabel
    Left = 135
    Top = 13
    Width = 33
    Height = 13
    Caption = 'Angulo'
  end
  object edtDistance: TEdit
    Left = 16
    Top = 32
    Width = 97
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object edtAngle: TEdit
    Left = 135
    Top = 32
    Width = 98
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object btn: TButton
    Left = 93
    Top = 77
    Width = 75
    Height = 25
    Caption = 'btn'
    TabOrder = 2
    OnClick = btnClick
  end
end
