object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 5.2'
  ClientHeight = 298
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = create
  PixelsPerInch = 96
  TextHeight = 13
  object lblRed: TLabel
    Left = 176
    Top = 96
    Width = 44
    Height = 13
    Caption = 'Vermelho'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblYellow: TLabel
    Left = 416
    Top = 96
    Width = 39
    Height = 13
    Caption = 'Amarelo'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblGreen: TLabel
    Left = 664
    Top = 96
    Width = 28
    Height = 13
    Caption = 'Verde'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnRed: TButton
    Left = 160
    Top = 153
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = click
  end
  object btnYellow: TButton
    Left = 400
    Top = 153
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = click
  end
  object btnGreen: TButton
    Left = 648
    Top = 153
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = click
  end
end
