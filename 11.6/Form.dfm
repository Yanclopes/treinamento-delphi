object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 11.6'
  ClientHeight = 119
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbledt: TLabeledEdit
    Left = 16
    Top = 32
    Width = 121
    Height = 21
    EditLabel.Width = 7
    EditLabel.Height = 13
    EditLabel.Caption = 'N'
    TabOrder = 0
  end
  object btn: TButton
    Left = 16
    Top = 73
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btnClick
  end
  object mmo: TMemo
    Left = 143
    Top = 16
    Width = 137
    Height = 82
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
