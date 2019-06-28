object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Bin Files Parser by TheMu'
  ClientHeight = 161
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnOpenFile: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Open File'
    TabOrder = 0
    OnClick = btnOpenFileClick
  end
  object edtPath: TEdit
    Left = 105
    Top = 26
    Width = 240
    Height = 21
    TabOrder = 1
    TextHint = 'Path'
  end
  object btnEncrypt: TButton
    Left = 24
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Encrypt'
    TabOrder = 2
    OnClick = btnEncryptClick
  end
  object btnDecrypt: TButton
    Left = 24
    Top = 102
    Width = 75
    Height = 25
    Caption = 'Decrypt'
    TabOrder = 3
    OnClick = btnDecryptClick
  end
  object ListBox1: TListBox
    Left = 168
    Top = 53
    Width = 186
    Height = 100
    ItemHeight = 13
    Items.Strings = (
      'It will work on:'
      ''
      'ItemList.bin'
      'UI\PI.bin'
      'UI\SetItem.bin '
      'ActionText.bin'
      'SkillData0.bin'
      'UI\BW.bin'
      'UI\Dialog.bin'
      'UI\Easing.bin'
      'UI\MakeItems.bin'
      'UI\Quest.bin'
      'UI\Recipe.bin'
      'UI\RecipeRate.bin'
      'UI\Reinforce.bin'
      'UI\Reinforce2.bin'
      'UI\Reinforce3.bin'
      'UI\ReinforceA01.bin'
      'UI\ReinforceW01.bin'
      'UI\Siege01.bin'
      'UI\Siege02.bin')
    TabOrder = 4
  end
  object OpenFiles: TOpenDialog
    Filter = '.bin Files|*.bin'
    InitialDir = 'C:\'
    Title = 'Bin Aika Files'
    Left = 128
    Top = 56
  end
end
