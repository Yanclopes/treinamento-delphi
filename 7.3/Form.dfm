object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 7.3'
  ClientHeight = 162
  ClientWidth = 266
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
    Left = 72
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtB: TEdit
    Left = 72
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn: TButton
    Left = 96
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 2
    OnClick = btnClick
  end
end
