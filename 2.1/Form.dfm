object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 2.1'
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
    Left = 376
    Top = 106
    Width = 46
    Height = 26
    Alignment = taCenter
    Caption = 'Ativo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 26
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnDesativar: TButton
    Left = 624
    Top = 240
    Width = 75
    Height = 25
    Caption = 'desativar'
    TabOrder = 0
    OnClick = clickBtnDesativar
  end
  object btnAtivar: TButton
    Left = 133
    Top = 240
    Width = 75
    Height = 25
    Caption = 'ativar'
    Enabled = False
    TabOrder = 1
    OnClick = clickBtnAtivar
  end
end
