object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 4.2'
  ClientHeight = 132
  ClientWidth = 199
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
    Left = 80
    Top = 24
    Width = 29
    Height = 13
    Caption = 'Altura'
  end
  object edt: TEdit
    Left = 40
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = edtKeyPress
  end
  object btn: TButton
    Left = 64
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btnClick
  end
end
