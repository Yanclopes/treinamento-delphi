object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 8.2'
  ClientHeight = 227
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblAreaA: TLabel
    Left = 16
    Top = 133
    Width = 30
    Height = 13
    Caption = 'Area: '
  end
  object lblPerimetroA: TLabel
    Left = 16
    Top = 160
    Width = 53
    Height = 13
    Caption = 'Perimetro: '
  end
  object lblAreaB: TLabel
    Left = 192
    Top = 133
    Width = 30
    Height = 13
    Caption = 'Area: '
  end
  object lblPerimetroB: TLabel
    Left = 192
    Top = 160
    Width = 53
    Height = 13
    Caption = 'Perimetro: '
  end
  object edtA: TEdit
    Left = 16
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtB: TEdit
    Left = 16
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtC: TEdit
    Left = 16
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnA: TButton
    Left = 40
    Top = 194
    Width = 75
    Height = 25
    Caption = 'Calcular A'
    TabOrder = 3
    OnClick = btnAClick
  end
  object edtX: TEdit
    Left = 192
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtY: TEdit
    Left = 192
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edtZ: TEdit
    Left = 192
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object btnB: TButton
    Left = 216
    Top = 194
    Width = 75
    Height = 25
    Caption = 'Calcular B'
    TabOrder = 7
    OnClick = btnBClick
  end
end
