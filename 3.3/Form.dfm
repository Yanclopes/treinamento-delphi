object frm: Tfrm
  Left = 0
  Top = 0
  Caption = 'Atividade 3.3'
  ClientHeight = 123
  ClientWidth = 187
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edt: TEdit
    Left = 24
    Top = 40
    Width = 145
    Height = 21
    TabOrder = 0
    OnKeyPress = edtKeyPress
  end
  object cbx: TComboBox
    Left = 24
    Top = 8
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = 'Km/h para m/s'
    Items.Strings = (
      'Km/h para m/s'
      'M/s para km/h')
  end
  object btn: TButton
    Left = 24
    Top = 80
    Width = 145
    Height = 25
    Caption = 'Converter'
    TabOrder = 2
    OnClick = click
  end
end
