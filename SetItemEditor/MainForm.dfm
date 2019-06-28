object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Set Item Editor [AIKA]'
  ClientHeight = 391
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 384
    Top = 5
    Width = 31
    Height = 13
    Caption = 'Equips'
  end
  object Label2: TLabel
    Left = 480
    Top = 5
    Width = 50
    Height = 13
    Caption = 'Effect Slot'
  end
  object Label3: TLabel
    Left = 616
    Top = 5
    Width = 29
    Height = 13
    Caption = 'Effect'
  end
  object Label4: TLabel
    Left = 723
    Top = 5
    Width = 58
    Height = 13
    Caption = 'Effect Value'
  end
  object lbItems: TListBox
    Left = 0
    Top = 0
    Width = 361
    Height = 367
    DoubleBuffered = True
    ItemHeight = 13
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = lbItemsClick
  end
  object edtEquip1: TEdit
    Left = 376
    Top = 24
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object edtEquip2: TEdit
    Left = 376
    Top = 51
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object edtEquip3: TEdit
    Left = 376
    Top = 78
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 3
  end
  object edtEquip4: TEdit
    Left = 376
    Top = 105
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 4
  end
  object edtEquip5: TEdit
    Left = 376
    Top = 132
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 5
  end
  object edtEquip6: TEdit
    Left = 376
    Top = 159
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 6
  end
  object edtEquip7: TEdit
    Left = 376
    Top = 186
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 7
  end
  object edtEquip8: TEdit
    Left = 376
    Top = 213
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 8
  end
  object edtEquip9: TEdit
    Left = 376
    Top = 240
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 9
  end
  object edtEquip10: TEdit
    Left = 376
    Top = 267
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 10
  end
  object edtEquip11: TEdit
    Left = 376
    Top = 294
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 11
  end
  object edtEquip12: TEdit
    Left = 376
    Top = 321
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 12
  end
  object edtEffSlot1: TEdit
    Left = 473
    Top = 24
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 13
  end
  object edtEffSlot2: TEdit
    Left = 473
    Top = 51
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 14
  end
  object edtEffSlot3: TEdit
    Left = 473
    Top = 78
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 15
  end
  object edtEffSlot4: TEdit
    Left = 473
    Top = 105
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 16
  end
  object edtEffSlot5: TEdit
    Left = 473
    Top = 132
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 17
  end
  object edtEffSlot6: TEdit
    Left = 473
    Top = 159
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 18
  end
  object edtEffSlot7: TEdit
    Left = 473
    Top = 186
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 19
  end
  object edtEffSlot8: TEdit
    Left = 473
    Top = 213
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 20
  end
  object edtEffSlot9: TEdit
    Left = 473
    Top = 240
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 21
  end
  object edtEffSlot10: TEdit
    Left = 473
    Top = 267
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 22
  end
  object edtEff1: TEdit
    Left = 568
    Top = 24
    Width = 33
    Height = 21
    NumbersOnly = True
    TabOrder = 23
  end
  object edtEff2: TEdit
    Left = 568
    Top = 51
    Width = 33
    Height = 21
    NumbersOnly = True
    TabOrder = 24
  end
  object edtEff3: TEdit
    Left = 568
    Top = 78
    Width = 33
    Height = 21
    NumbersOnly = True
    TabOrder = 25
  end
  object edtEff4: TEdit
    Left = 568
    Top = 105
    Width = 33
    Height = 21
    NumbersOnly = True
    TabOrder = 26
  end
  object edtEff5: TEdit
    Left = 568
    Top = 132
    Width = 33
    Height = 21
    NumbersOnly = True
    TabOrder = 27
  end
  object edtEff6: TEdit
    Left = 568
    Top = 159
    Width = 33
    Height = 21
    NumbersOnly = True
    TabOrder = 28
  end
  object edtEffv1: TEdit
    Left = 723
    Top = 24
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 29
  end
  object edtEffv2: TEdit
    Left = 723
    Top = 51
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 30
  end
  object edtEffv3: TEdit
    Left = 723
    Top = 78
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 31
  end
  object edtEffv4: TEdit
    Left = 723
    Top = 105
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 32
  end
  object edtEffv5: TEdit
    Left = 723
    Top = 132
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 33
  end
  object edtEffv6: TEdit
    Left = 723
    Top = 159
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 34
  end
  object edtEffName1: TEdit
    Left = 607
    Top = 24
    Width = 110
    Height = 21
    ReadOnly = True
    TabOrder = 35
  end
  object edtEffName2: TEdit
    Left = 607
    Top = 51
    Width = 110
    Height = 21
    ReadOnly = True
    TabOrder = 36
  end
  object edtEffName3: TEdit
    Left = 607
    Top = 78
    Width = 110
    Height = 21
    ReadOnly = True
    TabOrder = 37
  end
  object edtEffName4: TEdit
    Left = 607
    Top = 105
    Width = 110
    Height = 21
    ReadOnly = True
    TabOrder = 38
  end
  object edtEffName5: TEdit
    Left = 607
    Top = 132
    Width = 110
    Height = 21
    ReadOnly = True
    TabOrder = 39
  end
  object edtEffName6: TEdit
    Left = 607
    Top = 159
    Width = 110
    Height = 21
    ReadOnly = True
    TabOrder = 40
  end
  object Button1: TButton
    Left = 552
    Top = 342
    Width = 93
    Height = 25
    Caption = 'Save to Struct'
    TabOrder = 41
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 664
    Top = 342
    Width = 93
    Height = 25
    Caption = 'Save File'
    TabOrder = 42
    OnClick = Button2Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 368
    Width = 789
    Height = 23
    Panels = <
      item
        Width = 50
      end>
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 696
    Top = 224
  end
end
