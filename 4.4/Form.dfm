object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 4.4'
  ClientHeight = 204
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblX: TLabel
    Left = 72
    Top = 33
    Width = 9
    Height = 19
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblY: TLabel
    Left = 128
    Top = 33
    Width = 10
    Height = 19
    Caption = 'Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblA: TLabel
    Left = 32
    Top = 56
    Width = 11
    Height = 19
    Caption = 'A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblB: TLabel
    Left = 32
    Top = 81
    Width = 9
    Height = 19
    Caption = 'B'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblC: TLabel
    Left = 31
    Top = 106
    Width = 10
    Height = 19
    Caption = 'C'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object pb: TPaintBox
    Left = 200
    Top = 0
    Width = 200
    Height = 200
  end
  object edtXA: TEdit
    Left = 56
    Top = 58
    Width = 48
    Height = 21
    TabOrder = 0
    Text = '0'
    OnKeyPress = edtKeyPress
  end
  object edtYA: TEdit
    Left = 110
    Top = 58
    Width = 48
    Height = 21
    TabOrder = 1
    Text = '0'
    OnKeyPress = edtKeyPress
  end
  object edtXB: TEdit
    Left = 56
    Top = 83
    Width = 48
    Height = 21
    TabOrder = 2
    Text = '0'
    OnKeyPress = edtKeyPress
  end
  object edtYB: TEdit
    Left = 110
    Top = 83
    Width = 48
    Height = 21
    TabOrder = 3
    Text = '0'
    OnKeyPress = edtKeyPress
  end
  object edtXC: TEdit
    Left = 56
    Top = 108
    Width = 48
    Height = 21
    TabOrder = 4
    Text = '0'
    OnKeyPress = edtKeyPress
  end
  object edtYC: TEdit
    Left = 110
    Top = 108
    Width = 48
    Height = 21
    TabOrder = 5
    Text = '0'
    OnKeyPress = edtKeyPress
  end
  object btn: TButton
    Left = 72
    Top = 152
    Width = 66
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = btnClick
  end
end
