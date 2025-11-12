object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 2.4'
  ClientHeight = 362
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
    Left = 408
    Top = 24
    Width = 28
    Height = 13
    Caption = 'Texto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object background: TGroupBox
    Left = 8
    Top = 76
    Width = 836
    Height = 65
    Caption = 'Background'
    TabOrder = 1
    object bgBtnOne: TButton
      Left = 40
      Top = 24
      Width = 75
      Height = 25
      Caption = '1'
      TabOrder = 0
      OnClick = click
    end
    object bgBtnTwo: TButton
      Left = 384
      Top = 24
      Width = 75
      Height = 25
      Caption = '2'
      TabOrder = 1
      OnClick = click
    end
    object bgBtnThree: TButton
      Left = 704
      Top = 24
      Width = 75
      Height = 25
      Caption = '3'
      TabOrder = 2
      OnClick = click
    end
  end
  object color: TGroupBox
    Left = 8
    Top = 289
    Width = 836
    Height = 65
    Caption = 'Cor'
    TabOrder = 2
    object clBtnOne: TButton
      Left = 40
      Top = 24
      Width = 75
      Height = 25
      Caption = '1'
      TabOrder = 0
      OnClick = click
    end
    object clBtnTwo: TButton
      Left = 384
      Top = 24
      Width = 75
      Height = 25
      Caption = '2'
      TabOrder = 1
      OnClick = click
    end
    object clBtnThree: TButton
      Left = 704
      Top = 24
      Width = 75
      Height = 25
      Caption = '3'
      TabOrder = 2
      OnClick = click
    end
  end
  object size: TGroupBox
    Left = 8
    Top = 218
    Width = 836
    Height = 65
    Caption = 'Tamanho'
    TabOrder = 3
    object szBtnOne: TButton
      Left = 40
      Top = 24
      Width = 75
      Height = 25
      Caption = '1'
      TabOrder = 1
      OnClick = click
    end
    object szBtnTwo: TButton
      Left = 384
      Top = 21
      Width = 75
      Height = 25
      Caption = '2'
      TabOrder = 2
      OnClick = click
    end
    object szBtnThree: TButton
      Left = 704
      Top = 24
      Width = 75
      Height = 25
      Caption = '3'
      TabOrder = 0
      OnClick = click
    end
  end
  object fontFamily: TGroupBox
    Left = 8
    Top = 147
    Width = 836
    Height = 65
    Caption = 'Fonte'
    TabOrder = 0
    object ffBtnOne: TButton
      Left = 40
      Top = 24
      Width = 75
      Height = 25
      Caption = '1'
      TabOrder = 0
      OnClick = click
    end
    object ffBtnTwo: TButton
      Left = 384
      Top = 24
      Width = 75
      Height = 25
      Caption = '2'
      TabOrder = 1
      OnClick = click
    end
    object ffBtnThree: TButton
      Left = 704
      Top = 24
      Width = 75
      Height = 25
      Caption = '3'
      TabOrder = 2
      OnClick = click
    end
  end
end
