object Frm: TFrm
  Left = 0
  Top = 0
  Caption = 'Gerenciador de atividades'
  ClientHeight = 151
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCapitulo: TLabel
    Left = 48
    Top = 32
    Width = 39
    Height = 13
    Caption = 'Cap'#237'tulo'
  end
  object lblNumero: TLabel
    Left = 184
    Top = 32
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object lblLink: TLabel
    Left = 94
    Top = 117
    Width = 85
    Height = 26
    Caption = 'Documenta'#231#227'o'#13#10
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentColor = False
    ParentFont = False
    OnClick = lblLinkClick
  end
  object edtCapitulo: TEdit
    Left = 16
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNumero: TEdit
    Left = 143
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn: TButton
    Left = 94
    Top = 86
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Abrir'
    TabOrder = 2
    OnClick = btnClick
  end
end
