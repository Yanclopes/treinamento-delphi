object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 2.2'
  ClientHeight = 299
  ClientWidth = 852
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
    Left = 392
    Top = 40
    Width = 51
    Height = 26
    Caption = 'Texto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 26
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt: TEdit
    Left = 320
    Top = 112
    Width = 201
    Height = 45
    TabOrder = 0
    Text = 'Texto'
  end
  object btn: TButton
    Left = 384
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Reescrever'
    TabOrder = 1
    OnClick = clickBtn
  end
end
