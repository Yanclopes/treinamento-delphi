object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 9.6'
  ClientHeight = 246
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblAx: TLabel
    Left = 8
    Top = 11
    Width = 17
    Height = 13
    Caption = 'Ax:'
  end
  object lblAy: TLabel
    Left = 8
    Top = 43
    Width = 17
    Height = 13
    Caption = 'Ay:'
  end
  object lblBx: TLabel
    Left = 8
    Top = 75
    Width = 16
    Height = 13
    Caption = 'Bx:'
  end
  object lblBy: TLabel
    Left = 8
    Top = 107
    Width = 16
    Height = 13
    Caption = 'By:'
  end
  object lblCx: TLabel
    Left = 8
    Top = 139
    Width = 17
    Height = 13
    Caption = 'Cx:'
  end
  object lblCy: TLabel
    Left = 8
    Top = 171
    Width = 17
    Height = 13
    Caption = 'Cy:'
  end
  object edtAx: TEdit
    Left = 32
    Top = 8
    Width = 50
    Height = 21
    TabOrder = 0
  end
  object edtAy: TEdit
    Left = 32
    Top = 40
    Width = 50
    Height = 21
    TabOrder = 1
  end
  object edtBx: TEdit
    Left = 32
    Top = 72
    Width = 50
    Height = 21
    TabOrder = 2
  end
  object edtBy: TEdit
    Left = 32
    Top = 104
    Width = 50
    Height = 21
    TabOrder = 3
  end
  object edtCx: TEdit
    Left = 32
    Top = 136
    Width = 50
    Height = 21
    TabOrder = 4
  end
  object edtCy: TEdit
    Left = 32
    Top = 168
    Width = 50
    Height = 21
    TabOrder = 5
  end
  object btnCalcular: TButton
    Left = 8
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = btnCalcularClick
  end
  object memoResultado: TMemo
    Left = 96
    Top = 8
    Width = 212
    Height = 229
    Lines.Strings = (
      'memoResultado')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 7
  end
end
