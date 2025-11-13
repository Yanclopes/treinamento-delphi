object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 12.2'
  ClientHeight = 128
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbled: TLabeledEdit
    Left = 80
    Top = 32
    Width = 121
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Texto'
    TabOrder = 0
  end
  object btn: TButton
    Left = 104
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Substituir'
    TabOrder = 1
    OnClick = btnClick
  end
end
