object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 4.3'
  ClientHeight = 184
  ClientWidth = 155
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtA: TEdit
    Left = 16
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = edtKeyPress
  end
  object edtB: TEdit
    Left = 16
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = edtKeyPress
  end
  object edtC: TEdit
    Left = 16
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = edtKeyPress
  end
  object btn: TButton
    Left = 40
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnClick
  end
end
