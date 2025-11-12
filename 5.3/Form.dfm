object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 5.3'
  ClientHeight = 129
  ClientWidth = 267
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
    Left = 128
    Top = 30
    Width = 12
    Height = 19
    Caption = '>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn: TButton
    Left = 96
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 0
    OnClick = btnClick
  end
  object edtA: TEdit
    Left = 40
    Top = 32
    Width = 65
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object edtB: TEdit
    Left = 160
    Top = 32
    Width = 65
    Height = 21
    TabOrder = 2
    Text = '0'
  end
end
