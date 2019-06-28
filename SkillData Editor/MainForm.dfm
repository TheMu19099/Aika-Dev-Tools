object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '[AIKA] SkillData Editor'
  ClientHeight = 421
  ClientWidth = 789
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
  object cbSearchSkills: TComboBox
    Left = 8
    Top = 5
    Width = 298
    Height = 21
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnKeyPress = cbSearchSkillsKeyPress
  end
  object btnSearch: TButton
    Left = 312
    Top = 1
    Width = 57
    Height = 25
    Caption = 'Search'
    TabOrder = 1
    OnClick = btnSearchClick
  end
  object Page: TPageControl
    Left = 375
    Top = 1
    Width = 410
    Height = 412
    ActivePage = MainPage
    TabOrder = 2
    object MainPage: TTabSheet
      Caption = 'Main'
      object Label1: TLabel
        Left = 12
        Top = 163
        Width = 32
        Height = 13
        Caption = 'Index:'
      end
      object Label2: TLabel
        Left = 11
        Top = 190
        Width = 36
        Height = 13
        Caption = 'Min Lvl:'
      end
      object Label3: TLabel
        Left = 11
        Top = 217
        Width = 29
        Height = 13
        Caption = 'Level:'
      end
      object Label4: TLabel
        Left = 188
        Top = 163
        Width = 66
        Height = 13
        Caption = 'Classification:'
      end
      object Label25: TLabel
        Left = 156
        Top = 190
        Width = 86
        Height = 13
        Caption = 'Target Animation:'
      end
      object edtName: TEdit
        Left = 49
        Top = 40
        Width = 249
        Height = 21
        TabOrder = 0
        TextHint = 'Name PT-BR'
      end
      object edtNameEN: TEdit
        Left = 49
        Top = 67
        Width = 249
        Height = 21
        TabOrder = 1
        TextHint = 'Name English'
      end
      object edtDescription: TEdit
        Left = 49
        Top = 94
        Width = 249
        Height = 21
        TabOrder = 2
        TextHint = 'Description'
      end
      object edtIndex: TEdit
        Left = 49
        Top = 160
        Width = 48
        Height = 21
        TabOrder = 3
      end
      object edtMinLevel: TEdit
        Left = 49
        Top = 187
        Width = 48
        Height = 21
        TabOrder = 4
      end
      object edtLevel: TEdit
        Left = 49
        Top = 214
        Width = 48
        Height = 21
        TabOrder = 5
      end
      object edtClassification: TEdit
        Left = 260
        Top = 160
        Width = 48
        Height = 21
        TabOrder = 6
      end
      object edtTargetAnimation: TEdit
        Left = 260
        Top = 187
        Width = 48
        Height = 21
        TabOrder = 7
      end
      object btnSaveToStruct: TButton
        Left = 129
        Top = 343
        Width = 97
        Height = 25
        Caption = 'Save To Struct'
        TabOrder = 8
        OnClick = btnSaveToStructClick
      end
      object btnSaveFile: TButton
        Left = 248
        Top = 343
        Width = 97
        Height = 25
        Caption = 'Save File'
        TabOrder = 9
        OnClick = btnSaveFileClick
      end
    end
    object SkillAtributesPage: TTabSheet
      Caption = 'Atributes'
      ImageIndex = 1
      object Label5: TLabel
        Left = 12
        Top = 27
        Width = 53
        Height = 13
        Caption = 'Skill Points:'
      end
      object Label6: TLabel
        Left = 12
        Top = 54
        Width = 65
        Height = 13
        Caption = 'Gold to learn:'
      end
      object Label7: TLabel
        Left = 12
        Top = 81
        Width = 35
        Height = 13
        Caption = 'Classe:'
      end
      object Label8: TLabel
        Left = 19
        Top = 108
        Width = 18
        Height = 13
        Caption = 'MP:'
      end
      object Label9: TLabel
        Left = 8
        Top = 135
        Width = 71
        Height = 13
        Caption = 'Pre-Cooldown:'
      end
      object Label10: TLabel
        Left = 11
        Top = 162
        Width = 51
        Height = 13
        Caption = 'Cooldown:'
      end
      object Label11: TLabel
        Left = 1
        Top = 190
        Width = 78
        Height = 13
        Caption = 'Cooldown Type:'
      end
      object Label12: TLabel
        Left = 11
        Top = 216
        Width = 63
        Height = 13
        Caption = 'Target Type:'
      end
      object Label13: TLabel
        Left = 12
        Top = 243
        Width = 64
        Height = 13
        Caption = 'Unique Type:'
      end
      object Label14: TLabel
        Left = 11
        Top = 270
        Width = 64
        Height = 13
        Caption = 'Max Targets:'
      end
      object Label15: TLabel
        Left = 172
        Top = 27
        Width = 35
        Height = 13
        Caption = 'Range:'
      end
      object Label16: TLabel
        Left = 172
        Top = 54
        Width = 77
        Height = 13
        Caption = 'Damage Range:'
      end
      object Label17: TLabel
        Left = 172
        Top = 81
        Width = 68
        Height = 13
        Caption = 'Success Rate:'
      end
      object Label18: TLabel
        Left = 172
        Top = 108
        Width = 51
        Height = 13
        Caption = 'Agressive:'
      end
      object Label19: TLabel
        Left = 172
        Top = 135
        Width = 61
        Height = 13
        Caption = 'Buff/Debuff:'
      end
      object Label20: TLabel
        Left = 172
        Top = 162
        Width = 47
        Height = 13
        Caption = 'Attribute:'
      end
      object Label21: TLabel
        Left = 172
        Top = 190
        Width = 43
        Height = 13
        Caption = 'Damage:'
      end
      object Label22: TLabel
        Left = 172
        Top = 216
        Width = 71
        Height = 13
        Caption = 'Adicional DMG:'
      end
      object Label23: TLabel
        Left = 172
        Top = 243
        Width = 45
        Height = 13
        Caption = 'Duration:'
      end
      object Label24: TLabel
        Left = 172
        Top = 270
        Width = 48
        Height = 13
        Caption = 'CastTime:'
      end
      object edtSkillPoints: TEdit
        Left = 81
        Top = 24
        Width = 56
        Height = 21
        TabOrder = 0
      end
      object edtLearnCosts: TEdit
        Left = 81
        Top = 51
        Width = 56
        Height = 21
        TabOrder = 1
      end
      object edtClasse: TEdit
        Left = 81
        Top = 78
        Width = 56
        Height = 21
        TabOrder = 2
      end
      object edtMP: TEdit
        Left = 81
        Top = 105
        Width = 56
        Height = 21
        TabOrder = 3
      end
      object edtPreCooldown: TEdit
        Left = 81
        Top = 132
        Width = 56
        Height = 21
        TabOrder = 4
      end
      object edtCooldown: TEdit
        Left = 81
        Top = 159
        Width = 56
        Height = 21
        TabOrder = 5
      end
      object edtCooldownType: TEdit
        Left = 81
        Top = 186
        Width = 56
        Height = 21
        TabOrder = 6
      end
      object edtTargetType: TEdit
        Left = 81
        Top = 213
        Width = 56
        Height = 21
        TabOrder = 7
      end
      object edtUniqueType: TEdit
        Left = 81
        Top = 240
        Width = 56
        Height = 21
        TabOrder = 8
      end
      object edtMaxTargets: TEdit
        Left = 81
        Top = 267
        Width = 56
        Height = 21
        TabOrder = 9
      end
      object edtRange: TEdit
        Left = 257
        Top = 24
        Width = 56
        Height = 21
        TabOrder = 10
      end
      object edtDamageRange: TEdit
        Left = 257
        Top = 51
        Width = 56
        Height = 21
        TabOrder = 11
      end
      object edtSuccessRate: TEdit
        Left = 257
        Top = 78
        Width = 56
        Height = 21
        TabOrder = 12
      end
      object edtAgressive: TEdit
        Left = 257
        Top = 105
        Width = 56
        Height = 21
        TabOrder = 13
      end
      object edtBuffDebuff: TEdit
        Left = 257
        Top = 132
        Width = 56
        Height = 21
        TabOrder = 14
      end
      object edtAttribute: TEdit
        Left = 257
        Top = 159
        Width = 56
        Height = 21
        TabOrder = 15
      end
      object edtDamage: TEdit
        Left = 257
        Top = 186
        Width = 56
        Height = 21
        TabOrder = 16
      end
      object edtAdicionalDamage: TEdit
        Left = 257
        Top = 213
        Width = 56
        Height = 21
        TabOrder = 17
      end
      object edtDuration: TEdit
        Left = 257
        Top = 240
        Width = 56
        Height = 21
        TabOrder = 18
      end
      object edtCastTime: TEdit
        Left = 257
        Top = 267
        Width = 56
        Height = 21
        TabOrder = 19
      end
    end
    object EffectsPage: TTabSheet
      Caption = 'Effects'
      ImageIndex = 2
      object eff1: TGroupBox
        Left = 3
        Top = 3
        Width = 128
        Height = 89
        Caption = 'Effect [1]'
        TabOrder = 0
        object Label26: TLabel
          Left = 10
          Top = 24
          Width = 32
          Height = 13
          Caption = 'Index:'
        end
        object Label27: TLabel
          Left = 10
          Top = 52
          Width = 30
          Height = 13
          Caption = 'Value:'
        end
      end
      object eff2: TGroupBox
        Left = 187
        Top = 3
        Width = 128
        Height = 89
        Caption = 'Effect [2]'
        TabOrder = 1
        object Label29: TLabel
          Left = 10
          Top = 24
          Width = 32
          Height = 13
          Caption = 'Index:'
        end
        object Label32: TLabel
          Left = 12
          Top = 52
          Width = 30
          Height = 13
          Caption = 'Value:'
        end
      end
      object eff4: TGroupBox
        Left = 185
        Top = 125
        Width = 128
        Height = 89
        Caption = 'Effect [4]'
        TabOrder = 2
        object Label31: TLabel
          Left = 12
          Top = 28
          Width = 32
          Height = 13
          Caption = 'Index:'
        end
        object Label34: TLabel
          Left = 12
          Top = 55
          Width = 30
          Height = 13
          Caption = 'Value:'
        end
      end
      object eff3: TGroupBox
        Left = 3
        Top = 125
        Width = 128
        Height = 89
        Caption = 'Effect [3]'
        TabOrder = 3
        object Label30: TLabel
          Left = 10
          Top = 28
          Width = 32
          Height = 13
          Caption = 'Index:'
        end
        object Label33: TLabel
          Left = 11
          Top = 55
          Width = 30
          Height = 13
          Caption = 'Value:'
        end
      end
      object edtEff1Index: TEdit
        Left = 56
        Top = 24
        Width = 65
        Height = 21
        TabOrder = 4
      end
      object edtEff1Value: TEdit
        Left = 56
        Top = 51
        Width = 65
        Height = 21
        TabOrder = 5
      end
      object edtEff2Index: TEdit
        Left = 240
        Top = 24
        Width = 65
        Height = 21
        TabOrder = 6
      end
      object edtEff2Value: TEdit
        Left = 240
        Top = 51
        Width = 65
        Height = 21
        TabOrder = 7
      end
      object edtEff3Index: TEdit
        Left = 51
        Top = 150
        Width = 65
        Height = 21
        TabOrder = 8
      end
      object edtEff3Value: TEdit
        Left = 50
        Top = 177
        Width = 65
        Height = 21
        TabOrder = 9
      end
      object edtEff4Index: TEdit
        Left = 235
        Top = 150
        Width = 65
        Height = 21
        TabOrder = 10
      end
      object edtEff4Value: TEdit
        Left = 233
        Top = 177
        Width = 65
        Height = 21
        TabOrder = 11
      end
      object edtEffect1Name: TEdit
        Left = 3
        Top = 98
        Width = 134
        Height = 21
        ReadOnly = True
        TabOrder = 12
      end
      object edtEffect2Name: TEdit
        Left = 187
        Top = 98
        Width = 134
        Height = 21
        ReadOnly = True
        TabOrder = 13
      end
      object edtEffect4Name: TEdit
        Left = 187
        Top = 220
        Width = 134
        Height = 21
        ReadOnly = True
        TabOrder = 14
      end
      object edtEffect3Name: TEdit
        Left = 3
        Top = 220
        Width = 134
        Height = 21
        ReadOnly = True
        TabOrder = 15
      end
      object memEffectDesc: TMemo
        Left = 3
        Top = 247
        Width = 374
        Height = 138
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 16
      end
    end
    object Effects2: TTabSheet
      Caption = 'Effects2'
      ImageIndex = 3
      object lbEffs: TListBox
        Left = -4
        Top = 3
        Width = 402
        Height = 249
        ItemHeight = 13
        TabOrder = 0
        OnClick = lbEffsClick
      end
      object memEffsDesc: TMemo
        Left = -4
        Top = 258
        Width = 403
        Height = 111
        TabOrder = 1
      end
    end
  end
  object Skills: TStringGrid
    Left = 0
    Top = 32
    Width = 369
    Height = 381
    ColCount = 2
    DoubleBuffered = True
    RowCount = 2
    FixedRows = 0
    ParentDoubleBuffered = False
    TabOrder = 3
    OnSelectCell = SkillsSelectCell
  end
end
