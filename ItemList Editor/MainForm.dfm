object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '[AIKA] ItemList Editor - TheMu'
  ClientHeight = 389
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Items: TStringGrid
    Left = 0
    Top = 24
    Width = 417
    Height = 369
    ColCount = 2
    DefaultColWidth = 50
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnSelectCell = ItemsSelectCell
  end
  object btnSearchItens: TButton
    Left = 319
    Top = 0
    Width = 100
    Height = 25
    Caption = 'Search'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    OnClick = btnSearchItensClick
  end
  object cbSearchItens: TComboBox
    Left = 0
    Top = 2
    Width = 313
    Height = 21
    AutoCompleteDelay = 100
    DoubleBuffered = False
    ParentDoubleBuffered = False
    TabOrder = 2
    TextHint = 'Search Here'
    OnKeyPress = cbSearchItensKeyPress
  end
  object Pages: TPageControl
    Left = 423
    Top = 8
    Width = 322
    Height = 385
    ActivePage = MainTab
    TabOrder = 3
    object MainTab: TTabSheet
      Caption = 'Names'
      object edtItemName: TEdit
        Left = 3
        Top = 24
        Width = 289
        Height = 21
        TabOrder = 0
        TextHint = 'Item Name'
      end
      object edtItemNameEN: TEdit
        Left = 3
        Top = 51
        Width = 289
        Height = 21
        TabOrder = 1
        TextHint = 'Item Name EN'
      end
      object edtDescription: TEdit
        Left = 3
        Top = 78
        Width = 289
        Height = 83
        TabOrder = 2
        TextHint = 'Item Name EN'
      end
    end
    object TabUsesCondition: TTabSheet
      Caption = 'Uses Condition'
      ImageIndex = 1
      object Label1: TLabel
        Left = 3
        Top = 42
        Width = 53
        Height = 13
        Caption = 'Item Type:'
      end
      object Label2: TLabel
        Left = 3
        Top = 69
        Width = 54
        Height = 13
        Caption = 'Use Effect:'
      end
      object Label3: TLabel
        Left = 3
        Top = 96
        Width = 52
        Height = 13
        Caption = 'Delay Use:'
      end
      object Label4: TLabel
        Left = 3
        Top = 123
        Width = 59
        Height = 13
        Caption = 'Price Honor:'
      end
      object Label5: TLabel
        Left = 3
        Top = 150
        Width = 58
        Height = 13
        Caption = 'Price Medal:'
      end
      object Label6: TLabel
        Left = 3
        Top = 177
        Width = 51
        Height = 13
        Caption = 'Price Gold:'
      end
      object Label7: TLabel
        Left = 3
        Top = 204
        Width = 46
        Height = 13
        Caption = 'Sell Price:'
      end
      object Label8: TLabel
        Left = 155
        Top = 42
        Width = 29
        Height = 13
        Caption = 'Class:'
      end
      object Label9: TLabel
        Left = 155
        Top = 69
        Width = 43
        Height = 13
        Caption = 'Mesh ID:'
      end
      object Label10: TLabel
        Left = 157
        Top = 96
        Width = 48
        Height = 13
        Caption = 'Bonus Eq:'
      end
      object Label11: TLabel
        Left = 157
        Top = 123
        Width = 39
        Height = 13
        Caption = 'Icon ID:'
      end
      object Label12: TLabel
        Left = 157
        Top = 150
        Width = 42
        Height = 13
        Caption = 'Conjunt:'
      end
      object Label13: TLabel
        Left = 158
        Top = 177
        Width = 29
        Height = 13
        Caption = 'Level:'
      end
      object Label14: TLabel
        Left = 3
        Top = 231
        Width = 45
        Height = 13
        Caption = 'Duration:'
      end
      object cbCanAgroup: TCheckBox
        Left = 3
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Can Agroup'
        TabOrder = 0
      end
      object edtDelayUse: TEdit
        Left = 62
        Top = 93
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 1
      end
      object edtItemType: TEdit
        Left = 62
        Top = 39
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 2
      end
      object edtPriceGold: TEdit
        Left = 62
        Top = 174
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 3
      end
      object edtPriceHonor: TEdit
        Left = 62
        Top = 120
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 4
      end
      object edtPriceMedal: TEdit
        Left = 62
        Top = 147
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 5
      end
      object edtSellPrice: TEdit
        Left = 63
        Top = 201
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 6
      end
      object edtUseEffect: TEdit
        Left = 62
        Top = 66
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 7
      end
      object edtClass: TEdit
        Left = 206
        Top = 39
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 8
      end
      object edtMeshID: TEdit
        Left = 206
        Top = 66
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 9
      end
      object edtBonusEquip: TEdit
        Left = 206
        Top = 93
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 10
      end
      object edtIconID: TEdit
        Left = 206
        Top = 120
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 11
      end
      object edtConjunt: TEdit
        Left = 206
        Top = 147
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 12
      end
      object edtLevel: TEdit
        Left = 206
        Top = 174
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 13
      end
      object cbExpires: TCheckBox
        Left = 155
        Top = 201
        Width = 97
        Height = 17
        Caption = 'Expires'
        TabOrder = 14
      end
      object edtDuration: TEdit
        Left = 63
        Top = 228
        Width = 56
        Height = 21
        NumbersOnly = True
        TabOrder = 15
      end
      object cbCanSealed: TCheckBox
        Left = 155
        Top = 224
        Width = 97
        Height = 17
        Caption = 'Can Sealed'
        TabOrder = 16
      end
    end
    object ItemStatusTab: TTabSheet
      Caption = 'Item Status'
      ImageIndex = 2
      object Label15: TLabel
        Left = 3
        Top = 27
        Width = 29
        Height = 13
        Caption = 'PATK:'
      end
      object Label16: TLabel
        Left = 3
        Top = 54
        Width = 29
        Height = 13
        Caption = 'PDEF:'
      end
      object Label17: TLabel
        Left = 3
        Top = 81
        Width = 31
        Height = 13
        Caption = 'MATK:'
      end
      object Label18: TLabel
        Left = 3
        Top = 108
        Width = 31
        Height = 13
        Caption = 'MDEF:'
      end
      object Label19: TLabel
        Left = 147
        Top = 27
        Width = 17
        Height = 13
        Caption = 'HP:'
      end
      object Label20: TLabel
        Left = 147
        Top = 54
        Width = 18
        Height = 13
        Caption = 'MP:'
      end
      object Label21: TLabel
        Left = 147
        Top = 81
        Width = 59
        Height = 13
        Caption = 'Trade Type:'
      end
      object Label22: TLabel
        Left = 147
        Top = 108
        Width = 53
        Height = 13
        Caption = 'Type Item:'
      end
      object Label23: TLabel
        Left = 3
        Top = 135
        Width = 49
        Height = 13
        Caption = 'Durability:'
      end
      object Label30: TLabel
        Left = 3
        Top = 265
        Width = 28
        Height = 13
        Caption = 'Rank:'
      end
      object Label31: TLabel
        Left = 153
        Top = 265
        Width = 52
        Height = 13
        Caption = 'Max Level:'
      end
      object Label32: TLabel
        Left = 3
        Top = 292
        Width = 54
        Height = 13
        Caption = 'Type Price:'
      end
      object Label33: TLabel
        Left = 152
        Top = 293
        Width = 56
        Height = 13
        Caption = 'Price Value:'
      end
      object edtPAtk: TEdit
        Left = 57
        Top = 24
        Width = 56
        Height = 21
        TabOrder = 0
      end
      object edtMAtk: TEdit
        Left = 57
        Top = 78
        Width = 56
        Height = 21
        TabOrder = 1
      end
      object edtMDef: TEdit
        Left = 57
        Top = 105
        Width = 56
        Height = 21
        TabOrder = 2
      end
      object edtHP: TEdit
        Left = 212
        Top = 24
        Width = 56
        Height = 21
        TabOrder = 3
      end
      object edtMP: TEdit
        Left = 212
        Top = 51
        Width = 56
        Height = 21
        TabOrder = 4
      end
      object edtTradeType: TEdit
        Left = 212
        Top = 78
        Width = 56
        Height = 21
        TabOrder = 5
      end
      object edtTypeItem: TEdit
        Left = 212
        Top = 105
        Width = 56
        Height = 21
        TabOrder = 6
      end
      object edtDurability: TEdit
        Left = 57
        Top = 132
        Width = 56
        Height = 21
        TabOrder = 7
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 159
        Width = 94
        Height = 74
        Caption = 'EF1'
        TabOrder = 8
        object Label24: TLabel
          Left = 9
          Top = 17
          Width = 28
          Height = 13
          Caption = 'Index'
        end
        object Label25: TLabel
          Left = 9
          Top = 43
          Width = 26
          Height = 13
          Caption = 'Value'
        end
      end
      object GroupBox2: TGroupBox
        Left = 103
        Top = 159
        Width = 94
        Height = 74
        Caption = 'EF2'
        TabOrder = 9
        object Label26: TLabel
          Left = 8
          Top = 17
          Width = 28
          Height = 13
          Caption = 'Index'
        end
        object Label27: TLabel
          Left = 8
          Top = 43
          Width = 26
          Height = 13
          Caption = 'Value'
        end
      end
      object GroupBox3: TGroupBox
        Left = 203
        Top = 159
        Width = 94
        Height = 74
        Caption = 'EF3'
        TabOrder = 10
        object Label28: TLabel
          Left = 9
          Top = 17
          Width = 28
          Height = 13
          Caption = 'Index'
        end
        object Label29: TLabel
          Left = 9
          Top = 43
          Width = 26
          Height = 13
          Caption = 'Value'
        end
      end
      object edtEF1: TEdit
        Left = 49
        Top = 172
        Width = 40
        Height = 21
        TabOrder = 11
      end
      object edtEFV1: TEdit
        Left = 49
        Top = 199
        Width = 40
        Height = 21
        TabOrder = 12
      end
      object edtEF2: TEdit
        Left = 145
        Top = 172
        Width = 40
        Height = 21
        TabOrder = 13
      end
      object edtEFV2: TEdit
        Left = 145
        Top = 199
        Width = 40
        Height = 21
        TabOrder = 14
      end
      object edtEF3: TEdit
        Left = 249
        Top = 172
        Width = 40
        Height = 21
        TabOrder = 15
      end
      object edtEFV3: TEdit
        Left = 249
        Top = 199
        Width = 40
        Height = 21
        TabOrder = 16
      end
      object edtPDef: TEdit
        Left = 57
        Top = 51
        Width = 56
        Height = 21
        TabOrder = 17
      end
      object edtRank: TEdit
        Left = 57
        Top = 262
        Width = 56
        Height = 21
        TabOrder = 18
      end
      object edtMaxLevel: TEdit
        Left = 212
        Top = 262
        Width = 56
        Height = 21
        TabOrder = 19
      end
      object cbChangeApp: TCheckBox
        Left = 99
        Top = 239
        Width = 97
        Height = 17
        Caption = 'Change App'
        TabOrder = 20
      end
      object cbFortification: TCheckBox
        Left = 202
        Top = 239
        Width = 97
        Height = 17
        Caption = 'Fortification'
        TabOrder = 21
      end
      object cbRedution: TCheckBox
        Left = 3
        Top = 239
        Width = 97
        Height = 17
        Caption = 'Redution'
        TabOrder = 22
      end
      object edtTypePrice: TEdit
        Left = 57
        Top = 289
        Width = 56
        Height = 21
        TabOrder = 23
      end
      object edtPriceValue: TEdit
        Left = 212
        Top = 289
        Width = 56
        Height = 21
        TabOrder = 24
      end
    end
  end
  object btnSaveToStruct: TButton
    Left = 456
    Top = 352
    Width = 113
    Height = 29
    Caption = 'Save To Struct'
    TabOrder = 4
    OnClick = btnSaveToStructClick
  end
  object btnSaveToFile: TButton
    Left = 592
    Top = 352
    Width = 113
    Height = 29
    Caption = 'Save To File'
    TabOrder = 5
    OnClick = btnSaveToFileClick
  end
end
