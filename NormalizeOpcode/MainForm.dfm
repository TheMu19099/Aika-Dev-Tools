object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Opcode Normalize'
  ClientHeight = 125
  ClientWidth = 252
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 64
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '$'
  end
  object Button1: TButton
    Left = 88
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Change'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 64
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
