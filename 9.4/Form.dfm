object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 9.4'
  ClientHeight = 233
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbledtA: TLabeledEdit
    Left = 88
    Top = 40
    Width = 121
    Height = 21
    EditLabel.Width = 7
    EditLabel.Height = 13
    EditLabel.Caption = 'A'
    TabOrder = 0
  end
  object lbledtB: TLabeledEdit
    Left = 88
    Top = 80
    Width = 121
    Height = 21
    EditLabel.Width = 6
    EditLabel.Height = 13
    EditLabel.Caption = 'B'
    TabOrder = 1
  end
  object lbledtC: TLabeledEdit
    Left = 88
    Top = 120
    Width = 121
    Height = 21
    EditLabel.Width = 7
    EditLabel.Height = 13
    EditLabel.Caption = 'C'
    TabOrder = 2
  end
  object btn: TButton
    Left = 112
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnClick
  end
end
